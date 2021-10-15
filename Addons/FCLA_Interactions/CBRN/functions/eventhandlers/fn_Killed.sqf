
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 * 
 * Description:
 * Restaura variables cuando la unidad muere.
 * 
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_killer", "_instigator", "_useEffects"];
_isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
_currentBackpackContainer = backpackContainer _unit;
_isChemicalDetectorActivated = _unit getVariable ["FCLA_Chemical_Detector_Activated", false];



if (_isChemicalDetectorActivated) then {[_unit] spawn FCLA_Interactions_fnc_turnOffDetectorCBRN;};
if (!(isNil {_unit getVariable "FCLA_CBRN_autoDamage"})) then {_unit setVariable ["FCLA_CBRN_autoDamage", nil, true];};
if (!(isNil {_unit getVariable "FCLA_CBRN_Enable_Damage"})) then {_unit setVariable ["FCLA_CBRN_Enable_Damage", nil, true];};
if (!(isNil {_unit getVariable "FCLA_CBRN_Current_Threat_Level"})) then {_unit setVariable ["FCLA_CBRN_Current_Threat_Level", nil, true];};
if (!(isNil {_unit getVariable "FCLA_CBRN_Current_Chemical_Damage"})) then {_unit setVariable ["FCLA_CBRN_Current_Chemical_Damage", nil, true];};
if (!(isNil {_currentBackpackContainer getVariable "FCLA_Backpack_Oxygen_Activated"})) then {_currentBackpackContainer setVariable ["FCLA_Backpack_Oxygen_Activated", nil, true];};
