
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede recargar la bateria de las gafas de vision nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_currentNVG = hmd _player;
_currentBattery = _player getVariable ["FCLA_NVG_Battery", FCLA_NVG_Initial_Battery];


_hasNVG = _currentNVG != "";
_isNotOnMap = !visibleMap;
_hasBattery = [_player, "FCLA_NVG_Battery"] call BIS_fnc_hasItem;
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(FCLA_NVG_Require_Battery) && (_currentBattery <= 80) && (_hasNVG) && (_isNotOnMap) && (_hasBattery) && (_isNotDragging) && (_isNotCarrying) && (_isNotSwimming) && (_isTouchingGround) && (_isNotSurrendering) && (_notInWeaponAnimation)
