
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un eventhandler para el uso de las funciones Bandage.
 * 
 * Public: [No]
---------------------------------------------------------------------------- */

["ACE_captiveStatusChanged", {
	params ["_unit", "_state"];
  _currentGoggles = goggles _unit;
	_originalGoggles = _unit getVariable ["FCLA_Saved_Goggles", ""];
	_unit setVariable ["TF_Unable_To_Use_Radio", _state];
  if ((_state) || !(_currentGoggles in FCLA_Goggles_Bandages) || (_originalGoggles == "")) exitWith {};

  if (_currentGoggles == (FCLA_Goggles_Bandages select 0)) then {
		removeGoggles _unit;
    _unit addGoggles _originalGoggles;
		_unit setVariable ["FCLA_Saved_Goggles", nil, true];
		[_unit, "FCLA_G_Blindfold_01_Black_F", "", -1] call ACE_Common_fnc_addToInventory;
  } else {
		removeGoggles _unit;
    _unit addGoggles _originalGoggles;
		_unit setVariable ["FCLA_Saved_Goggles", nil, true];
		[_unit, "FCLA_G_Blindfold_01_White_F", "", -1] call ACE_Common_fnc_addToInventory;
  };
}] call CBA_fnc_addEventHandler;
