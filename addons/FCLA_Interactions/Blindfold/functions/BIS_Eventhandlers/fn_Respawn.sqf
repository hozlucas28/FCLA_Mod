
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Elimina la venda que tiene la unidad en los ojos, cuando respawnea.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_corpse"];
_originalGoggles = _unit getVariable ["FCLA_Saved_Goggles", ""];
if (!FCLA_Blindfold_Allowed) exitWith {};



//Quitar venda.
removeGoggles _unit;

//Devolver gafas.
if (_originalGoggles == "") exitWith {};
_unit addGoggles _originalGoggles;
_unit setVariable ["FCLA_Saved_Goggles", nil, true];
