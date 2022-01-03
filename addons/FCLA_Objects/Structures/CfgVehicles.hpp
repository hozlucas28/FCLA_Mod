
/***************************************************************************|
|                         VEHÍCULOS - "ESTRUCTURAS"                         |
|***************************************************************************/



/* ------------------------------ DIQUE SECO ------------------------------- */

class DryDock_01_middle: Industry_base_F {
	author = "hozlucas28";
	displayName = "Dique seco (mitad)";
	icon = "iconObject_5x4";
	model = "\A3\Structures_F_Exp\Industrial\Port\DryDock_01_middle_F.p3d";
	//editorPreview = "\FCLA_Objects\Structures\pictures\DryDock_01_middle.jpg";
	vehicleClass = "Structures_Industrial";
	editorCategory = "EdCat_Structures_Tanoa";
	editorSubcategory = "EdSubcat_Seaports";
	mapSize = 48.529999;
	scope = 2;
  scopeCurator = 2;

	ladders[] =	{{"Ladder_1_start",	"Ladder_1_end",	2.5, "Ladder_1_action"}, {"Ladder_2_start",	"Ladder_2_end",	2.5, "Ladder_2_action"}};
	class SimpleObject {
		init = "''";
		eden = 0;
		verticalOffset = 7.1700001;
		verticalOffsetWorld = 0;
		hide[] = {};
		animate[] = {};
	};
};


class DryDock_01_end: Industry_base_F	{
	author = "hozlucas28";
	displayName = "Dique seco (inicio/final)";
	icon = "iconObject_1x1";
	model = "\A3\Structures_F_Exp\Industrial\Port\DryDock_01_end_F.p3d";
	//editorPreview = "\FCLA_Objects\Structures\pictures\DryDock_01_end.jpg";
	vehicleClass = "Structures_Industrial";
	editorCategory = "EdCat_Structures_Tanoa";
	editorSubcategory = "EdSubcat_Seaports";
	mapSize = 67.739998;
	scope = 2;
  scopeCurator = 2;

	ladders[] =	{{"Ladder_1_start",	"Ladder_1_end",	2.5, "Ladder_1_action"}, {"Ladder_2_start",	"Ladder_2_end",	2.5, "Ladder_2_action"}};
	class SimpleObject {
		init = "''";
		eden = 0;
		verticalOffset = 7.1339998;
		verticalOffsetWorld = 0;
		hide[] = {};
		animate[] = {};
	};
};



/* -------------------------------- HANGAR --------------------------------- */

class Airport_02_hangar_right: DryDock_01_end	{
	author = "hozlucas28";
	displayName = "$STR_A3_CfgVehicles_Land_Airport_02_hangar_right_F0";
	icon = "iconObject_2x3";
	model = "\a3\structures_f_exp\infrastructure\airports\airport_02_hangar_right_f.p3d";
	//editorPreview = "\FCLA_Objects\Structures\pictures\Airport_02_hangar_right.jpg";
	actionEnd1 = "OpenDoor_1";
	actionEnd2 = "OpenDoor_2";
	actionBegin1 = "OpenDoor_1";
	actionBegin2 = "OpenDoor_2";
  editorCategory = "EdCat_Structures_Tanoa";
	editorSubcategory = "EdSubcat_Airports";
	mapSize = 52.509998;
	numberOfDoors = 2;
	numberOfWindows = 0;
	scope = 2;
  scopeCurator = 2;

	ladders[] = {{"Ladder_1_start",	"Ladder_1_end",	2.5, "Ladder_1_action"}, {"Ladder_2_start",	"Ladder_2_end",	2.5, "Ladder_2_action"}, {"Ladder_3_start",	"Ladder_3_end",	2.5, "Ladder_3_action"}};
	class HitPoints {};
	class DestructionEffects {};

	class Damage {
		tex[] = {};
		mat[] = {};
	};

