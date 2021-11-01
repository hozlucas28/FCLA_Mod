
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna un eventhandler del tipo 'addPlayerEventHandler' para remplazar un
 * item si este cumple con la condición. Se revisara cada vez que se modifique
 * el inventario.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["loadout", {
  params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
  _compatibleBandages = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];
  _compatibleItemsBandages = ["FCLA_G_Blindfold_01_Black_F", "FCLA_G_Blindfold_01_White_F"];
  _hasNotCompatibleBandages = !((_compatibleBandages select 0) in (items _unit)) && !((_compatibleBandages select 1) in (items _unit));
  if (_hasNotCompatibleBandages) exitWith {};
  [_compatibleBandages select 0, _compatibleItemsBandages select 0] call ACE_Common_fnc_registerItemReplacement;
  [_compatibleBandages select 1, _compatibleItemsBandages select 1] call ACE_Common_fnc_registerItemReplacement;
}, true] call CBA_fnc_addPlayerEventHandler;
