
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_isDoorLocked

Description:
    Verifica si la puerta que se esta mirando esta con cerradura. Si no se
    encuentra frente a una puerta se devolvera un falso.

Return Value:
    Boolean (true/false).

Example:
    [player] call FCLA_Development_fnc_isDoorLocked;

Public: [Yes]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_unit", call CBA_fnc_currentUnit]];
_camPos = eyePos _unit;
_camVector = (AGLtoASL (positionCameraToWorld [0, 0, 0])) vectorFromTo (AGLtoASL (positionCameraToWorld [0, 0, 1]));
_endPos = _camPos vectorAdd ((vectorNormalized _camVector) vectorMultiply 3);
_intersectPoints = [_camPos, _endPos];



_objects = lineIntersectsWith [_intersectPoints select 0, _intersectPoints select 1, objNull, objNull, true];
if (count _objects <= 0) exitWith {false};

_object = _objects select 0;
_selections = [_object, "GEOM"] intersect [ASLtoAGL (_intersectPoints select 0), ASLtoAGL (_intersectPoints select 1)];
if (count _selections <= 0) exitWith {false};

_selection = _selections select 0;
_doorInfo = [_selection select 0] call FCLA_Common_fnc_getDoorInfo;
if (_doorInfo select 0) exitWith {false};
isNil {cursorObject getVariable [(_doorInfo select 1), false];};
