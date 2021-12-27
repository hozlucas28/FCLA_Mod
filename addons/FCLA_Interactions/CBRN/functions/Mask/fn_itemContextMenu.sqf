
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
    _isPlayer = [_unit, true] call ACE_common_fnc_isPlayer;
    _currentGoggles = goggles _unit;
    (_isPlayer) && (_currentGoggles != _item);
  };

  _conditionToShow = {
    params ["_unit", "_container", "_item"];
    _isPlayer = [_unit, true] call ACE_common_fnc_isPlayer;
    _currentGoggles = goggles _unit;
    (_isPlayer) && (_currentGoggles != _item);
  };

  _Statement = {
    params ["_player", "_container", "_item"];
    _player addGoggles _item;
    playSound "FCLA_Goggles_Equipped";
    [_player, goggles _player, true] call CBA_fnc_addItem;
  };

  [_x, "CONTAINER", "Equipar", [], "\FCLA_Interactions\CBRN\data\Take.paa", [_conditionToEnable, _conditionToShow], _Statement, true, []] call CBA_fnc_addItemContextMenuOption;
} forEach ["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_RegulatorMask_F"];
