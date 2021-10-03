
/***************************************************************************|
|                             VEHÍCULOS - OPFOR                             |
|***************************************************************************/



/* ------------------------------- SPETSNAZ -------------------------------- */

//Piloto.
class O_R_Pilot_F: O_T_Pilot_F {
  author = "hozlucas28";
  editorPreview  =  "";
  side = 0;
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Personnel";
  hiddenSelections[] = {"Camo1","Camo2","insignia"};
  hiddenSelectionsTextures[] = {"\A3\Characters_F\OPFOR\Data\clothing_co.paa","\A3\Characters_F\OPFOR\Data\tech_CO.paa"};
  identityTypes[] = {"LanguageRUS_F","Head_Russian","Head_Euro","Head_Enoch","Head_Asian","G_RUS_SF"};
  genericNames = "RussianMen";
  uniformClass = "U_O_R_Gorka_01_camo_F";
};


//Piloto de helicóptero.
class O_R_helipilot_F: O_helipilot_F {
  author = "hozlucas28";
  editorPreview  =  "";
  side = 0;
  faction = "OPF_R_F";
  editorSubcategory = "EdSubcat_Personnel";
  hiddenSelections[] = {"Camo1","Camo2","insignia"};
  hiddenSelectionsTextures[] = {"\A3\Characters_F\OPFOR\Data\clothing_co.paa","\A3\Characters_F\OPFOR\Data\tech_CO.paa"};
  identityTypes[] = {"LanguageRUS_F","Head_Russian","Head_Euro","Head_Enoch","Head_Asian","G_RUS_SF"};
  genericNames = "RussianMen";
  uniformClass = "U_O_R_Gorka_01_camo_F";
  linkedItems[] = {"H_PilotHelmetHeli_B","V_TacVest_oli","ItemMap","ItemCompass","ItemWatch","ItemRadio","NVGoggles_OPFOR"};
};
