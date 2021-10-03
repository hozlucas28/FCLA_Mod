
/* ----------------------------------------------------------------------------
Function: FCLA_Immersions_fnc_initPOD

Description:
    Abre/Cierra progresivamente la puerta que este mirando la unidad, si esta
		se encuentra a una distancia razonable.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [["_scrollMagnitude", 1, [0]], ["_scrollMultiplier", 0.06, [0]], ["_distance", 3, [0]]];
if (!(missionNamespace getVariable ["FCLA_POD_Activated", false])) exitWith {};



_camPos = eyePos (call CBA_fnc_currentUnit);
_camVector = (AGLtoASL (positionCameraToWorld [0, 0, 0])) vectorFromTo (AGLtoASL (positionCameraToWorld [0, 0, 1]));
_endPos = _camPos vectorAdd ((vectorNormalized _camVector) vectorMultiply _distance);
_intersectPoints = [_camPos, _endPos];
_objects = lineIntersectsWith [_intersectPoints select 0, _intersectPoints select 1, objNull, objNull, true];


if ((count _objects) > 0) then {
	_object = _objects select 0;
	_selections = [_object, "GEOM"] intersect [ASLtoAGL (_intersectPoints select 0), ASLtoAGL (_intersectPoints select 1)];

	if (count _selections > 0) then {
		_selection = _selections select 0;
		_doorInfo = [_selection select 0] call FCLA_Development_fnc_getDoorInfo;

		if (_doorInfo select 0 == "") exitWith {};
		if ((_doorInfo select 1 != "") && ((_object getVariable [_doorInfo select 1, 0]) == 1)) exitWith {};

		_doorPhase = _object animationPhase (_doorInfo select 0);
		_doorPhase = ((_doorPhase + ((_scrollMagnitude * _scrollMultiplier) min 0.1)) max 0) min 1;
		_object animate [_doorInfo select 0, _doorPhase, true];
	};
};
