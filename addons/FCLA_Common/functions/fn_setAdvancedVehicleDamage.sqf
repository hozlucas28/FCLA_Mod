
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
 *             //Las armas e items no se destruirán.
 *             [vehicle player] call FCLA_Common_fnc_setAdvancedVehicleDamage;
 *
 *             //Las armas e items se destruirán.
 *             [vehicle player, true, true] call FCLA_Common_fnc_setAdvancedVehicleDamage;
 *
 * Note:
 * Si el addon option "Daño avanzado de vehículo" (mod ACE) esta activado,
 * esta función no se ejecutara.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_vehicle", objNull, [objNull], 0],
        ["_dammageWeapons", false, [true], 0],
        ["_dammageItems", false, [true], 0]
       ];
if ((isNull _vehicle) || !(_vehicle in vehicles) || (ACE_Vehicle_Damage_Enabled)) exitWith {false};



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
      };
    };

    //Efecto visual.
    _isPlayer = [_x, false] call ACE_Common_fnc_isPlayer;
    if ((alive _x) && (_isPlayer)) then {["FCLA_Shellshock", _x] call CBA_fnc_localEvent;};
  } forEach _vehicleCrew;
}, [_dammageWeapons, _dammageItems]] call CBA_fnc_addBISEventHandler;


//Guardar ID en una variable de tipo objeto.
_vehicle setVariable ["FCLA_Disable_Vehicle_Destruction_ID", _EventHandlerID, true];
true
