
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Enciende/Apaga todas las luces que se encuentren dentro del radio,
 * enviado como argumento 1.
 *
 * Argument:
 *            0: Centro del radio de busqueda. <POSITION|UNIT|OBJECT|VEHICLE|GROUP|MARKER|LOCATION>
 *            1: Radio/Area de busqueda. <NUMBER|ARRAY OF AREA>
 *            2: ¿Encender o apagar?. <"Off"|"On">
 *            3: ¿Excluir vehiculos?, opcional <BOOL> (default: true)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la funcion? <BOOL>
 *
 * Example:
 *            //Apagar luces, vehiculos excluidos.
 *            [player, 500, "Off"] call FCLA_Common_fnc_switchLights;
 *
 *            //Encender luces, vehiculos incluidos.
 *            [getPos player, [500, 500, 0, false, 250], "On", false] call FCLA_Common_fnc_switchLights;
 *
 * Note:
 * Si deseas encender/apagar todas las luces del mapa en el radio de
 * busqueda (argumento 1) coloca un -1.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_center", objNull, [], [0, 3]],
        ["_rad", 0, [0, []], [0, 5]],
        ["_state", "", [""], 0],
        ["_excludeVehicles", true, [true], 0]
       ];



//Verificar argumento.
_state = toUpper _state;
_centerPos = [_center] call CBA_fnc_getPos;
if ((_state != "OFF") && (_state != "ON")) exitWith {false};



//Convertir estado al formato correcto.
_state = switch (_state) do {
  case "OFF": {false;};
  case "ON": {true;};
};


//Obtener lamparas y vehiculos.
_lampsInRad = if (_rad isEqualType 0) then {
  if (_rad > 0) then {nearestObjects [_centerPos, ["Building"], _rad, true];} else {nearestObjects [_centerPos, ["Building"], worldSize, true];};
} else {
  _allBuildings = nearestObjects [_centerPos, ["Building"], worldSize, false];
  _allBuildings select {_x inArea [_center, _rad select 0, _rad select 1, _rad select 2, _rad select 3, _rad select 4]};
};

_vehiclesInRad = if (!_excludeVehicles) then {
  if (_rad isEqualType 0) then {
    if (_rad > 0) then {vehicles select {(_centerPos distance _x) <= _rad};} else {vehicles};
  } else {
    vehicles select {_x inArea [_center, _rad select 0, _rad select 1, _rad select 2, _rad select 3, _rad select 4]};
  };
};


//Encender/Apagar luces.
if (!_excludeVehicles) then {
  ["FCLA_Switch_Lights", [_lampsInRad + _vehiclesInRad, _state]] call CBA_fnc_globalEventJIP;
} else {
  ["FCLA_Switch_Lights", [_lampsInRad, _state]] call CBA_fnc_globalEventJIP;
};


//Evitar que la IA vuelva a prender las luces.
if (!_excludeVehicles) then {
  _crews = [];
  {
    _crewInVehicle = crew _x;
    for [{_i = 0}, {_i < (count _crewInVehicle)}, {_i = _i + 1}] do {_crews pushBack (_crewInVehicle select _i);};
  } forEach _vehiclesInRad;
  if (_state) then {{_x enableAI "LIGHTS";} forEach _crews;} else {{_x disableAI "LIGHTS";} forEach _crews;};
};
true
