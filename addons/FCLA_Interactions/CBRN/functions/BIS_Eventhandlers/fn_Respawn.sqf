
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reinicia los valores/estados de la unidad, cuando respawnea.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_corpse"];
if (isNil "FCLA_CBRN_Activated") exitWith {};



{
  _x setVariable ["FCLA_CBRN_autoDamage", nil, true];
  _x setVariable ["FCLA_CBRN_Threat_Level", nil, true];
  _x setVariable ["FCLA_CBRN_Chemical_Damage", nil, true];
  _x setVariable ["FCLA_CBRN_Damage_Activated", nil, true];
  [_x] spawn FCLA_Interactions_fnc_statementTurnOffChemicalDetectorCBRN;
  (backpackContainer _x) setVariable ["FCLA_Backpack_Oxygen_Activated", nil, true];
} forEach [_unit, _corpse];
