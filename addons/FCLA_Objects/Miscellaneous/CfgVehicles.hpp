
/***************************************************************************|
|                         VEHICULOS - "MISCELANEOS"                         |
|***************************************************************************/



/* ------------------------------- BANCADAS -------------------------------- */

class Land_Heli_Transport_04_bench_black_proxy_F: Items_base_F {
  author = "hozlucas28";
  displayName = "Unidad de bancada - Taru (negra)";
  editorPreview = "\FCLA_Objects\Miscellaneous\data\pictures\Land_Heli_Transport_04_bench_black_proxy_F.jpg";
  icon = "iconObject_2x3";
  model = "\a3\air_f_heli\heli_transport_04\heli_transport_04_bench_black_proxy_f.p3d";
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


class Land_Heli_Transport_04_bench_proxy_F: Items_base_F {
  author = "hozlucas28";
  displayName = "Unidad de bancada - Taru (arena)";
  editorPreview = "\FCLA_Objects\Miscellaneous\data\pictures\Land_Heli_Transport_04_bench_proxy_F.jpg";
  icon = "iconObject_2x3";
  model = "\a3\air_f_heli\heli_transport_04\pod_heli_transport_04_bench_f.p3d";
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



/* -------------------------------- PIZARRA -------------------------------- */

class Custom_Land_WallSign_01_Chalkboard_F: Land_WallSign_01_chalkboard_F {
  author = "hozlucas28";
  displayName = "Senal de pared (pizarra, personalizada)";
  editorPreview = "\FCLA_Objects\Miscellaneous\data\pictures\Custom_Land_WallSign_01_Chalkboard_F.jpg";
	hiddenselections[] = {"camo1", "camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Objects\Miscellaneous\data\Land_WallSign_01_Chalkboard_F_Rules.paa", "\FCLA_Objects\Miscellaneous\data\Land_WallSign_01_Chalkboard_F_Rules.paa"};
  editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_BlankSigns";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
    verticalOffset = 0.46000001;
  	verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pizarra";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "{_this setObjectTextureGlobal [_x, _value];} forEach [0, 1];";
      defaultValue = """\FCLA_Objects\Miscellaneous\data\Land_WallSign_01_Chalkboard_F_Rules.paa""";

    	class values {
        class Texture_1 {
        	name = "Reglas";
        	value = "\FCLA_Objects\Miscellaneous\data\Land_WallSign_01_Chalkboard_F_Rules.paa";
        };

        class Texture_2 {
        	name = "Guia medica";
        	value = "\FCLA_Objects\Miscellaneous\data\Land_WallSign_01_Chalkboard_F_Medical_Guide.paa";
        };

        class Texture_3 {
        	name = "Parches FCLA";
        	value = "\FCLA_Objects\Miscellaneous\data\Land_WallSign_01_Chalkboard_F_FCLA_Patches.paa";
        };
			};
		};
	};
};



/* -------------------------------- STANDS --------------------------------- */

class Custom_Land_InfoStand_V1_F: Land_InfoStand_V1_F {
  author = "hozlucas28";
  displayName = "Stand de informacion (1 pata, personalizado)";
  editorPreview = "\FCLA_Objects\Miscellaneous\data\pictures\Custom_Land_InfoStand_V1_F.jpg";
	hiddenSelections[] = {"camo", "camo_background"};
  hiddenSelectionsTextures[] = {"\FCLA_Objects\Miscellaneous\data\Land_InfoStand_F_FCLA.paa", "a3\structures_f\civ\infoboards\data\infostands_ca.paa"};
  editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_BlankSigns";
  scope = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Textura";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\FCLA_Objects\Miscellaneous\data\Land_InfoStand_F_FCLA.paa""";

    	class values {
        class Texture_1 {
        	name = "FCLA";
        	value = "\FCLA_Objects\Miscellaneous\data\Land_InfoStand_F_FCLA.paa";
        };

        class Texture_2 {
        	name = "Teletransportador";
        	value = "\FCLA_Objects\Miscellaneous\data\Land_InfoStand_F_Teleport.paa";
        };
			};
		};
	};
};


class Custom_Land_InfoStand_V2_F: Land_InfoStand_V2_F {
  author = "hozlucas28";
  displayName = "Stand de informacion (2 patas, personalizado)";
  editorPreview = "\FCLA_Objects\Miscellaneous\data\pictures\Custom_Land_InfoStand_V2_F.jpg";
	hiddenSelections[] = {"camo", "camo_background"};
  hiddenSelectionsTextures[] = {"\FCLA_Objects\Miscellaneous\data\Land_InfoStand_F_FCLA.paa", "a3\structures_f\civ\infoboards\data\infostands_ca.paa"};
  editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_BlankSigns";
  scope = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Textura";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\FCLA_Objects\Miscellaneous\data\Land_InfoStand_F_FCLA.paa""";

    	class values {
        class Texture_1 {
        	name = "FCLA";
        	value = "\FCLA_Objects\Miscellaneous\data\Land_InfoStand_F_FCLA.paa";
        };

        class Texture_2 {
        	name = "Teletransportador";
        	value = "\FCLA_Objects\Miscellaneous\data\Land_InfoStand_F_Teleport.paa";
        };
			};
		};
	};
};



/* ----------------------------- CAJA DE CARGA ----------------------------- */

