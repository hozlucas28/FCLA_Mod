
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede colocar la red de camuflaje arida en el casco.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_headgear = headgear _player;
_aridHelmetsWithoutCamoNet = [
 "H_HelmetB", "H_HelmetSpecB", "H_HelmetSpecB_FCLA", "H_HelmetSpecB_Takana", "H_HelmetSpecB_Jaguar",
 "H_HelmetSpecB_Condor", "H_HelmetSpecB_Salamandra", "H_HelmetSpecB_Anaconda", "H_HelmetSpecB_Quetzal",
 "H_HelmetSpecB_Med", "H_HelmetB_snakeskin", "H_HelmetSpecB_snakeskin", "H_HelmetSpecB_FCLA_Snake",
 "H_HelmetSpecB_Takana_Snake", "H_HelmetSpecB_Jaguar_Snake", "H_HelmetSpecB_Condor_Snake",
 "H_HelmetSpecB_Salamandra_Snake", "H_HelmetSpecB_Anaconda_Snake", "H_HelmetSpecB_Quetzal_Snake",
 "H_HelmetSpecB_Med_Snake", "rhsusf_ach_helmet_ocp"
];


_isNotOnMap = !visibleMap;
_hasCamoItem = [_player, "FCLA_Camo_Net_Arid"] call BIS_fnc_hasItem;
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
_hasCompatibleHeadgear = _headgear in _aridHelmetsWithoutCamoNet;
(_isNotOnMap) && (_hasCamoItem) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isTouchingGround) && (_isNotSurrendering) && (_notInWeaponAnimation) && (_hasCompatibleHeadgear)