	class SimpleObject {
		init = "''";
		eden = 0;
		verticalOffset = 7.7329998;
		verticalOffsetWorld = 0;
		hide[] = {};
		animate[] = {{"door_1_rot", 0}, {"door_1_handle_rot_1", 0}, {"door_1_handle_rot_2", 0}, {"door_1_locked_rot", 0}, {"door_1_handle_locked_rot", 0}, {"door_2_rot", 0}, {"door_2_handle_rot_1", 0}, {"door_2_handle_rot_2", 0}, {"door_2_locked_rot", 0}, {"door_2_handle_locked_rot", 0}};
	};

	class AnimationSources {
		class Door_1_sound_source	{
			sound = "GenericDoorsSound";
			source = "user";
			soundPosition = "Door_1_trigger";
			initPhase = 0;
			animPeriod = 1;
		};

		class Door_1_noSound_source {
			source = "user";
			initPhase = 0;
			animPeriod = 1;
		};

		class Door_1_locked_source {
			source = "user";
			initPhase = 0;
			animPeriod = 0.80000001;
		};

		class Door_2_sound_source {
			sound = "GenericDoorsSound";
			source = "user";
			soundPosition = "Door_2_trigger";
			initPhase = 0;
			animPeriod = 1;
		};

		class Door_2_noSound_source {
			source = "user";
			initPhase = 0;
			animPeriod = 1;
		};

		class Door_2_locked_source {
			source = "user";
			initPhase = 0;
			animPeriod = 0.80000001;
		};
	};

	class UserActions	{
		class OpenDoor_1 {
			position = "Door_1_trigger";
			displayName = "$STR_DN_OUT_O_DOOR";
			actionNamedSel = "Door_1_action";
			displayNameDefault = "<img image = '\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size = '2.5' />";
			condition = "((this animationSourcePhase 'Door_1_sound_source') < 0.5) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 1, 1] call BIS_fnc_Door)";
			priority = 11;
			radius = 1.75;
			aiMaxRange = 5.25;
			onlyForPlayer = 0;
		};

		class CloseDoor_1: OpenDoor_1	{
			condition = "((this animationSourcePhase 'Door_1_sound_source') > =  0.5) && ((this getVariable ['bis_disabled_Door_1', 0]) ! =  1) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 1, 0] call BIS_fnc_Door)";
			displayName = "$STR_DN_OUT_C_DOOR";
			displayNameDefault = "<img image = '\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size = '2.5' />";
			priority = 11;
		};

		class OpenDoor_2 {
			position = "Door_2_trigger";
			condition = "((this animationSourcePhase 'Door_2_sound_source') < 0.5) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 2, 1] call BIS_fnc_Door)";
			displayName = "$STR_DN_OUT_O_DOOR";
			actionNamedSel = "Door_2_action";
			displayNameDefault = "<img image = '\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size = '2.5' />";
			radius = 1.75;
			priority = 11;
			aiMaxRange = 5.25;
			onlyForPlayer = 0;
		};

		class CloseDoor_2: OpenDoor_2	{
			condition = "((this animationSourcePhase 'Door_2_sound_source') > =  0.5) && ((this getVariable ['bis_disabled_Door_2', 0]) ! =  1) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 2, 0] call BIS_fnc_Door)";
			displayName = "$STR_DN_OUT_C_DOOR";
			displayNameDefault = "<img image = '\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size = '2.5' />";
			priority = 11;
		};
	};
};


class Airport_02_hangar_left: DryDock_01_end {
	author = "hozlucas28";
	displayName = "$STR_A3_CfgVehicles_Land_Airport_02_hangar_left_F0";
	icon = "iconObject_2x3";
	model = "\a3\structures_f_exp\infrastructure\airports\airport_02_hangar_left_f.p3d";
	//editorPreview = "\FCLA_Objects\Structures\pictures\Airport_02_hangar_left.jpg";
  actionEnd1 = "OpenDoor_1";
	actionEnd2 = "OpenDoor_2";
	actionEnd3 = "OpenDoor_3";
	actionBegin1 = "OpenDoor_1";
  actionBegin2 = "OpenDoor_2";
  actionBegin3 = "OpenDoor_3";
  editorCategory = "EdCat_Structures_Tanoa";
	editorSubcategory = "EdSubcat_Airports";
	mapSize = 52.509998;
	numberOfDoors = 3;
	numberOfWindows = 0;
	scope = 2;
  scopeCurator = 2;

