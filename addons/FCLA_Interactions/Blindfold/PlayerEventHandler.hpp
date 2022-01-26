
/********************************************************************************|
|                 CONTROLADORES DE EVENTOS (JUGADORES) - "VENDA"                 |
|********************************************************************************/

//Remplazar la venda por el item correspondiente.
if (hasInterface) then {
  ["loadout", {
    params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
    _unitItems = items _unit;
    _compatibleBandages = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];
    _compatibleItemsBandages = ["FCLA_G_Blindfold_01_Black_F", "FCLA_G_Blindfold_01_White_F"];

    if ((_compatibleBandages select 0) in _unitItems) then {
      _itemContainerBlack = toLower ([_unit, _compatibleBandages select 0] call FCLA_Common_fnc_getItemContainer);
      _itemContainerBlack = if (_itemContainerBlack isEqualType "") then {_itemContainerBlack} else {_itemContainerBlack select 0};
      [_unit, _compatibleBandages select 0] call ACE_Common_fnc_useItem;
      [_unit, _compatibleItemsBandages select 0, _itemContainerBlack, -1] call ACE_Common_fnc_addToInventory;
    };

    if ((_compatibleBandages select 1) in _unitItems) then {
      _itemContainerWhite = toLower ([_unit, _compatibleBandages select 1] call FCLA_Common_fnc_getItemContainer);
      _itemContainerWhite = if (_itemContainerWhite isEqualType "") then {_itemContainerWhite} else {_itemContainerWhite select 0};
      [_unit, _compatibleBandages select 1] call ACE_Common_fnc_useItem;
      [_unit, _compatibleItemsBandages select 1, _itemContainerWhite, -1] call ACE_Common_fnc_addToInventory;
    };
  }, true] call CBA_fnc_addPlayerEventHandler;
};
