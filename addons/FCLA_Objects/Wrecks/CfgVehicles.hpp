
/***************************************************************************|
|                           VEHÍCULOS - "RESTOS"                            |
|***************************************************************************/



/* ---------------------------- MOTOR PRINCIPAL ---------------------------- */

class Land_Heli_Transport_02_Main_Rotor_center_F: Items_base_F {
  author = "hozlucas28";
  displayName = "Motor principal (CH-49 Mohawk)";
  icon = "iconObject_1x1";
  model = "\a3\air_f_beta\heli_transport_02\main_rotor_center_f.p3d";
  //editorPreview = "\FCLA_Objects\Wrecks\pictures\Land_Heli_Transport_02_Main_Rotor_center_F.jpg";
  editorCategory = "EdCat_Wrecks";
  editorSubcategory = "EdSubcat_Helicopters";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = 1.326;
  	verticalOffsetWorld = 0.011;
  };
};



/* ------------------------------- ASIENTOS -------------------------------- */

class Land_Ejection_Seat_Plane_Fighter_0304_F: Items_base_F	{
	author = "hozlucas28";
	displayName = "Asiento eyectable (A-143 Buzzard / A-149 Gryphon)";
	icon = "iconObject_1x2";
	model = "\a3\air_f_jets\plane_fighter_04\proxies\ejection_seat_04_f.p3d";
	//editorPreview = "\FCLA_Objects\Wrecks\pictures\Land_Ejection_Seat_Plane_Fighter_0304_F.jpg";
	editorCategory = "EdCat_Wrecks";
  editorSubcategory = "EdSubcat_Planes";
  scope = 2;
  scopeCurator = 2;

	class SimpleObject {
		init = "";
		eden = 1;
		hide[] = {};
		animate[] = {};
		verticalOffset = 0.0020000001;
		verticalOffsetWorld = 0;
	};
};


class Land_Ejection_Seat_Plane_FighterCAS_0202_F: Items_base_F {
	author = "hozlucas28";
	displayName = "Asiento eyectable (To-199 Neophron / To-201 Shikra)";
	icon = "iconObject_1x2";
	model = "\a3\air_f_jets\plane_fighter_02\proxies\ejection_seat_02_f.p3d";
	//editorPreview = "\FCLA_Objects\Wrecks\pictures\Land_Ejection_Seat_Plane_FighterCAS_0202_F.jpg";
	editorCategory = "EdCat_Wrecks";
  editorSubcategory = "EdSubcat_Planes";
  scope = 2;
  scopeCurator = 2;

	class SimpleObject {
		init = "";
		eden = 1;
		hide[] = {};
		animate[] = {};
		verticalOffset = 0.0020000001;
		verticalOffsetWorld = 0;
	};
};


class Land_Ejection_Seat_Plane_cas_01_F: Items_base_F	{
	author = "hozlucas28";
	displayName = "Asiento eyectable (A-164 Wipeout)";
	icon = "iconObject_1x2";
	model = "\a3\air_f_epc\plane_cas_01\ejection_seat_cas_01_f.p3d";
	//editorPreview = "\FCLA_Objects\Wrecks\pictures\Land_Ejection_Seat_Plane_cas_01_F.jpg";
	editorCategory = "EdCat_Wrecks";
  editorSubcategory = "EdSubcat_Planes";
  scope = 2;
  scopeCurator = 2;

	class SimpleObject {
		init = "";
		eden = 1;
		hide[] = {};
		animate[] = {};
		verticalOffset = 0.0020000001;
		verticalOffsetWorld = 0;
	};
};


class Land_Ejection_Seat_Plane_Fighter_01_F: Items_base_F	{
	author = "hozlucas28";
	displayName = "Asiento eyectable (F/A-181 Black Wasp II)";
	icon = "iconObject_1x2";
	model = "\a3\air_f_jets\plane_fighter_01\proxies\ejection_seat_01_f.p3d";
	//editorPreview = "\FCLA_Objects\Wrecks\pictures\Land_Ejection_Seat_Plane_Fighter_01_F.jpg";
	editorCategory = "EdCat_Wrecks";
  editorSubcategory = "EdSubcat_Planes";
  scope = 2;
  scopeCurator = 2;

