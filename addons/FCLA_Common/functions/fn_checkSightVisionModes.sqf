
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si la mira del arma, que tiene la unidad, cuenta con
 * vision nocturna/termica.
 *
 * Arguments:
 *            0: Unidad que posee el arma. <UNIT>
 *            1: Arma que posee la unidad a verificar. <STRING>
 *            2: ¿Excluir vision termica?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * ¿La mira del arma cuenta con vision nocturna/termica? <BOOL>
 *
 * Examples:
 *             //Vision termica incluida.
 *             [player, currentWeapon player] call FCLA_Common_fnc_checkSightVisionModes;
 *
 *             //Vision termica excluida.
 *             [player, currentWeapon player, true] call FCLA_Common_fnc_checkSightVisionModes;
 *
 * Note:
 * Funciona con las armas principales, secundarias, los lanzables (ATs, AA, etc.)
 * y los binoculares.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_unit", objNull, [objNull, teamMemberNull], 0],
        ["_weapon", "", [""], 0],
        ["_excludeTi", false, [true], 0]
       ];



//Verificar argumentos.
_weaponNotExist = !(isClass (configFile >> "CfgWeapons" >> _weapon));
if ((isNull _unit) || (_weaponNotExist)) exitWith {false};



//Variables locales.
_baseWeapon = [configFile >> "CfgWeapons" >> _weapon, true] call BIS_fnc_returnParents;
_weaponSight = (_unit weaponAccessories _weapon) select 2;
_opticsModesOfSight = (configFile >> "CfgWeapons" >> _weaponSight >> "ItemInfo" >> "OpticsModes") call BIS_fnc_getCfgSubClasses;
_opticsModesOfLauncher = (configFile >> "CfgWeapons" >> _weapon >> "OpticsModes") call BIS_fnc_getCfgSubClasses;


//Verificar si tiene vision nocturna/termica.
switch (true) do {
	case (("Rifle" in _baseWeapon) || ("Pistol" in _baseWeapon)): {
    {
      _haveNightVision = "NVG" in (getArray (configFile >> "CfgWeapons" >> _weaponSight >> "ItemInfo" >> "OpticsModes" >> _x >> "visionMode"));
      _haveTermicVision = "Ti" in (getArray (configFile >> "CfgWeapons" >> _weaponSight >> "ItemInfo" >> "OpticsModes" >> _x >> "visionMode"));
      (_haveNightVision) || ((!_excludeTi) && (_haveTermicVision));
    } count _opticsModesOfSight >= 1
  };

  case ("Launcher" in _baseWeapon): {
    if (_opticsModesOfSight isNotEqualTo []) then {
      {
        _haveNightVision = "NVG" in (getArray (configFile >> "CfgWeapons" >> _weaponSight >> "ItemInfo" >> "OpticsModes" >> _x >> "visionMode"));
        _haveTermicVision = "Ti" in (getArray (configFile >> "CfgWeapons" >> _weaponSight >> "ItemInfo" >> "OpticsModes" >> _x >> "visionMode"));
        (_haveNightVision) || ((!_excludeTi) && (_haveTermicVision));
      } count _opticsModesOfSight >= 1
    } else {
      {
        _haveNightVision = "NVG" in (getArray (configFile >> "CfgWeapons" >> _weapon >> "OpticsModes" >> _x >> "visionMode"));
        _haveTermicVision = "Ti" in (getArray (configFile >> "CfgWeapons" >> _weapon >> "OpticsModes" >> _x >> "visionMode"));
        (_haveNightVision) || ((!_excludeTi) && (_haveTermicVision));
      } count _opticsModesOfLauncher >= 1
    };
  };

  case ("Binocular" in _baseWeapon): {
    _haveNightVision = "NVG" in (getArray (configFile >> "CfgWeapons" >> _weapon >> "visionMode"));
    _haveTermicVision = "Ti" in (getArray (configFile >> "CfgWeapons" >> _weapon >> "visionMode"));
    (_haveNightVision) || ((!_excludeTi) && (_haveTermicVision))
  };

	default {false};
};
