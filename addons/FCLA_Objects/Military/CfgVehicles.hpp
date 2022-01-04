
/***************************************************************************|
|                          VEHÍCULOS - "MILITARES"                          |
|***************************************************************************/

//ORDENAR Y INERITACIONES

/* --------------------------------- ARMAS --------------------------------- */

class Land_APC_Wheeled_03_m240_Vehicle_F: Items_base_F {
  author = "hozlucas28";
  displayName = "M240";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_APC_Wheeled_03_m240_Vehicle_F.jpg";
  icon = "iconObject_1x1";
  model = "\a3\armor_f_gamma\apc_wheeled_03\data\m240_vehicle.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
    verticalOffset = 1.326;
    verticalOffsetWorld = 0.011;
  	hide[] = {};
    animate[] = {};
  };
};


class Land_AFV_Wheeled_01_M2_F: Items_base_F {
  author = "hozlucas28";
  displayName = "M2";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_AFV_Wheeled_01_M2_F.jpg";
  icon = "iconObject_2x3";
  model = "\a3\armor_f_tank\afv_wheeled_01\m2.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
    verticalOffset = 1.326;
    verticalOffsetWorld = 0.011;
  	hide[] = {};
    animate[] = {};
  };
};



/* ------------------------------- GRANADAS -------------------------------- */

class Land_mini_frag_F: Items_base_F	{
  author = "hozlucas28";
  displayName = "Minigranada";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_mini_frag_F.jpg";
  icon = "iconObject_circle";
  model = "\a3\weapons_f\ammo\mini_frag.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
    eden = 1;
    verticalOffset = 0.89999998;
    verticalOffsetWorld = 0;
    hide[] = {};
    animate[] = {};
  };
};


class Land_Handgrenade_F: Land_mini_frag_F	{
  author = "hozlucas28";
  displayName = "Granada frag. RGO";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_Handgrenade_F.jpg";
  icon = "iconObject_circle";
  model = "\a3\weapons_f\ammo\handgrenade.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_smokegrenade_white_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Granada de humo (blanca)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_smokegrenade_white_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f\ammo\smokegrenade_white.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  reversed = 1;
  scope = 2;
  scopeCurator = 2;
};


class Land_smokegrenade_red_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Granada de humo (roja)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_smokegrenade_red_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f\ammo\smokegrenade_red.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  reversed = 1;
  scope = 2;
  scopeCurator = 2;
};


class Land_smokegrenade_green_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Granada de humo (verde)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_smokegrenade_green_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f\ammo\smokegrenade_green.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  reversed = 1;
  scope = 2;
  scopeCurator = 2;
};


class Land_smokegrenade_yellow_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Granada de humo (amarilla)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_smokegrenade_yellow_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f\ammo\smokegrenade_yellow.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  reversed = 1;
  scope = 2;
  scopeCurator = 2;
};


class Land_smokegrenade_blue_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Granada de humo (azul)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_smokegrenade_blue_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f\ammo\smokegrenade_blue.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  reversed = 1;
  scope = 2;
  scopeCurator = 2;
};


class Land_smokegrenade_orange_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Granada de humo (naranja)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_smokegrenade_orange_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f\ammo\smokegrenade_orange.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  reversed = 1;
  scope = 2;
  scopeCurator = 2;
};


class Land_smokegrenade_purple_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Granada de humo (morada)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_smokegrenade_purple_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f\ammo\smokegrenade_purple.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  reversed = 1;
  scope = 2;
  scopeCurator = 2;
};



/* ------------------------ PROYECTILES DE BAZOOKAS ------------------------ */

class Land_rocket_MRAWS_HE_item_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Proyectil (MAAWS HE 44)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_rocket_MRAWS_HE_item_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f_tank\launchers\mraws\rocket_mraws_he_f_item.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_rocket_MRAWS_HEAT55_item_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Proyectil (Tandem HEAT)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_rocket_MRAWS_HEAT55_item_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f_tank\launchers\mraws\rocket_mraws_heat55_f_item.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_rocket_MRAWS_HEAT_item_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Proyectil (MAAWS HEAT 44)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_rocket_MRAWS_HEAT_item_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f_tank\launchers\mraws\rocket_mraws_heat_f_item.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_rocket_rpg7_F: Items_base_F {
  author = "hozlucas28";
  displayName = "Granada propulsada (PG-7VM HEAT)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_rocket_rpg7_F.jpg";
  icon = "iconExplosiveGP";
  model = "\a3\weapons_f_exp\launchers\rpg7\rocket_rpg7_item.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  mapSize = 1.0089999;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
    verticalOffset = 0.62344998;
    verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};


class Land_tbg32v_rocket_item_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Misil HE RPG-42";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_tbg32v_rocket_item_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f\launchers\rpg32\tbg32v_rocket_item.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_nlaw_proxy_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Misil PCML";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_nlaw_proxy_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f\launchers\nlaw\nlaw_proxy.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_pg32v_rocket_item_F: Land_mini_frag_F {
  author = "hozlucas28";
  displayName = "Misil RPG-42";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_pg32v_rocket_item_F.jpg";
  icon = "iconObject_1x2";
  model = "\a3\weapons_f\launchers\rpg32\pg32v_rocket_item.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};



/* --------------------------- CAJAS DE MUNICIÓN --------------------------- */

class Land_Proxy_UsBasicAmmoBoxBig_F: Items_base_F {
  author = "hozlucas28";
  displayName = "Caja de munición (grande)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_Proxy_UsBasicAmmoBoxBig_F.jpg";
  icon = "iconObject_2x1";
  model = "\a3\weapons_f\ammoboxes\proxy_usbasicammoboxbig.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  mapSize = 0.63999999;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
    verticalOffset = 0.205;
    verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};


class Land_Proxy_UsBasicAmmoBoxSmall_F: Land_Proxy_UsBasicAmmoBoxBig_F {
  author = "hozlucas28";
  displayName = "Caja de munición (pequeña)";
  //editorPreview = "\FCLA_Objects\Military\pictures\Land_Proxy_UsBasicAmmoBoxSmall_F.jpg";
  model = "\a3\weapons_f\ammoboxes\proxy_usbasicammoboxsmall.p3d";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  mapSize = 0.44;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
    verticalOffset = 0.16500001;
    verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};



/* ----------------------- PROYECTILES DE VEHÍCULOS ------------------------ */
