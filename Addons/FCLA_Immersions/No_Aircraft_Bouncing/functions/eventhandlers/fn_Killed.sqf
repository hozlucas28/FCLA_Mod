
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Evita que la aeronave rebote contra el suelo, si esta fue destruida
 * por completo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_vehicle", "_killer", "_instigator", "_useEffects"];
if ((typeOf _vehicle in FCLA_NAB_Exclusions) || (!_useEffects) || (isTouchingGround _vehicle)) exitWith {};


[{(isNull (_this select 0)) || (isTouchingGround (_this select 0))}, {
  params ["_vehicle"];
  if (isNull _vehicle) exitWith {};
  _velocity = velocity _vehicle;
  _vehicle setVelocity [_velocity select 0, _velocity select 1, -1];
 	["FCLA_Immersions_NAB_Spawn_Particles", _vehicle] call CBA_fnc_serverEvent;
}, [_vehicle]] call CBA_fnc_waitUntilAndExecute;
