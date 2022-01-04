
/***************************************************************************|
|                           VEHÍCULOS - "SEÑALES"                           |
|***************************************************************************/



/* -------------------------- ZONA DE CUARENTENA --------------------------- */

class Land_Sign_WarningQuarantine_F: Land_Sign_WarningMilAreaSmall_F {
  author = "hozlucas28";
  displayName = "Señal (cuarentena)";
  //editorPreview = "\FCLA_Objects\Signs\pictures\Land_Sign_WarningQuarantine_F.jpg";
  hiddenSelectionsTextures[] = {"\a3\missions_f_oldman\data\img\mosquito_sign_ca.paa"};
  editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_RoadSigns";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
    verticalOffset = 1.041;
    verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};



/* --------------------------- PUNTOS DE CONTROL --------------------------- */

class Land_SignWarning_01_CheckpointZone1_F: SignAd_Sponsor_F	{
  editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_RoadSigns";
  scope = 2;
  scopeCurator = 2;
};


class Land_SignWarning_01_CheckpointZone2_F: SignAd_Sponsor_F {
  editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_RoadSigns";
  scope = 2;
  scopeCurator = 2;
};


class Land_SignWarning_01_CheckpointZone3_F: SignAd_Sponsor_F {
  author = "hozlucas28";
  displayName = "Señal (Punto de control, v4)";
  //editorPreview = "\FCLA_Objects\Signs\pictures\Land_SignWarning_01_CheckpointZone3_F.jpg";
  hiddenSelectionsTextures[] = {"a3\missions_f_orange\data\img\orange_compositions\checkpoint\signspec_checkpoint_co.paa"};
  editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_RoadSigns";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
    verticalOffset = 1.041;
    verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};
