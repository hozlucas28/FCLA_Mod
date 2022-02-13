
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Equipa a la unidad con un uniforme formal.
 *
 * Argument:
 *            0: Unidad. <UNIT>
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la funcion? <BOOL>
 *
 * Example:
 * [player] call FCLA_Common_fnc_equipFormalUniform;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_unit", objNull, [objNull, teamMemberNull], 0]];
if (isNull _unit) exitWith {false};



//Obtener rango y pelotón.
_rank = [_unit] call FCLA_Common_fnc_getRankName;
_insignia = _unit getVariable ["FCLA_Insignia", FCLA_Default_Insignia];
_getPlatoon = [_insignia, (_insignia find "_") + 1, 100] call CBA_fnc_substring;
_platoon = if ((_getPlatoon == "Unassigned") || (_getPlatoon == "Common")) then {"FCLA";} else {_getPlatoon;};


//Seleccionar boina.
_selectedBeret = switch (_platoon) do {
	case "Takana": {"H_Beret_Takana_Black";};
  case "Jaguar": {"H_Beret_Jaguar_Black";};
  case "Condor": {"H_Beret_Condor_Black";};
  case "Salamandra": {"H_Beret_Salamandra_Red";};
  case "Anaconda": {"H_Beret_Anaconda_Green";};
  case "Quetzal": {"H_Beret_Quetzal_Blue";};
	default {"H_Beret_FCLA_Black";};
};


//Seleccionar uniforme.
_selectedUniform = switch (true) do {
	case (_rank in ["SERGEANT", "LIEUTENANT", "CAPTAIN", "MAJOR", "COLONEL"]): {"U_B_ParadeUniform_01_US_decorated_F";};
	default {"U_B_ParadeUniform_01_US_F";};
};


//Equipar.
removeVest _unit;
removeUniform _unit;
removeAllItems _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;

_unit addWeapon "Binocular";

_unit addHeadgear _selectedBeret;
_unit forceAddUniform _selectedUniform;

_unit linkItem "ItemMap";
_unit linkItem "Itemwatch";
_unit linkItem "ItemCompass";
_unit linkItem "tf_anprc152_1";

_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "acex_intelitems_notepad";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_elasticBandage";};
["FCLA_Radio_Frequencies", []] call CBA_fnc_localEvent;
true
