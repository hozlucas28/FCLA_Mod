
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 * 
 * Description:
 * Crea una acción del tipo "addItemContextMenuOption" para poder equiparse la
 * máscara sin tener el DLC Contact.
 * 
 * Public: [No]
---------------------------------------------------------------------------- */

_ownedDLC = ["Contact"] call FCLA_Common_fnc_isDLCOwned;
if (_ownedDLC) exitWith {};


{
  _conditionToEnable = {
    params ["_unit", "_container", "_item", "_slot", "_params"];
    !(isNil "FCLA_CBRN_Activated");
  };

  _conditionToShow = {
    params ["_unit", "_container", "_item", "_slot", "_params"];
    !(isNil "FCLA_CBRN_Activated");
  };

  _statement = {
    params ["_unit", "_container", "_item", "_slot", "_params"];
    playSound "FCLA_Goggles_On";
    [_unit, goggles _unit, true] call CBA_fnc_addItem;
    _unit addGoggles _item;
  };
  [_x, "CONTAINER", "Equipar", [], "", [_conditionToEnable, _conditionToShow], _statement, true] call CBA_fnc_addItemContextMenuOption;
} forEach ["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_RegulatorMask_F"];
