
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede colocar la red de camuflaje tropical en el casco.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_headgear = headgear _player;
_tropicalHelmetsWithoutCamoNet = [
 "H_HelmetB_plain_wdl", "H_HelmetSpecB_wdl", "H_HelmetSpecB_Digital",
 "H_HelmetSpecB_FCLA_Digital", "H_HelmetSpecB_Takana_Digital", "H_HelmetSpecB_Jaguar_Digital",
 "H_HelmetSpecB_Condor_Digital", "H_HelmetSpecB_Salamandra_Digital",
 "H_HelmetSpecB_Anaconda_Digital", "H_HelmetSpecB_Quetzal_Digital", "H_HelmetSpecB_Med_Digital",
 "H_HelmetB_tna_F", "H_HelmetB_Enh_tna_F", "H_HelmetSpecB_FCLA_Tropical",
 "H_HelmetSpecB_Takana_Tropical", "H_HelmetSpecB_Jaguar_Tropical",
 "H_HelmetSpecB_Condor_Tropical", "H_HelmetSpecB_Salamandra_Tropical",
 "H_HelmetSpecB_Anaconda_Tropical", "H_HelmetSpecB_Quetzal_Tropical",
 "H_HelmetSpecB_Med_Tropical"
];


_isNotOnMap = !visibleMap;
_notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
_hasCamoItem = [_player, "FCLA_Camo_Net_Tropical"] call BIS_fnc_hasItem;
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notInWeaponAnimation = isNil "FCLA_Weapon_Animation";
_hasCompatibleHeadgear = _headgear in _tropicalHelmetsWithoutCamoNet;
(_isNotOnMap) && (_notInStairs) && (_hasCamoItem) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) && (_isTouchingGround) && (_isNotSurrendering) && (_notInWeaponAnimation) && (_hasCompatibleHeadgear)