	class SimpleObject {
		init = "";
		eden = 1;
		hide[] = {};
		animate[] = {};
		verticalOffset = 0.0020000001;
		verticalOffsetWorld = 0;
	};
};



/* ------------------------------- CUBIERTAS ------------------------------- */

class Land_Plane_Fighter_03_Canopy_F: Plane_Canopy_Base_F {
  author = "hozlucas28";
  displayName = "Cubierta exterior (A-143 Buzzard)";
  icon = "iconObject_1x2";
  model = "\a3\air_f_gamma\plane_fighter_03\plane_fighter_03_canopy_f.p3d";
  //editorPreview = "\FCLA_Objects\Wrecks\pictures\Land_Plane_Fighter_03_Canopy_F.jpg";
  editorCategory = "EdCat_Wrecks";
  editorSubcategory = "EdSubcat_Planes";
  mapSize = 1.42;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = 0.35600001;
  	verticalOffsetWorld = 0;
  };
};


class Land_Plane_Fighter_04_Canopy_F: Plane_Canopy_Base_F {
  author = "hozlucas28";
  displayName = "Cubierta exterior (A-149 Gryphon)";
  icon = "iconObject_1x2";
  model = "\a3\air_f_jets\plane_fighter_04\plane_fighter_04_canopy_f.p3d";
  //editorPreview = "\FCLA_Objects\Wrecks\pictures\Land_Plane_Fighter_04_Canopy_F.jpg";
  editorCategory = "EdCat_Wrecks";
  editorSubcategory = "EdSubcat_Planes";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = 0.28600001;
  	verticalOffsetWorld = 0;
  };
};


class Land_Plane_cas_01_Canopy_F: Plane_Canopy_Base_F {
  author = "hozlucas28";
  displayName = "Cubierta exterior (A-164 Wipeout)";
  icon = "iconObject_1x2";
  model = "\a3\air_f_epc\plane_cas_01\plane_cas_01_canopy_f.p3d";
  //editorPreview = "\FCLA_Objects\Wrecks\pictures\Land_Plane_cas_01_Canopy_F.jpg";
  editorCategory = "EdCat_Wrecks";
  editorSubcategory = "EdSubcat_Planes";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = 0.28600001;
  	verticalOffsetWorld = 0;
  };
};


class Land_Plane_Fighter_01_Canopy_F: Plane_Canopy_Base_F {
  author = "hozlucas28";
  displayName = "Cubierta exterior (F/A-181 Black Wasp II)";
  icon = "iconObject_1x2";
  model = "\a3\air_f_jets\plane_fighter_01\plane_fighter_01_canopy_f.p3d";
  //editorPreview = "\FCLA_Objects\Wrecks\pictures\Land_Plane_Fighter_01_Canopy_F.jpg";
  editorCategory = "EdCat_Wrecks";
  editorSubcategory = "EdSubcat_Planes";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
    verticalOffset = 0.28600001;
  	verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};


class Land_Plane_cas_02_Canopy_F: Plane_Canopy_Base_F	{
  author = "hozlucas28";
  displayName = "Cubierta exterior (To-199 Neophron)";
  icon = "iconObject_1x2";
  model = "\a3\air_f_epc\plane_cas_02\plane_cas_02_canopy_f.p3d";
  //editorPreview = "\FCLA_Objects\Wrecks\pictures\Land_Plane_cas_02_Canopy_F.jpg";
  editorCategory = "EdCat_Wrecks";
  editorSubcategory = "EdSubcat_Planes";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
    verticalOffset = 0.28600001;
  	verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};


class Land_Plane_Fighter_02_Canopy_F: Plane_Canopy_Base_F {
  author = "hozlucas28";
  displayName = "Cubierta exterior (To-201 Shikra)";
  icon = "iconObject_1x2";
  model = "\a3\air_f_jets\plane_fighter_02\plane_fighter_02_canopy_f.p3d";
  //editorPreview = "\FCLA_Objects\Wrecks\pictures\Land_Plane_Fighter_02_Canopy_F.jpg";
  editorCategory = "EdCat_Wrecks";
  editorSubcategory = "EdSubcat_Planes";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
    verticalOffset = 0.28600001;
  	verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};