	ladders[] = {{"Ladder_1_start",	"Ladder_1_end",	2.5, "Ladder_1_action"}, {"Ladder_2_start", "Ladder_2_end",	2.5, "Ladder_2_action"}, {"Ladder_3_start",	"Ladder_3_end",	2.5, "Ladder_3_action"}};
	class HitPoints	{};
	class DestructionEffects {};

	class Damage {
		tex[] = {};
		mat[] = {};
	};

	class SimpleObject {
		init = "''";
		eden = 0;
		verticalOffset = 7.7150002;
		verticalOffsetWorld = 0;
		hide[] = {};
		animate[] = {{"door_1_rot",	0},	{"door_1_handle_rot_1",	0},	{"door_1_handle_rot_2",	0},	{"door_1_locked_rot",	0},	{"door_1_handle_locked_rot", 0}, {"door_2_rot",	0},	{"door_2_handle_rot_1",	0},	{"door_2_handle_rot_2",	0},	{"door_2_locked_rot",	0},	{"door_2_handle_locked_rot", 0}, {"door_3_rot",	0},	{"door_3_handle_rot_1",	0},	{"door_3_handle_rot_2",	0},	{"door_3_locked_rot",	0},	{"door_3_handle_locked_rot",	0}};
	};

	class AnimationSources {
		class Door_1_sound_source {
			sound = "GenericDoorsSound";
			source = "user";
			soundPosition = "Door_1_trigger";
			initPhase = 0;
			animPeriod = 1;
		};

		class Door_1_noSound_source	{
			source = "user";
			initPhase = 0;
			animPeriod = 1;
		};

		class Door_1_locked_source {
			source = "user";
			initPhase = 0;
			animPeriod = 0.80000001;
		};

		class Door_2_sound_source {
			sound = "GenericDoorsSound";
			source = "user";
			soundPosition = "Door_2_trigger";
			initPhase = 0;
			animPeriod = 1;
		};

		class Door_2_noSound_source {
			source = "user";
			initPhase = 0;
			animPeriod = 1;
		};

		class Door_2_locked_source {
			source = "user";
			initPhase = 0;
			animPeriod = 0.80000001;
		};

		class Door_3_sound_source {
			sound = "GenericDoorsSound";
			source = "user";
			soundPosition = "Door_3_trigger";
			initPhase = 0;
			animPeriod = 1;
		};

		class Door_3_noSound_source {
			source = "user";
			initPhase = 0;
			animPeriod = 1;
		};

		class Door_3_locked_source {
			source = "user";
			initPhase = 0;
			animPeriod = 0.80000001;
		};
  };

	class UserActions {
		class OpenDoor_1 {
			position = "Door_1_trigger";
			condition = "((this animationSourcePhase 'Door_1_sound_source') < 0.5) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 1, 1] call BIS_fnc_Door)";
			displayName = "$STR_DN_OUT_O_DOOR";
			displayNameDefault = "<img image = '\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size = '2.5' />";
			actionNamedSel = "Door_1_action";
			radius = 1.75;
			priority = 11;
			aiMaxRange = 5.25;
			onlyForPlayer = 0;
		};

		class CloseDoor_1: OpenDoor_1	{
			condition = "((this animationSourcePhase 'Door_1_sound_source') > =  0.5) && ((this getVariable ['bis_disabled_Door_1', 0]) ! =  1) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 1, 0] call BIS_fnc_Door)";
			displayName = "$STR_DN_OUT_C_DOOR";
			displayNameDefault = "<img image = '\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size = '2.5' />";
			priority = 11;
		};

