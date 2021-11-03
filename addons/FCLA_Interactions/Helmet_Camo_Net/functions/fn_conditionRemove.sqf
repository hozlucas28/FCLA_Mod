
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede quitar la red de camuflaje del casco.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_headgear = headgear _player;
_aridHelmetsWithCamoNet = ["H_HelmetB_camo", "H_HelmetB_Camo_Snake"];
_tropicalHelmetsWithCamoNet = ["H_HelmetB_Camo_Woodland", "H_HelmetB_Camo_Digital", "H_HelmetB_Camo_Tropical"];


_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isTouchingGround = isTouchingGround _player;
_inWeaponAnimation = !isNil "FCLA_Weapon_Animation";
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_hasCompatibleHeadgear = (_headgear in _aridHelmetsWithCamoNet) || (_headgear in _tropicalHelmetsWithCamoNet);
(_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isTouchingGround) && (_inWeaponAnimation) && (_isNotSurrendering) && (_hasCompatibleHeadgear)
