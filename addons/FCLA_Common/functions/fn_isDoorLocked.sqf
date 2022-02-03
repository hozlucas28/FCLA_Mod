
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si la puerta que esta mirando el cliente, del entorno
 * de ejecucion, esta cerrada.
 *
 * Return Value:
 * ¿Esta cerrada? <BOOL>
 *
 * Example:
 * call FCLA_Common_fnc_isDoorLocked;
 *
 * Note:
 * Si la distancia entre el cliente y la puerta es mayor a 3 metros o si no se
 * encuentra frente a una puerta se devolvera un "false".
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Obtener visual.
_unit = call CBA_fnc_currentUnit;
_camPos = eyePos _unit;
_camVector = (AGLtoASL (positionCameraToWorld [0, 0, 0])) vectorFromTo (AGLtoASL (positionCameraToWorld [0, 0, 1]));
_endPos = _camPos vectorAdd ((vectorNormalized _camVector) vectorMultiply 3);
_intersectPoints = [_camPos, _endPos];


//Verificar existencia de objetos.
_objects = lineIntersectsWith [_intersectPoints select 0, _intersectPoints select 1, objNull, objNull, true];
if (count _objects <= 0) exitWith {false};


//Verificar existencia de puertas.
_object = _objects select 0;
_selections = [_object, "GEOM"] intersect [ASLtoAGL (_intersectPoints select 0), ASLtoAGL (_intersectPoints select 1)];
if (count _selections <= 0) exitWith {false};


//Obtener puerta y verificar estado.
_selection = _selections select 0;
_doorInfo = [_selection select 0] call FCLA_Common_fnc_getDoorInfo;
!isNil {cursorObject getVariable (_doorInfo select 1)};
