
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Comprueba la exposición química.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_medic", "_patient"];


//Calcular exposición.
_getChemicalDamage = _patient getVariable ["FCLA_CBRN_Chemical_Damage", 0];
_coefficientOfDamage = _getChemicalDamage / 100;
[_patient, "quick_view", "%1 verificando la exposición química", [name _medic]] call ACE_Medical_Treatment_fnc_addToLog;


//Notificar.
switch (true) do {
  case ((_coefficientOfDamage >= 0) && (_coefficientOfDamage <= 0.1)): {
    [["Exposición química:", 1.25], ["Nula", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;
    [_patient, "quick_view", "%1 verifico la exposición química: Nula", [name _medic]] call ACE_Medical_Treatment_fnc_addToLog;
  };

  case ((_coefficientOfDamage > 0.1) && (_coefficientOfDamage <= 0.4)): {
    [["Exposición química:", 1.25], ["Baja", 1.25, [0.945, 0.902, 0.231, 1]], ["(te cuesta respirar)", 1, [0.945, 0.902, 0.231, 1]], true] call CBA_fnc_Notify;
    [_patient, "quick_view", "%1 verifico la exposición química: Baja", [name _medic]] call ACE_Medical_Treatment_fnc_addToLog;
  };

  case ((_coefficientOfDamage > 0.4) && (_coefficientOfDamage <= 0.9)): {
    [["Exposición química:", 1.25], ["Media", 1.25, [0.839, 0.592, 0.345, 1]], ["(te cuesta respirar y tu piel arde)", 1, [0.839, 0.592, 0.345, 1]], true] call CBA_fnc_Notify;
    [_patient, "quick_view", "%1 verifico la exposición química: Media", [name _medic]] call ACE_Medical_Treatment_fnc_addToLog;
  };

  default {
    [["Exposición química:", 1.25], ["Alta", 1.25, [0.839, 0.345, 0.345, 1]], ["(no te queda mucho tiempo de vida)", 1, [0.839, 0.345, 0.345, 1]], true] call CBA_fnc_Notify;
    [_patient, "quick_view", "%1 verifico la exposición química: Alta", [name _medic]] call ACE_Medical_Treatment_fnc_addToLog;
  };
};
