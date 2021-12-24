
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reinicia los valores/estados de la unidad, cuando muere.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
if (!(missionNamespace getVariable ["FCLA_CBRN", false])) exitWith {};



_unit setVariable ["FCLA_CBRN_autoDamage", nil, true];
_unit setVariable ["FCLA_CBRN_Threat_Level", nil, true];
_unit setVariable ["FCLA_CBRN_Chemical_Damage", nil, true];
_unit setVariable ["FCLA_CBRN_Damage_Activated", nil, true];
[_unit] spawn FCLA_Interactions_fnc_statementTurnOffChemicalDetectorCBRN;
(backpackContainer _unit) setVariable ["FCLA_Backpack_Oxygen_Activated", nil, true];
