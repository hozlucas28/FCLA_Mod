
/********************************************************************************|
|              ACCIONES PARA TRATAMIENTOS DEL MENÚ MEDICO - "CBRN"               |
|********************************************************************************/

class FCLA_Chemical_Exposure: Diagnose {
	displayName = "Comprobar exposición química";
	displayNameProgress = "Comprobando exposición química...";
	category = "examine";
	condition = "[_patient, _player] call FCLA_Interactions_fnc_conditionChemicalExposureCBRN;";
	callbackSuccess = "[_patient, _player] spawn FCLA_Interactions_fnc_statementChemicalExposureCBRN;";
	callbackFailure = "";
	callbackProgress = "";
	animationMedic = "AinvPknlMstpSlayWrflDnon_medicOther";
	animationMedicProne = "AinvPpneMstpSlayW[wpn]Dnon_medicOther";
	animationMedicSelf = "AinvPknlMstpSlayW[wpn]Dnon_medic";
	animationMedicSelfProne = "AinvPpneMstpSlayW[wpn]Dnon_medic";
	allowedSelections[] = {"All"};
	treatmentTime = 5;
};
