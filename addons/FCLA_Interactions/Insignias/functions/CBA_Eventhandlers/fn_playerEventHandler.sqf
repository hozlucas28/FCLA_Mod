
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna un eventhandler del tipo 'addPlayerEventHandler' para colocarle la
 * insignia al jugador.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["loadout", {
  params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
  if (!([_unit, true] call ACE_common_fnc_isPlayer)) exitWith {};
  [_unit] spawn FCLA_Interactions_fnc_statementInsignias;
}, true] call CBA_fnc_addPlayerEventHandler;
