
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Test {
		units[] = {};
		requiredAddons[] = {};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};



/********************************************************************************|
|                              SUB - CATEGORÍAS 3EDEN                            |
|********************************************************************************/

class CfgEditorSubcategories {
	class FCLA_subCategory_Compositions {displayName = "FCLA Composiciones";};
};

class ACE_Medical_Treatment_Actions {
	class Diagnose;
  class FCLA_Chemical_Exposure: Diagnose {
	displayName = "Comprobar exposición química";
	displayNameProgress = "Comprobando exposición química...";
	category = "examine";
	condition = "true";
	callbackSuccess = "systemchat str _player; hint str _patient;";
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
