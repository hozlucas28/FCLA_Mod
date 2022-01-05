
/***************************************************************************|
|                          VEHÍCULOS - "MILITARES"                          |
|***************************************************************************/



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



/* ----------------------- PROYECTILES DE VEHÍCULOS ------------------------ */

class Land_pylonpod_12x_rocket_dar_f: Items_base_F {
	author = "hozlucas28";
	displayName = "Cápsula de cohetes (DAR / DAGR)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_pylonpod_12x_rocket_dar_f.jpg";
	icon = "iconObject_2x1";
	model = "\a3\weapons_f\dynamicloadout\pylonpod_12x_rocket_dar_f.p3d";
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


class Land_Rocket_Pod_02_F: Land_pylonpod_12x_rocket_dar_f	{
	author = "hozlucas28";
	displayName = "Cápsula de cohetes (Shrieker)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Rocket_Pod_02_F.jpg";
	model = "\a3\weapons_f_epc\ammo\rocket_pod_02_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_AT_04_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (Jian)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_AT_04_F.jpg";
	model = "\a3\weapons_f_exp\ammo\missile_at_04_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Bomb_05_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Bomba (GBU SDB)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Bomb_05_F.jpg";
	model = "\a3\weapons_f_sams\ammo\bomb_05_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Bomb_05_fly_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Bomba (GBU SDB, desplegada)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Bomb_05_fly_F.jpg";
	model = "\a3\weapons_f_sams\ammo\bomb_05_f_fly.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_AA_04_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (Falchion-22)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_AA_04_F.jpg";
	model = "\a3\weapons_f_epc\ammo\missile_aa_04_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_AA_03_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (Sahr-3)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_AA_03_F.jpg";
	model = "\a3\weapons_f_epc\ammo\missile_aa_03_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_AA_07_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (R73 SR AA)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_AA_07_F.jpg";
	model = "\a3\weapons_f_jets\ammo\missile_aa_07_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_AA_05_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (R77 MR AA)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_AA_05_F.jpg";
	model = "\a3\weapons_f_jets\ammo\missile_aa_05_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_AA_10_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (AMRAAM C AA)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_AA_10_F.jpg";
	model = "\a3\weapons_f_jets\ammo\missile_aa_10_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_AGM_01_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (Sharur)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_AGM_01_F.jpg";
	model = "\a3\weapons_f_epc\ammo\missile_agm_01_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_bomb_02_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Bomba (Mk82)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_bomb_02_F.jpg";
	model = "\a3\weapons_f\ammo\bomb_02_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;

	class SimpleObject {
		init = "''";
		eden = 1;
		verticalOffset = 0.093000002;
		verticalOffsetWorld = 0;
		hide[] = {};
		animate[] = {};
	};
};


class Land_Missile_SAM_02_fly_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (SAM MR)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_SAM_02_fly_F.jpg";
	model = "\a3\weapons_f_jets\ammo\missile_sam_02_fly_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_SAM_03_fly_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (SAM LR, OTAN)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_SAM_03_fly_F.jpg";
	model = "\a3\weapons_f_sams\ammo\missile_sam_03_fly_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_SAM_04_fly_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (SAM LR, CSAT)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_SAM_04_fly_F.jpg";
	model = "\a3\weapons_f_sams\ammo\missile_sam_04_fly_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_pylonpod_rocket_skyfire_f: Items_base_F {
	author = "hozlucas28";
	displayName = "Cápsula de cohetes (Skyfire)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_pylonpod_rocket_skyfire_f.jpg";
  icon = "iconObject_2x1";
	model = "\a3\weapons_f\dynamicloadout\pylonpod_rocket_skyfire_f.p3d";
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

	class Attributes {
		class Number_Of_Rockets {
			control = "edit";
			property = "Number_Of_Rockets";
			validate = "NUMBER";
			expression = "_this animate ['rocketa1', 19 min (0 max _value), true];";
			displayName = "Número de misiles";
			defaultValue = 0;
		};

		class Random_Number_Of_Rockets {
			control = "Checkbox";
			property = "Random_Number_Of_Rockets";
			expression = "if (_value) then {_this animate ['rocketa1', [1, 19] call FCLA_Common_fnc_getRandomNumber, true];};";
			displayName = "Número de misiles (aleatorio)";
			defaultValue = 0;
		};
	};
};


class Land_BombCluster_03_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Bomba (BL778, racimo)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_BombCluster_03_F.jpg";
	model = "\a3\weapons_f_orange\ammo\bombcluster_03_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Rocket_Pod_01_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Cápsula de cohetes (Tratnyr)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Rocket_Pod_01_F.jpg";
	model = "\a3\weapons_f_epc\ammo\rocket_pod_01_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Prop_Bomb_epc_02_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Bomba (GBU-12)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Prop_Bomb_epc_02_F.jpg";
	model = "\a3\weapons_f_epc\ammo\bomb_04_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Prop_Bomb_epc_01_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Bomba (LOM-250G)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Prop_Bomb_epc_01_F.jpg";
	model = "\a3\weapons_f_epc\ammo\bomb_03_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_BombCluster_01_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Bomba (CBU-85, racimo)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_BombCluster_01_F.jpg";
	model = "\a3\weapons_f_orange\ammo\bombcluster_01_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_BombCluster_01_fly_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Bomba (CBU-85, racimo desplegada)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_BombCluster_01_fly_F.jpg";
	model = "\a3\weapons_f_orange\ammo\bombcluster_01_fly_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_BombCluster_02_cap_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Bomba (RBK-500F, racimo v1)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_BombCluster_02_cap_F.jpg";
	model = "\a3\weapons_f_orange\ammo\bombcluster_02_cap_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_BombCluster_02_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Bomba (RBK-500F, racimo v2)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_BombCluster_02_F.jpg";
	model = "\a3\weapons_f_orange\ammo\bombcluster_02_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_AGM_02_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (Macer)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_AGM_02_F.jpg";
	model = "\a3\weapons_f_epc\ammo\missile_agm_02_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Bomb_06_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Bomba de diámetro pequeño";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Bomb_06_F.jpg";
	model = "\a3\weapons_f_sams\ammo\bomb_06_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Bomb_06_fly_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Bomba de diámetro pequeño (desplegada)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Bomb_06_fly_F.jpg";
	model = "\a3\weapons_f_sams\ammo\bomb_06_f_fly.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_AR_01_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (AGM-88C HARM)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_AR_01_F.jpg";
	model = "\a3\weapons_f_sams\ammo\missile_ar_01_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_AR_02_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Proyectil (KH58 ARM)";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_AR_02_F.jpg";
	model = "\a3\weapons_f_sams\ammo\missile_ar_02_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};


class Land_Missile_Cruise_01_F: Land_pylonpod_12x_rocket_dar_f {
	author = "hozlucas28";
	displayName = "Misil de crucero Venator";
	//editorPreview = "\FCLA_Objects\Military\pictures\Land_Missile_Cruise_01_F.jpg";
	model = "\a3\weapons_f_destroyer\ammo\missile_cruise_01_f.p3d";
	editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Military";
  scope = 2;
  scopeCurator = 2;
};
