
/***************************************************************************|
|                         VEHÍCULOS - "MISCELÁNEOS"                         |
|***************************************************************************/



/* --------------------------------- CAJAS --------------------------------- */

class Land_Box_Science_F: ThingX {
		author = "hozlucas28";
    displayName = "Caja de carga (anticuerpos de Atrox)";
    //editorPreview = "\FCLA_Objects\Miscellaneous\pictures\Land_Box_Science_F.jpg";
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
    hiddenSelectionsTextures[] = {"",	"\A3\missions_f_oldman\Data\img\Decals\science_container_co.paa"};
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



/* --------------------------- ESTACIÓN DE RADAR --------------------------- */

class Radar_Electronics: Items_base_F	{
  author = "hozlucas28";
  displayName = "Estación de radar (electrónica)";
  //editorPreview = "\FCLA_Objects\Miscellaneous\pictures\Radar_Electronics.jpg";
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
  displayName = "Estación de radar (cuerpo)";
  //editorPreview = "\FCLA_Objects\Miscellaneous\pictures\Radar_Panel.jpg";
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
  displayName = "Estación de radar (cuerpo, liso)";
  //editorPreview = "\FCLA_Objects\Miscellaneous\pictures\Radar_Panel_Flat.jpg";
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
  displayName = "Estación de radar (estante)";
  //editorPreview = "\FCLA_Objects\Miscellaneous\pictures\Radar_Rack.jpg";
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
  displayName = "Estación de radar (estante, cuádruple)";
  //editorPreview = "\FCLA_Objects\Miscellaneous\pictures\Radar_Rack_Quad.jpg";
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



/* ------------------------------- BANCADAS -------------------------------- */

class Land_Heli_Transport_04_bench_black_proxy_F: Items_base_F {
  author = "hozlucas28";
  displayName = "Unidad de bancada - Taru (negra)";
  //editorPreview = "\FCLA_Objects\Miscellaneous\pictures\Land_Heli_Transport_04_bench_black_proxy_F.jpg";
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
  //editorPreview = "\FCLA_Objects\Miscellaneous\pictures\Land_Heli_Transport_04_bench_proxy_F.jpg";
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
