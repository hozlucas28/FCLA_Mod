
/* ----------------------------------------------------------------------------
Function: FCLA_Effects_fnc_putSoundsEH

Description:
    Reproduce un sonido cuando se coloca un item en un contenedor.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_container", "_item"];
if ((!FCLA_putTake_Sounds) || (!isNull findDisplay 312)) exitWith {};


_baseWeapon = [configFile >> "CfgWeapons" >> _item, true] call BIS_fnc_returnParents;
_baseVehicle = [configFile >> "CfgVehicles" >> _item, true] call BIS_fnc_returnParents;
_baseGoogles = [configFile >> "CfgGlasses" >> _item, true] call BIS_fnc_returnParents;

if (isClass (configFile >> "CfgMagazines" >> _item)) exitWith {playSound "FCLA_Magazine_Off";};
if ("Rifle" in _baseWeapon) exitWith {playSound "FCLA_Weapon_Drop";};
if ("Pistol" in _baseWeapon) exitWith {playSound "FCLA_Pistol_Drop";};
if (("Uniform_Base" in _baseWeapon) || ("Vest_NoCamo_Base" in _baseWeapon)) exitWith {playSound "FCLA_Armor_Off";};
if ("Bag_Base" in _baseVehicle) exitWith {playSound "FCLA_Backpack_Off";};
if ("H_HelmetB" in _baseWeapon) exitWith {playSound "FCLA_Helmet_Off";};
if (_item in _baseGoogles) exitWith {playSound "FCLA_Goggles_Off";};
_randomSound = selectRandom ["FCLA_Generic_Take_1", "FCLA_Generic_Take_2", "FCLA_Generic_Take_3", "FCLA_Generic_Take_4"];
playSound _randomSound;
