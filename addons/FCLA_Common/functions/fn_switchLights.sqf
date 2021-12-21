
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Enciende/Apaga todas las luces que se encuentren dentro del radio,
 * enviado como argumento 1.
 *
 * Argument:
 *            0: Centro del radio de búsqueda. <POSITION|UNIT|OBJECT|VEHICLE|GROUP|MARKER|LOCATION>
 *            1: Radio de búsqueda. <NUMBER>
 *            2: ¿Encender ó apagar?. <"Off"|"On">
 *            3: ¿Excluir vehículos?, opcional <BOOL> (default: true)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 *            //Apagar luces, vehículos excluidos.
 *            [player, 500, "Off"] call FCLA_Common_fnc_switchLights;
 *
 *            //Encender luces, vehículos incluidos.
 *            [getPos player, 500, "On", false] call FCLA_Common_fnc_switchLights;
 *
 * Note:
 * Si deseas encender/apagar todas las luces del mapa en el radio de
 * búsqueda (argumento 1) coloca un -1.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_center", objNull, [], [0, 3]],
        ["_rad", 0, [0], 0],
        ["_state", "", [""], 0],
        ["_excludeVehicles", true, [true], 0]
       ];



//Verificar argumento.
_rad = if (_rad <= -1) then {worldSize;} else {_rad;};
_state = toUpper _state;
_centerPos = [_center] call CBA_fnc_getPos;
_lampsInRad = nearestObjects [_centerPos, ["Building"], _rad];
_vehiclesInRad = nearestObjects [_centerPos, ["LandVehicle", "Air", "Ship"], _rad];
_lightsToSwitch = if (!_excludeVehicles) then {_lampsInRad + _vehiclesInRad;} else {_lampsInRad;};
if ((_rad < -1) || ((_state != "OFF") && (_state != "ON"))) exitWith {false};



//Convertir estado al formato correcto
_state = switch (_state) do {
  case "OFF": {false};
  case "ON": {true};
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

//Encender/Apagar luces.
["FCLA_Switch_Lights", [_lightsToSwitch, _state]] call CBA_fnc_globalEventJIP;
true
