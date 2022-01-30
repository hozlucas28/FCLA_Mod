
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Desactiva la propulsión automática del helicóptero.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Module_Deactivate_Auto_Hover", {
  if (isServer) exitWith {};

  _player = call CBA_fnc_currentUnit;
  _currentVehicle = vehicle _player;
  if (_currentVehicle isKindOf "Helicopter") then {
    _player action ["AutoHoverCancel", _currentVehicle];
  };
}] call CBA_fnc_addEventHandler;
