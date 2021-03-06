
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Teletransporta al Zeus. Esta funcion es utilizada por el menu contextual
 * correspondiente.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_position", "_hoveredEntity"];
_isObject = _hoveredEntity isEqualType objNull;
_isNotKindOfMan = !(_hoveredEntity isKindOf "CAManBase");
_isKindOfVehicle = _hoveredEntity in vehicles;
if (!isNull attachedTo player) then {detach player;};



if ((_isObject) && (_isNotKindOfMan) && (_isKindOfVehicle)) then {
  [[player], _hoveredEntity] call ZEN_Common_fnc_teleportIntoVehicle;
} else {
  if (vehicle player != player) then {moveOut player;};
  player setVelocity [0, 0, 0];
  player setPosASL _position;
};
