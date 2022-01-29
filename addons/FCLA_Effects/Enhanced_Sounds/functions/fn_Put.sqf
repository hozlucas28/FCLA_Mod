
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce un sonido cuando se coloca un item en un contenedor.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_container", "_item"];
if (!FCLA_Inventory_Sounds) exitWith {};



_isMagazine = isClass (configFile >> "CfgMagazines" >> _item);
_baseWeapon = [configFile >> "CfgWeapons" >> _item, true] call BIS_fnc_returnParents;
_baseVehicle = [configFile >> "CfgVehicles" >> _item, true] call BIS_fnc_returnParents;
_baseGoogles = [configFile >> "CfgGlasses" >> _item, true] call BIS_fnc_returnParents;


switch (true) do {
  case (_isMagazine): {playSound "FCLA_Magazine_Unequipped";};
  case (_item in _baseGoogles): {playSound "FCLA_Goggles_Unequipped";};
	case ("Rifle" in _baseWeapon): {playSound "FCLA_Weapon_Unequipped";};
  case ("Pistol" in _baseWeapon): {playSound "FCLA_Pistol_Unequipped";};
  case ("Bag_Base" in _baseVehicle): {playSound "FCLA_Backpack_Unequipped";};
  case ("H_HelmetB" in _baseWeapon): {playSound "FCLA_Helmet_Unequipped";};
  case (("Uniform_Base" in _baseWeapon) || ("Vest_NoCamo_Base" in _baseWeapon)): {playSound "FCLA_Armor_Unequipped";};
  default {playSound (selectRandom ["FCLA_Generic_Use_1", "FCLA_Generic_Use_2", "FCLA_Generic_Use_3", "FCLA_Generic_Use_4"]);};
};