class Land_Box_Science_F: ThingX {
		author = "hozlucas28";
    displayName = "Caja de carga (anticuerpos de Atrox)";
    editorPreview = "\FCLA_Objects\Miscellaneous\data\pictures\Land_Box_Science_F.jpg";
    icon = "iconObject_1x1";
		model = "\a3\weapons_f\ammoboxes\ammoveh_f.p3d";
		destrType = "DestructBuilding";
    vehicleClass = "Ammo";
		explosionEffect = "BasicAmmoExplosion";
    editorCategory = "EdCat_Things";
    editorSubcategory = "EdSubcat_Storage";
    armor = 200;
    mapSize = 1.53;
    animated = 0;
    accuracy = 0.2;
		maximumLoad = 2000;
		transportMaxWeapons = 12;
		transportMaxMagazines = 64;
		transportMaxBackpacks = 12;
		waterLinearDampingCoefY = 1;
		waterAngularDampingCoef = 0.1;
    scope = 2;
    scopeCurator = 2;

    hiddenSelections[] = {"Camo_Miscellaneous",	"Camo"};
    hiddenSelectionsTextures[] = {"",	"\a3\missions_f_oldman\data\img\decals\science_container_co.paa"};
    slingLoadCargoMemoryPoints[] = {"SlingLoadCargo1", "SlingLoadCargo2", "SlingLoadCargo3", "SlingLoadCargo4"};
    class TransportItems{};
    class TransportWeapons{};
    class TransportMagazines{};

    class SimpleObject	{
      init = "''";
			eden = 1;
      verticalOffset = 0.79000002;
      verticalOffsetWorld = 0;
			hide[] = {};
      animate[] = {};
		};

		class DestructionEffects {
			class Smoke2 {
				simulation = "particles";
				type = "AmmoSmokeParticles2";
				position = "";
				intensity = 1;
				interval = 1;
				lifeTime = 2;
			};

			class Bullets {
				simulation = "particles";
				type = "AmmoBulletCore";
				position = "";
				intensity = 1;
				interval = 1;
				lifeTime = 1.2;
			};

			class HouseDestr {
				simulation = "destroy";
				type = "DelayedDestructionAmmoBox";
				position = "";
				intensity = 1;
				interval = 1;
				lifeTime = 10;
			};
		};
};



/* --------------------------- ESTACION DE RADAR --------------------------- */

class Radar_Electronics: Items_base_F	{
  author = "hozlucas28";
  displayName = "Estacion de radar (electronica)";
  editorPreview = "\FCLA_Objects\Miscellaneous\data\pictures\Radar_Electronics.jpg";
  icon = "iconObject_1x2";
  model = "\a3\structures_f_enoch\furniture\radar_equipment\radar_electronics.p3d";
  editorCategory = "EdCat_Structures_Enoch";
  editorSubcategory = "EdSubcat_Military";
  mapSize = 2.05;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
    verticalOffset = 0.24699999;
    verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};


class Radar_Panel: radar_electronics {
  author = "hozlucas28";
  displayName = "Estacion de radar (cuerpo)";
  editorPreview = "\FCLA_Objects\Miscellaneous\data\pictures\Radar_Panel.jpg";
  icon = "iconObject_5x2";
  model = "\a3\structures_f_enoch\furniture\radar_equipment\radar_panel.p3d";
  editorCategory = "EdCat_Structures_Enoch";
  editorSubcategory = "EdSubcat_Military";
  mapSize = 2.05;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
    verticalOffset = 0.24699999;
    verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};


class Radar_Panel_Flat: radar_electronics {
  author = "hozlucas28";
  displayName = "Estacion de radar (cuerpo, liso)";
  editorPreview = "\FCLA_Objects\Miscellaneous\data\pictures\Radar_Panel_Flat.jpg";
  icon = "iconObject_5x2";
  model = "\a3\structures_f_enoch\furniture\radar_equipment\radar_panel_flat.p3d";
  editorCategory = "EdCat_Structures_Enoch";
  editorSubcategory = "EdSubcat_Military";
  mapSize = 2.05;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
    verticalOffset = 0.24699999;
    verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};


class Radar_Rack: radar_electronics {
  author = "hozlucas28";
  displayName = "Estacion de radar (estante)";
  editorPreview = "\FCLA_Objects\Miscellaneous\data\pictures\Radar_Rack.jpg";
  icon = "iconObject_1x4";
  model = "\a3\structures_f_enoch\furniture\radar_equipment\radar_rack.p3d";
  editorCategory = "EdCat_Structures_Enoch";
  editorSubcategory = "EdSubcat_Military";
  mapSize = 2.05;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
    verticalOffset = 0.24699999;
    verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};


class Radar_Rack_Quad: radar_electronics {
  author = "hozlucas28";
  displayName = "Estacion de radar (estante, cuadruple)";
  editorPreview = "\FCLA_Objects\Miscellaneous\data\pictures\Radar_Rack_Quad.jpg";
  icon = "iconObject_10x1";
  model = "\a3\structures_f_enoch\furniture\radar_equipment\radar_rack_quad.p3d";
  editorCategory = "EdCat_Structures_Enoch";
  editorSubcategory = "EdSubcat_Military";
  mapSize = 2.05;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
    verticalOffset = 0.24699999;
    verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};
