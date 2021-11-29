
/********************************************************************************|
|                           VEHÍCULOS - INDEPENDIENTES                           |
|********************************************************************************/



/* --------------------------- FURGONETAS (AAF) ---------------------------- */

class FCLA_I_Van_02_Transport_F: C_Van_02_transport_F {
  crew = "I_soldier_F";
  displayName = "Furgoneta (transporte)";
  //editorPreview = "\FCLA_Land\INDEPENDENT\data\pictures\FCLA_I_Van_02_Transport_F.jpg";
  side = 2;
  faction = "IND_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Olive", 1};
  class TextureSources {
    class Olive {
      author = "hozlucas28";
      displayName = "Oliva";
      textures[] = {"\FCLA_Land\INDEPENDENT\data\FCLA_I_Van_02_Transport_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_transport_ca.paa", "\FCLA_Land\INDEPENDENT\data\FCLA_I_Van_02_Transport_F.paa"};
    };
  };
};


class FCLA_I_Van_02_Vehicle_F: C_Van_02_vehicle_F {
  crew = "I_engineer_F";
  displayName = "Furgoneta (carga)";
  //editorPreview = "\FCLA_Land\INDEPENDENT\data\pictures\FCLA_I_Van_02_Vehicle_F.jpg";
  side = 2;
  faction = "IND_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Olive", 1};
  class TextureSources {
    class Olive {
      author = "hozlucas28";
      displayName = "Oliva";
      textures[] = {"\FCLA_Land\INDEPENDENT\data\FCLA_I_Van_02_Vehicle_F.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\a3\soft_f_orange\van_02\data\van_glass_utility_ca.paa", "\FCLA_Land\INDEPENDENT\data\FCLA_I_Van_02_Vehicle_F.paa"};
    };
  };
};


class FCLA_I_Van_02_Service_F: C_Van_02_service_F {
  crew = "I_engineer_F";
  displayName = "Furgoneta (servicios)";
  //editorPreview = "\FCLA_Land\INDEPENDENT\data\pictures\FCLA_I_Van_02_Service_F.jpg";
  side = 2;
  faction = "IND_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Olive", 1};
  class TextureSources {
    class Olive {
      author = "hozlucas28";
      displayName = "Oliva";
      textures[] = {"\FCLA_Land\INDEPENDENT\data\FCLA_I_Van_02_Service_F.paa", "a3\soft_f_orange\van_02\data\van_wheel_dirty_co.paa", "a3\soft_f_orange\van_02\data\van_glass_civservice_ca.paa", "a3\soft_f_orange\van_02\data\van_body_civservice_co.paa"};
    };
  };
};


class FCLA_I_Van_02_Medevac_F: C_Van_02_medevac_F {
  crew = "I_medic_F";
  displayName = "Furgoneta (ambulancia)";
  //editorPreview = "\FCLA_Land\INDEPENDENT\data\pictures\FCLA_I_Van_02_Medevac_F.jpg";
  side = 2;
  faction = "IND_F";
  scope = 2;
  scopeCurator = 2;

  textureList[] = {"Olive", 1};
  class TextureSources {
    class Olive {
      author = "hozlucas28";
      displayName = "Oliva";
      textures[] = {"\FCLA_Land\INDEPENDENT\data\FCLA_I_Van_02_Medevac_F_1.paa", "\a3\soft_f_orange\van_02\data\van_wheel_co.paa", "\FCLA_Land\INDEPENDENT\data\FCLA_I_Van_02_Medevac_F_2.paa"};
    };
  };
};
