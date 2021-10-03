
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_showExposureCBRN

Description:
		Muestra la exposición química del paciente.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller", "_patient"];



_getChemicalDamage = _patient getVariable ["FCLA_CBRN_Current_Chemical_Damage", 0];
_chemicalMaximumDamage = if (!isNil "FCLA_CBRN_Maximum_Chemical_Damage") then {FCLA_CBRN_Maximum_Chemical_Damage} else {100};
_coefficientOfDamage = _getChemicalDamage / _chemicalMaximumDamage;


switch (true) do {
  case ((_coefficientOfDamage >= 0) && (_coefficientOfDamage <= 0.1)): {
    [["Exposición química:", 1.25], ["Nula", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;
    [_patient, "quick_view", "%1 verifico la exposición química: Nula", [name _caller]] call ACE_Medical_Treatment_fnc_addToLog;
  };

  case ((_coefficientOfDamage > 0.1) && (_coefficientOfDamage <= 0.4)): {
    [["Exposición química:", 1.25], ["Baja", 1.25, [0.945, 0.902, 0.231, 1]], ["(te cuesta respirar)", 1, [0.945, 0.902, 0.231, 1]], true] call CBA_fnc_Notify;
    [_patient, "quick_view", "%1 verifico la exposición química: Baja", [name _caller]] call ACE_Medical_Treatment_fnc_addToLog;
  };

  case ((_coefficientOfDamage > 0.4) && (_coefficientOfDamage <= 0.9)): {
    [["Exposición química:", 1.25], ["Media", 1.25, [0.839, 0.592, 0.345, 1]], ["(te cuesta respirar y tu piel arde)", 1, [0.839, 0.592, 0.345, 1]], true] call CBA_fnc_Notify;
    [_patient, "quick_view", "%1 verifico la exposición química: Media", [name _caller]] call ACE_Medical_Treatment_fnc_addToLog;
  };

  default {
    [["Exposición química:", 1.25], ["Alta", 1.25, [0.839, 0.345, 0.345, 1]], ["(no te queda mucho tiempo de vida)", 1, [0.839, 0.345, 0.345, 1]], true] call CBA_fnc_Notify;
    [_patient, "quick_view", "%1 verifico la exposición química: Alta", [name _caller]] call ACE_Medical_Treatment_fnc_addToLog;
  };
};
