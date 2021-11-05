
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
if (isNil "FCLA_CBRN_Activated") exitWith {};



[_unit] spawn FCLA_Interactions_fnc_turnOffDetectorCBRN;
_unit setVariable ["FCLA_CBRN_autoDamage", nil, true];
_unit setVariable ["FCLA_CBRN_Threat_Level", nil, true];
_unit setVariable ["FCLA_CBRN_Chemical_Damage", nil, true];
_unit setVariable ["FCLA_CBRN_Damage_Activated", nil, true];
(backpackContainer _unit) setVariable ["FCLA_Backpack_Oxygen_Activated", nil, true];