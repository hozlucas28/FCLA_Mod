
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
|                                   VEHÍCULOS                                    |
|********************************************************************************/

class ACE_Medical_Treatment_Actions {
	class Diagnose;

	class Check_Chemical_Exposure: Diagnose {
		displayName = "Comprobar exposición química";
		displayNameProgress = "Comprobando exposición química...";
		category = "examine";
		condition = "true";
		callbackSuccess = "hint str _this; true";
		callbackFailure = "hint 'Failure';";
		callbackProgress = "";
		animationMedic = "AinvPknlMstpSlayWrflDnon_medicOther";
		animationMedicProne = "AinvPpneMstpSlayW[wpn]Dnon_medicOther";
		animationMedicSelf = "AinvPknlMstpSlayW[wpn]Dnon_medic";
		animationMedicSelfProne = "AinvPpneMstpSlayW[wpn]Dnon_medic";
		allowedSelections[] = {"All"};
		//litter[] = {};
		//items[] = {};
		//itemConsumed = 0;
		//allowSelfTreatment = 1;
		treatmentTime = 5;
	};
};