		class OpenDoor_2 {
			position = "Door_2_trigger";
			condition = "((this animationSourcePhase 'Door_2_sound_source') < 0.5) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 2, 1] call BIS_fnc_Door)";
			displayName = "$STR_DN_OUT_O_DOOR";
			displayNameDefault = "<img image = '\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size = '2.5' />";
			actionNamedSel = "Door_2_action";
			radius = 1.75;
			priority = 11;
			aiMaxRange = 5.25;
			onlyForPlayer = 0;
		};

		class CloseDoor_2: OpenDoor_2 {
			condition = "((this animationSourcePhase 'Door_2_sound_source') > =  0.5) && ((this getVariable ['bis_disabled_Door_2', 0]) ! =  1) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 2, 0] call BIS_fnc_Door)";
			displayName = "$STR_DN_OUT_C_DOOR";
			displayNameDefault = "<img image = '\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size = '2.5' />";
			priority = 11;
		};

		class OpenDoor_3 {
			position = "Door_3_trigger";
			condition = "((this animationSourcePhase 'Door_3_sound_source') < 0.5) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 3, 1] call BIS_fnc_Door)";
			displayName = "$STR_DN_OUT_O_DOOR";
			actionNamedSel = "Door_3_action";
			displayNameDefault = "<img image = '\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size = '2.5' />";
			radius = 1.75;
			priority = 11;
			aiMaxRange = 5.25;
			onlyForPlayer = 0;
		};

		class CloseDoor_3: OpenDoor_3	{
			condition = "((this animationSourcePhase 'Door_3_sound_source') > =  0.5) && ((this getVariable ['bis_disabled_Door_3', 0]) ! =  1) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 3, 0] call BIS_fnc_Door)";
			displayName = "$STR_DN_OUT_C_DOOR";
			displayNameDefault = "<img image = '\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size = '2.5' />";
			priority = 11;
		};
  };
};



/* ---------------------------- HOTEL FANTASMA ----------------------------- */

class GH_MainBuilding_entry: House_F {
	author = "hozlucas28";
	displayName = "Hotel fantasma (entrada)";
	icon = "iconObject_1x1";
	model = "\a3\structures_f_epc\dominants\ghosthotel\gh_mainbuilding_entry_f.p3d";
	//editorPreview = "\FCLA_Objects\Structures\pictures\GH_MainBuilding_entry.jpg";
	nameSound = "obj_house";
	destrType = "DestructNo";
	vehicleClass = "Structures_Commercial";
	selectionDamage = "DamT_1";
	editorCategory = "EdCat_Structures_Altis";
	editorSubcategory = "EdSubcat_Services";
	mapSize = 45.549999;
	scope = 2;
  scopeCurator = 2;

	class SimpleObject {
		init = "''";
		eden = 0;
		verticalOffset = 1.016;
		verticalOffsetWorld = 0;
		hide[] = {};
		animate[] = {};
	};
};


class GH_MainBuilding_middle: House_F	{
	author = "hozlucas28";
	displayName = "Hotel fantasma (centro)";
	icon = "iconObject_1x1";
	model = "\a3\structures_f_epc\dominants\ghosthotel\gh_mainbuilding_middle_f.p3d";
	//editorPreview = "\FCLA_Objects\Structures\pictures\GH_MainBuilding_middle.jpg";
	nameSound = "obj_house";
	destrType = "DestructNo";
	vehicleClass = "Structures_Commercial";
	selectionDamage = "DamT_1";
	editorCategory = "EdCat_Structures_Altis";
	editorSubcategory = "EdSubcat_Services";
	mapSize = 59.48;
	scope = 2;
  scopeCurator = 2;

	class SimpleObject {
		init = "''";
		eden = 0;
		verticalOffset = 0.322;
		verticalOffsetWorld = 0;
		hide[] = {};
		animate[] = {};
	};
};


