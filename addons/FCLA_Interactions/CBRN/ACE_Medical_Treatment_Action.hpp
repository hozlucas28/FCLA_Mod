
/********************************************************************************|
|              ACCIONES PARA TRATAMIENTOS DEL MENÚ MEDICO - "CBRN"               |
|********************************************************************************/

class FCLA_Chemical_Exposure: Diagnose {
	displayName = "Comprobar exposición química";
	displayNameProgress = "Comprobando exposición química...";
	category = "examine";
	condition = "FCLA_Interactions_fnc_conditionChemicalExposureCBRN";
	callbackSuccess = "FCLA_Interactions_fnc_statementChemicalExposureCBRN";
	allowedSelections[] = {"All"};
	treatmentTime = 5;
};
