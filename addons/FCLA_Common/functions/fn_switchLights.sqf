
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
 *            2: ¿Encender ó apagar?. <""Off|"On">
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 *            [player, 500, "Off"] call FCLA_Common_fnc_switchLights; //Apagar luces.
 *            [getPos player, 500, "On"] call FCLA_Common_fnc_switchLights; //Encender luces.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_center", objNull, [], [0, 1, 2, 3]],
        ["_rad", 0, [0], 0],
        ["_state", "", [""], 0]
       ];



//Verificar argumento.
_state = toUpper _state;
if ((_rad <= 0) || ((_state != "OFF") && (_state != "ON"))) exitWith {false};


//Convertir estado al formato correcto
_state = switch (_state) do {
  case "OFF": {false};
  case "ON": {true};
};


//Encender/Apagar luces.
_centerPos = [_center] call CBA_fnc_getPos;
_lightsToSwitch = nearestObjects [_centerPos, ["BUILDING"], _rad];
{[_x, _state] call BIS_fnc_switchLamp;} forEach _lightsToSwitch;
true