class GH_MainBuilding_right: House_F {
	author = "hozlucas28";
	displayName = "Hotel fantasma (derecha)";
	icon = "iconObject_1x1";
	model = "\a3\structures_f_epc\dominants\ghosthotel\gh_mainbuilding_right_f.p3d";
	//editorPreview = "\FCLA_Objects\Structures\pictures\GH_MainBuilding_right.jpg";
	nameSound = "obj_house";
	destrType = "DestructNo";
	vehicleClass = "Structures_Commercial";
	selectionDamage = "DamT_1";
	editorCategory = "EdCat_Structures_Altis";
	editorSubcategory = "EdSubcat_Services";
	mapSize = 47.049999;
	scope = 2;
  scopeCurator = 2;

	class SimpleObject {
		init = "''";
		eden = 0;
		verticalOffset = 1.916;
		verticalOffsetWorld = 0;
		hide[] = {};
		animate[] = {};
	};
};


class GH_MainBuilding_left: House_F {
	author = "hozlucas28";
	displayName = "Hotel fantasma (izquierda)";
	icon = "iconObject_1x1";
	model = "\a3\structures_f_epc\dominants\ghosthotel\gh_mainbuilding_left_f.p3d";
	//editorPreview = "\FCLA_Objects\Structures\pictures\GH_MainBuilding_left.jpg";
	nameSound = "obj_house";
	destrType = "DestructNo";
	vehicleClass = "Structures_Commercial";
	selectionDamage = "DamT_1";
	editorCategory = "EdCat_Structures_Altis";
	editorSubcategory = "EdSubcat_Services";
	mapSize = 47.049999;
	scope = 2;
  scopeCurator = 2;

	class SimpleObject {
		init = "''";
		eden = 0;
		verticalOffset = 1.916;
		verticalOffsetWorld = 0;
		hide[] = {};
		animate[] = {};
	};
};



/* -------------------------------- ESTADIO -------------------------------- */

class Stadium_p1: SportsGrounds_base_F {
  author = "hozlucas28";
  displayName = "Estadio (parte 1)";
  icon = "iconObject_1x1";
  model = "\a3\structures_f_epc\dominants\stadium\stadium_p1_f.p3d";
  //editorPreview = "\FCLA_Objects\Structures\pictures\Stadium_p1.jpg";
  destrType = "DestructNo";
  vehicleClass = "Structures_Sports";
  editorCategory = "EdCat_Structures_Altis";
  editorSubcategory = "EdSubcat_Sports";
  mapSize = 35.700001;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = 0.40099999;
  	verticalOffsetWorld = 0;
  };
};


class Stadium_p2: SportsGrounds_base_F {
  author = "hozlucas28";
  displayName = "Estadio (parte 2)";
  icon = "iconObject_1x1";
  model = "\a3\structures_f_epc\dominants\stadium\stadium_p2_f.p3d";
  //editorPreview = "\FCLA_Objects\Structures\pictures\Stadium_p2.jpg";
  destrType = "DestructNo";
  vehicleClass = "Structures_Sports";
  editorCategory = "EdCat_Structures_Altis";
  editorSubcategory = "EdSubcat_Sports";
  mapSize = 45.560001;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = -4.776;
  	verticalOffsetWorld = 0;
  };
};


class Stadium_p3: SportsGrounds_base_F {
  author = "hozlucas28";
  displayName = "Estadio (parte 3)";
  icon = "iconObject_1x1";
  model = "\a3\structures_f_epc\dominants\stadium\stadium_p3_f.p3d";
  //editorPreview = "\FCLA_Objects\Structures\pictures\Stadium_p3.jpg";
  destrType = "DestructNo";
  vehicleClass = "Structures_Sports";
  editorCategory = "EdCat_Structures_Altis";
  editorSubcategory = "EdSubcat_Sports";
  mapSize = 46.290001;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = -2.487;
  	verticalOffsetWorld = 0;
  };
};


