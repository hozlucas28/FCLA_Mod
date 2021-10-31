
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna un eventhandler del tipo 'addPlayerEventHandler' que remplaza un
 * item si este cumpla con la condición. Esta condición se revisara cada vez
 * que algo cambie en su inventario.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["loadout", {
  params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
  _compatibleBandages = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];
  _currentGoggles = goggles _unit;
  _allItemsAndGoggles = if (_currentGoggles != "") then {[items _unit, _currentGoggles] call BIS_fnc_arrayPush;} else {items _unit};
  _isNotHandcuffed = !(_unit getVariable ["ACE_Captives_isHandcuffed", false]);
  _hasNotCompatibleBandages = !((_compatibleBandages select 0) in _allItemsAndGoggles) && !((_compatibleBandages select 1) in _allItemsAndGoggles);
  if (_hasNotCompatibleBandages) exitWith {};

  switch (true) do {
  	case ((_isNotHandcuffed) && (_currentGoggles == (_compatibleBandages select 0))): {
      removeGoggles _unit;
      [_unit, "FCLA_G_Blindfold_01_Black_F", "", -1] call ACE_Common_fnc_addToInventory;
    };
  	case ((_isNotHandcuffed) && (_currentGoggles == (_compatibleBandages select 1))): {
      removeGoggles _unit;
      [_unit, "FCLA_G_Blindfold_01_White_F", "", -1] call ACE_Common_fnc_addToInventory;
    };
  };

  [_compatibleBandages select 0, "FCLA_G_Blindfold_01_Black_F"] call ACE_Common_fnc_registerItemReplacement;
  [_compatibleBandages select 1, "FCLA_G_Blindfold_01_White_F"] call ACE_Common_fnc_registerItemReplacement;
}, true] call CBA_fnc_addPlayerEventHandler;
