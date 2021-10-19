
/***************************************************************************|
|                          VEHÍCULOS - "OBJETIVOS"                          |
|***************************************************************************/

editorCategory = "FCLA_Category_Structures";
editorSubcategory = "FCLA_subCategory_Targets";

class FCLA_Land_Dispersion_target_F: UserTexture1m_F {
  _generalMacro = "FCLA_Land_Dispersion_target_F";
  author = "hozlucas28";
  displayName = "Objetivo (papel)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Targets";
  editorPreview = "\FCLA_Objects\Targets\pictures\FCLA_Land_Dispersion_target_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\structures_f_enoch\military\Training\Data\Dispersion_target_co.paa"};
  hiddenSelectionsMaterials[] = {"\A3\structures_f_enoch\military\Training\Data\targets_paper.rvmat"};
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Land_Target_Oval_yellow_F: Land_Target_Oval_F {
  _generalMacro = "FCLA_Land_Target_Oval_yellow_F";
  author = "hozlucas28";
  displayName = "Objetivo ovalado (tierra, amarillo)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Targets";
  editorPreview = "\FCLA_Objects\Targets\pictures\FCLA_Land_Target_Oval_yellow_F.jpg";
  hiddenSelectionsTextures[] = {"\A3\Modules_F_Beta\data\FiringDrills\target_oval_ca.paa"};
  scope = 2;
  scopeCurator = 2;
};
