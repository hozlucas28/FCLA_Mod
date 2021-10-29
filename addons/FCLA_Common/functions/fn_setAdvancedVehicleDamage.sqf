
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Evita que el vehículo reciba un daño fatal que provoque su destrucción,
 * dejandolo con un daño total sin provocar su destrucción.
 *
 * Arguments:
 *            0: Vehículo. <VEHICLE>
 *            1: ¿Destruir las armas de la tripulación?, opcional. <BOOL> (default: false)
 *            2: ¿Destruir los items de la tripulación?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Examples:
 * [vehicle player] call FCLA_Common_fnc_setAdvancedVehicleDamage; //Las armas e items no se destruirán.
 * [vehicle player, true, true] call FCLA_Common_fnc_setAdvancedVehicleDamage; //Las armas e items se destruirán.
 *
 * Public: [Yes]
 *
 * Author:
 * hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_vehicle", objNull, [objNull], 0],
        ["_dammageWeapons", false, [true], 0],
        ["_dammageItems", false, [true], 0]
       ];
if ((isNull _vehicle) || !(_vehicle in vehicles)) exitWith {false};



_EventHandlerID = [_vehicle, "Dammaged", {
  _this params ["_vehicle", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
  _thisArgs params ["_dammageWeapons", "_dammageItems"];
  if (_damage < 0.9) exitWith {};


  //Desactivar daño.
  _vehicle allowDamage false;
  [{!(isDamageAllowed _this)}, {_this setDamage 0.9;}, _vehicle] call CBA_fnc_waitUntilAndExecute;

  //Obtener tripulación.
  _vehicleCrew = [_vehicle] call ACE_Common_fnc_getVehicleCrew;
  if (count _vehicleCrew == 0) exitWith {};

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
        if ((_isPlayer) && (isNil {_x getVariable "FCLA_Weapons_Destroyed"})) then {_x setVariable ["FCLA_Weapons_Destroyed", true, true];};
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
        if ((_isPlayer) && (isNil {_x getVariable "FCLA_Items_Destroyed"})) then {_x setVariable ["FCLA_Items_Destroyed", true, true];};
      };
    };

    //Efecto visual y mensaje.
    _isPlayer = [_x, false] call ACE_Common_fnc_isPlayer;
    if ((alive _x) && (_isPlayer)) then {
      ["FCLA_Shellshock", _x, _x] call CBA_fnc_targetEvent;
      _haveDestroyedWeapons = _x getVariable ["FCLA_Weapons_Destroyed", false];
      _haveDestroyedItems = _x getVariable ["FCLA_Items_Destroyed", false];

      if ((_haveDestroyedWeapons) || (_haveDestroyedItems)) then {
        _textToDisplay = switch (true) do {
          case ((_haveDestroyedWeapons) && !(_haveDestroyedItems)): {"Algunas de tus armas se han dañado."};
          case (!(_haveDestroyedWeapons) && (_haveDestroyedItems)): {"Algunos de tus items se han dañado."};
          default {"Algunas de tus armas e items se han dañado."};
        };
        [{["FCLA_Notify", [_this select 0, 1, [1, 0, 0, 1]], _this select 1] call CBA_fnc_targetEvent;}, [_textToDisplay, _x], 5] call CBA_fnc_waitAndExecute;
      };
    };

    //Eliminar variables.
    if (!isNil {_x getVariable "FCLA_Items_Destroyed"}) then {_x setVariable ["FCLA_Weapons_Destroyed", nil, true];};
    if (!isNil {_x getVariable "FCLA_Items_Destroyed"}) then {_x setVariable ["FCLA_Items_Destroyed", nil, true];};
  } forEach _vehicleCrew;
}, [_dammageWeapons, _dammageItems]] call CBA_fnc_addBISEventHandler;


//Guardar ID en una variable de tipo objeto.
_vehicle setVariable ["FCLA_Disable_Vehicle_Destruction_ID", _EventHandlerID, true];
true