class Stadium_p4: SportsGrounds_base_F {
  author = "hozlucas28";
  displayName = "Estadio (parte 4)";
  icon = "iconObject_1x1";
  model = "\a3\structures_f_epc\dominants\stadium\stadium_p4_f.p3d";
  //editorPreview = "\FCLA_Objects\Structures\pictures\Stadium_p4.jpg";
  destrType = "DestructNo";
  vehicleClass = "Structures_Sports";
  editorCategory = "EdCat_Structures_Altis";
  editorSubcategory = "EdSubcat_Sports";
  mapSize = 43.970001;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = 3.503;
  	verticalOffsetWorld = 0;
  };
};


class Stadium_p5: SportsGrounds_base_F {
  author = "hozlucas28";
  displayName = "Estadio (parte 5)";
  icon = "iconObject_1x1";
  model = "\a3\structures_f_epc\dominants\stadium\stadium_p5_f.p3d";
  //editorPreview = "\FCLA_Objects\Structures\pictures\Stadium_p5.jpg";
  destrType = "DestructNo";
  vehicleClass = "Structures_Sports";
  editorCategory = "EdCat_Structures_Altis";
  editorSubcategory = "EdSubcat_Sports";
  mapSize = 43.700001;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = 3.5190001;
  	verticalOffsetWorld = 0;
  };
};


class Stadium_p6: SportsGrounds_base_F {
  author = "hozlucas28";
  displayName = "Estadio (parte 6)";
  icon = "iconObject_1x1";
  model = "\a3\structures_f_epc\dominants\stadium\stadium_p6_f.p3d";
  //editorPreview = "\FCLA_Objects\Structures\pictures\Stadium_p6.jpg";
  destrType = "DestructNo";
  vehicleClass = "Structures_Sports";
  editorCategory = "EdCat_Structures_Altis";
  editorSubcategory = "EdSubcat_Sports";
  mapSize = 46.25;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = -2.3929999;
  	verticalOffsetWorld = 0;
  };
};


class Stadium_p7: SportsGrounds_base_F {
  author = "hozlucas28";
  displayName = "Estadio (parte 7)";
  icon = "iconObject_1x1";
  model = "\a3\structures_f_epc\dominants\stadium\stadium_p7_f.p3d";
  //editorPreview = "\FCLA_Objects\Structures\pictures\Stadium_p7.jpg";
  destrType = "DestructNo";
  vehicleClass = "Structures_Sports";
  editorCategory = "EdCat_Structures_Altis";
  editorSubcategory = "EdSubcat_Sports";
  mapSize = 47.509998;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = -2.201;
  	verticalOffsetWorld = 0;
  };
};


class Stadium_p8: SportsGrounds_base_F {
  author = "hozlucas28";
  displayName = "Estadio (parte 8)";
  icon = "iconObject_1x1";
  model = "\a3\structures_f_epc\dominants\stadium\stadium_p8_f.p3d";
  //editorPreview = "\FCLA_Objects\Structures\pictures\Stadium_p8.jpg";
  destrType = "DestructNo";
  vehicleClass = "Structures_Sports";
  editorCategory = "EdCat_Structures_Altis";
  editorSubcategory = "EdSubcat_Sports";
  mapSize = 37.369999;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = 2.175;
  	verticalOffsetWorld = 0;
  };
};


class Stadium_p9: SportsGrounds_base_F {
  author = "hozlucas28";
  displayName = "Estadio (parte 9)";
  icon = "iconObject_1x1";
  model = "\a3\structures_f_epc\dominants\stadium\stadium_p9_f.p3d";
  //editorPreview = "\FCLA_Objects\Structures\pictures\Stadium_p9.jpg";
  destrType = "DestructNo";
  vehicleClass = "Structures_Sports";
  editorCategory = "EdCat_Structures_Altis";
  editorSubcategory = "EdSubcat_Sports";
  mapSize = 13.98;
  scope = 2;
  scopeCurator = 2;

  ladders[] = {{"Ladder_1_start", "Ladder_1_end", 2.5, "Ladder_1_action"}};
  class SimpleObject {
    init = "''";
  	eden = 0;
  	hide[] = {};
    animate[] = {};
  	verticalOffset = 7.52;
  	verticalOffsetWorld = 0;
  };
};
