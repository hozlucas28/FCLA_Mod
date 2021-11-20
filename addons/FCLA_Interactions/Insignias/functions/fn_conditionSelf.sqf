
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si el jugador puede colocarse una insignia.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];


_isPlayer = [_player, true] call ACE_common_fnc_isPlayer;
_isNotOnMap = !visibleMap;
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notDisableByEditor = !(_player getVariable ['FCLA_Disable_Insignias', false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
(_isPlayer) && (_isNotOnMap) && (_isNotDragging) && (_isNotCarrying) && (_isNotSurrendering) && (_notDisableByEditor) && (_notInWeaponAnimation)
