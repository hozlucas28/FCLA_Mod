
/********************************************************************************|
|                       TRATAMIENTOS DEL MENÚ MEDICO - ACE                       |
|********************************************************************************/

class ACE_Medical_Treatment_Actions {
	class Diagnose;
	class Check_Chemical_Exposure: Diagnose {
		displayName = "Comprobar exposición química";
		displayNameProgress = "Comprobando exposición química...";
		category = "examine";
		condition = "[_this select 0, _this select 1] call FCLA_Interactions_fnc_canCheckChemicalExposureCBRN;";
		callbackSuccess = "[_this select 0, _this select 1] call FCLA_Interactions_fnc_showExposureCBRN;";
		callbackFailure = "";
		callbackProgress = "";
		animationMedic = "AinvPknlMstpSlayWrflDnon_medicOther";
		animationMedicProne = "AinvPpneMstpSlayW[wpn]Dnon_medicOther";
		animationMedicSelf = "AinvPknlMstpSlayW[wpn]Dnon_medic";
		animationMedicSelfProne = "AinvPpneMstpSlayW[wpn]Dnon_medic";
		allowedSelections[] = {"All"};
    treatmentTime = 5;
	};
};
