
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_disableVehicleDestruction

Description:
    Evita que el vehículo reciba un daño fatal que provoque su
    destrucción ó explosión, dejandolo con un daño total.

Parameters:
    _vehicle - Vehículo al cual se le evitara un daño fatal.
    _dammageWeapons - ¿Destruir las armas de la tripulación?
                      Valor booleano (true/false). Opcional.
    _dammageItems - ¿Destruir los items de la tripulación?
                    Valor booleano (true/false). Opcional.

Examples:
    [vehicle player] spawn FCLA_Development_fnc_disableVehicleDestruction;

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_vehicle", ["_dammageWeapons", false], ["_dammageItems", false]];



//Asignar eventhandler al vehículo.
[_vehicle, "Dammaged", {
  _this params ["_vehicle", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
  _thisArgs params ["_dammageWeapons", "_dammageItems"];
  if (_damage < 0.9) exitWith {};

  _vehicle allowDamage false;
  [{!(isDamageAllowed (_this select 0))}, {(_this select 0) setDamage 0.9;}, [_vehicle]] call CBA_fnc_waitUntilAndExecute;

  _arrayOfVehicleCrew = [_vehicle] call ACE_Common_fnc_getVehicleCrew;
  if (count _arrayOfVehicleCrew == 0) exitWith {};

  {
    _haveWeapons = (count (Weapons _x)) != 0;
    _haveItems = (count ([_x, false, true, true, true, true, true] call CBA_fnc_uniqueUnitItems)) != 0;

    //Destruir armas.
    if ((_dammageWeapons) && (_haveWeapons)) then {
      _Weapons = Weapons _x;
      _numberOfWeapons = count _Weapons;
      for "_i" from 0 to _numberOfWeapons do {
        _isPlayer = [_x, false] call ACE_Common_fnc_isPlayer;
        _selectedWeapon = _Weapons select _i;
        _x removeWeapon _selectedWeapon;
        if ((_isPlayer) && (isNil {_x getVariable "FCLA_anyWeapon_Destroyed"})) then {_x setVariable ["FCLA_anyWeapon_Destroyed", true, true];};
      };
    };

    //Destruir items.
    if ((_dammageItems) && (_haveItems)) then {
      _items = items _x;
      _numberOfItems = count _items;
      for "_i" from 0 to _numberOfItems do {
        _isPlayer = [_x, false] call ACE_Common_fnc_isPlayer;
        _selectedItem = _items select _i;
        _x removeItems _selectedItem;
        if ((_isPlayer) && (isNil {_x getVariable "FCLA_anyItem_Destroyed"})) then {_x setVariable ["FCLA_anyItem_Destroyed", true, true];};
      };
    };

    //Efecto visual y mensaje.
    _isPlayer = [_x, false] call ACE_Common_fnc_isPlayer;
    if ((alive _x) && (_isPlayer)) then {
      ["FCLA_disableVehicleDestruction_Effect", "", _x] call CBA_fnc_targetEvent;
      _haveDestroyedWeapons = _x getVariable ["FCLA_anyWeapon_Destroyed", false];
      _haveDestroyedItems = _x getVariable ["FCLA_anyItem_Destroyed", false];
      if ((!_haveDestroyedWeapons) && (!_haveDestroyedItems)) exitWith {};

      _textToDisplay = switch (true) do {
        case ((_haveDestroyedWeapons) && !(_haveDestroyedItems)): {"Algunas de tus armas se han dañado."};
        case (!(_haveDestroyedWeapons) && (_haveDestroyedItems)): {"Algunos de tus items se han dañado."};
        default {"Algunas de tus armas e items se han dañado."};
      };
      [{["FCLA_disableVehicleDestruction_Message", (_this select 1), (_this select 0)] call CBA_fnc_targetEvent;}, [_x, _textToDisplay], 5] call CBA_fnc_waitAndExecute;
    };

    //Eliminar variables.
    if (!isNil {_x getVariable "FCLA_anyItem_Destroyed"}) then {_x setVariable ["FCLA_anyWeapon_Destroyed", nil, true];};
    if (!isNil {_x getVariable "FCLA_anyItem_Destroyed"}) then {_x setVariable ["FCLA_anyItem_Destroyed", nil, true];};
  } forEach _arrayOfVehicleCrew;
}, [_dammageWeapons, _dammageItems]] call CBA_fnc_addBISEventHandler;
