
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una serie de sonidos cuando una unidad es impactada por un
 * proyectil.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
(_this select 0) params ["_target", "_shooter", "_bullet", "_position", "_velocity", "_selection", "_ammo", "_direction", "_radius", "_surface", "_direct"];
_isExplosive = (_ammo select 3) == 1;
_areNearPlayers = [_target, 20, 1, false] call FCLA_Functions_fnc_nearPlayer;
_currentHeadgear = headgear _target;
_helmetProtection = (configfile >> "CfgWeapons" >> _currentHeadgear >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Head" >> "armor") call BIS_fnc_getCfgData;
if ((_selection select 0 != "head") || (!_areNearPlayers)) exitWith {};


if ((_isExplosive) && ([_target, false] call ACE_Common_fnc_isPlayer)) then {["FCLA_Shellshock", _target, _target] call CBA_fnc_targetEvent;};
if ((FCLA_Helmet_Hit_Sounds) && (_helmetProtection >= 2)) then {
  _randomSound = selectRandom ["FCLA_Impact_Helmet_1", "FCLA_Impact_Helmet_2", "FCLA_Impact_Helmet_3"];
  [_target, _randomSound, 1, false] call FCLA_Common_fnc_globalSay3D;
};
