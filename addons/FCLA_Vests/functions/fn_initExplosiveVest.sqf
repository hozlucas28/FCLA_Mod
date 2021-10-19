/* ----------------------------------------------------------------------------
Function: FCLA_Vests_fnc_initExplosiveVest

Description:
    Generara una explosión, simulando la activación de un chaleco bomba.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];



//Spawnear explosivo y detonar.
[_unit] spawn {
  params ["_unit"];
  [_unit, "FCLA_Suicide_Scream"] call CBA_fnc_globalSay3d;
  Sleep 2.1;
  _bombVests = ["Suicide_Vest", "Suicide_Vest_Green", "Suicide_Vest_Grey"];
  if (!(alive _unit) && !(vest _unit in _bombVests)) exitWith {};
  _explosive = createVehicle ["DemoCharge_Remote_Ammo_Scripted", [0, 0, 0], [], 50, "NONE"];
  _explosive attachTo [_unit, [0, 0, 0]];
  removeVest _unit;
  _unit setDamage 1;
  _explosive setDamage 1;
};
