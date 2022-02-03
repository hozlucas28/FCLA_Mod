
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Evita que el vehiculo reciba un dano fatal, dejandolo con un dano total sin
 * provocar su destruccion.
 *
 * Arguments:
 *            0: Vehiculo. <VEHICLE>
 *            1: ¿Destruir las armas de la tripulacion?, opcional. <BOOL> (default: false)
 *            2: ¿Destruir los items de la tripulacion?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la funcion? <BOOL>
 *
 * Examples:
 *             //Las armas e items no se destruiran.
 *             [vehicle player] call FCLA_Common_fnc_setAdvancedVehicleDamage;
 *
 *             //Las armas e items se destruiran.
 *             [vehicle player, true, true] call FCLA_Common_fnc_setAdvancedVehicleDamage;
 *
 * Note:
 * Si el addon option "Dano avanzado de vehiculo" (mod ACE) esta activado,
 * esta funcion no se ejecutara.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_vehicle", objNull, [objNull], 0],
        ["_dammageWeapons", false, [true], 0],
        ["_dammageItems", false, [true], 0]
       ];
_EventHandlerID = _vehicle getVariable ["FCLA_Advanced_Vehicle_Damage_ID", -1];
if ((ACE_Vehicle_Damage_Enabled) || (isNull _vehicle) || !(_vehicle in vehicles) || (_EventHandlerID != -1)) exitWith {false};



_EventHandlerID = [_vehicle, "Dammaged", {
  _this params ["_vehicle", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
  _thisArgs params ["_dammageWeapons", "_dammageItems"];
  if (_damage < 0.9) exitWith {};


  //Desactivar dano.
  _vehicle allowDamage false;
  [{!(isDamageAllowed _this)}, {_this setDamage 0.9;}, _vehicle] call CBA_fnc_waitUntilAndExecute;

  //Obtener tripulacion.
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
    if ((alive _x) && (_isPlayer)) then {["FCLA_Shellshock", [_x], _x] call CBA_fnc_targetEvent;};
  } forEach _vehicleCrew;
}, [_dammageWeapons, _dammageItems]] call CBA_fnc_addBISEventHandler;


//Guardar ID en una variable de tipo objeto.
_vehicle setVariable ["FCLA_Advanced_Vehicle_Damage_ID", _EventHandlerID, true];
true
