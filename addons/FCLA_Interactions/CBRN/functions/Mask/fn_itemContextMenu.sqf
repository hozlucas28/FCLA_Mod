
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una acción contextual para poder equiparse la máscara (respirador)
 * sin tener el DLC Contact.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

if (["Contact"] call FCLA_Common_fnc_isDLCOwned) exitWith {};

{
  _conditionToEnable = {
    params ["_unit", "_container", "_item"];
    _currentGoggles = goggles _unit;
    _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
    (_isCBRNActivated) && (_currentGoggles != _item);
  };

  _conditionToShow = {
    params ["_unit", "_container", "_item"];
    _currentGoggles = goggles _unit;
    _isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
    (_isCBRNActivated) && (_currentGoggles != _item);
  };

  _Statement = {
    params ["_unit", "_container", "_item"];
    _unit addGoggles _item;
    playSound "FCLA_Goggles_Equipped";
    [_unit, goggles _unit, true] call CBA_fnc_addItem;
  };

  [_x, "CONTAINER", "Equipar", [], "", [_conditionToEnable, _conditionToShow], _Statement, true, []] call CBA_fnc_addItemContextMenuOption;
} forEach ["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_RegulatorMask_F"];
