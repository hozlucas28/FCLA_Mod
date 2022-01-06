
/***************************************************************************|
|                          VEHÍCULOS - "OBJETIVOS"                          |
|***************************************************************************/



/* --------------------------- OBJETIVO OVALADO ---------------------------- */

class Land_Target_Oval_yellow_F: Land_Target_Oval_F {
  author = "hozlucas28";
  displayName = "Objetivo: ovalado (tierra, amarillo)";
  editorPreview = "\FCLA_Objects\Targets\pictures\Land_Target_Oval_yellow_F.jpg";
  hiddenSelectionsTextures[] = {"\a3\modules_f_beta\data\firingdrills\target_oval_ca.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Targets";
  scope = 2;
  scopeCurator = 2;
};



/* ------------------------------- TEXTURAS -------------------------------- */

class Land_graffiti_CrossWithCircle_F: UserTexture1m_F {
  author = "hozlucas28";
  displayName = "Objetivo de grafiti";
  icon = "iconObject_1x1";
  model = "\a3\misc_f\helpers\usertexture1m.p3d";
  editorPreview = "\FCLA_Objects\Targets\pictures\Land_graffiti_CrossWithCircle_F.jpg";
  hiddenSelectionsTextures[] = {"\a3\structures_f\mil\helipads\data\jumptarget_ca.paa"};
  hiddenSelectionsMaterials[] = {"\a3\structures_f\mil\helipads\data\helipads.rvmat"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Targets";
  scope = 2;
  scopeCurator = 2;
};


class Land_Dispersion_target_F: UserTexture1m_F	{
  author = "hozlucas28";
  displayName = "Objetivo de papel";
  editorPreview = "\FCLA_Objects\Targets\pictures\Land_Dispersion_target_F.jpg";
  hiddenSelectionsTextures[] = {"\a3\structures_f_enoch\military\training\data\dispersion_target_co.paa"};
  hiddenSelectionsMaterials[] = {"\a3\structures_f_enoch\military\training\data\targets_paper.rvmat"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Targets";
  scope = 2;
  scopeCurator = 2;
};
