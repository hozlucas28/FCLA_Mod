
/* ----------------------------------------------------------------------------
Dialogs: "Camera mode"
""
Content:
    Classnames del dialogo 'modo cámara'.
---------------------------------------------------------------------------- */

class FCLA_Camera_Mode_DialogBase_Static {
	type = 0;
	idc = -1;
	style = 512;
	shadow = 2;
	colorBackground[] = {0, 0, 0, 0.4};
	colorText[] = {1, 1, 1, 1};
	font = "PuristaMedium";
	sizeEx = 0.02;
	text = "";
};

class FCLA_Camera_Mode_DialogBase_Map {
	access = 0;
	type = 101;
	style = 48;
	x = 0.0;
	y = 0.0;
	w = 0.0;
	h = 0.0;
	colorBackground[] = {1, 1, 1, 0.6};
	colorOutside[] = {1, 0, 0, 1};
	colorText[] = {0, 0, 0, 1};
	font = "TahomaB";
	sizeEx = 0.040000;
	colorSea[] = {0.467000, 0.631000, 0.851000, 0.500000};
	colorForest[] = {0.624000, 0.780000, 0.388000, 0.500000};
	colorForestBorder[] = {0.000000, 0.000000, 0.000000, 0.000000};
	colorRocks[] = {0.000000, 0.000000, 0.000000, 0.300000};
	colorRocksBorder[] = {0.000000, 0.000000, 0.000000, 0.000000};
	colorLevels[] = {0.286000, 0.177000, 0.094000, 0.500000};
	colorMainCountlines[] = {0.572000, 0.354000, 0.188000, 0.500000};
	colorCountlines[] = {0.572000, 0.354000, 0.188000, 0.250000};
	colorMainCountlinesWater[] = {0.491000, 0.577000, 0.702000, 0.600000};
	colorCountlinesWater[] = {0.491000, 0.577000, 0.702000, 0.300000};
	colorPowerLines[] = {0.100000, 0.100000, 0.100000, 1.000000};
	colorRailWay[] = {0.800000, 0.200000, 0.000000, 1.000000};
	colorNames[] = {0.100000, 0.100000, 0.100000, 0.900000};
	colorInactive[] = {1.000000, 1.000000, 1.000000, 0.500000};
	colorTracks[] = {0.840000, 0.760000, 0.650000, 0.150000};
	colorTracksFill[] = {0.840000, 0.760000, 0.650000, 1.000000};
	colorRoads[] = {0.700000, 0.700000, 0.700000, 1.000000};
	colorRoadsFill[] = {1.000000, 1.000000, 1.000000, 1.000000};
	colorMainRoads[] = {0.900000, 0.500000, 0.300000, 1.000000};
	colorMainRoadsFill[] = {1.000000, 0.600000, 0.400000, 1.000000};
	colorGrid[] = {0.100000, 0.100000, 0.100000, 0.600000};
	colorGridMap[] = {0.100000, 0.100000, 0.100000, 0.600000};
	fontLabel = "TahomaB";
	sizeExLabel = 0.040000;
	fontGrid = "TahomaB";
	sizeExGrid = 0.040000;
	fontUnits = "TahomaB";
	sizeExUnits = 0.040000;
	fontNames = "TahomaB";
	sizeExNames = 0.040000;
	fontInfo = "TahomaB";
	sizeExInfo = 0.040000;
	fontLevel = "TahomaB";
	sizeExLevel = 0.040000;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	stickX[] = {0.200000, {"Gamma", 1, 1.500000}};
	stickY[] = {0.200000, {"Gamma", 1, 1.500000}};
	ptsPerSquareSea = 6;
	ptsPerSquareTxt = 8;
	ptsPerSquareCLn = 8;
	ptsPerSquareExp = 8;
	ptsPerSquareCost = 8;
	ptsPerSquareFor = "4.0f";
	ptsPerSquareForEdge = "10.0f";
	ptsPerSquareRoad = 2;
	ptsPerSquareObj = 10;
	showCountourInterval = "false";
	maxSatelliteAlpha = 0.660000;
	alphaFadeStartScale = 0.050000;
	alphaFadeEndScale = 0.150000;
	moveOnEdges = 1;
	shadow = 0;
	scaleMin = 0.001;
	scaleMax = 1;
	scaleDefault = 0.16;

	class LineMarker {
		lineWidthThin = 0.008;
		lineWidthThick = 0.014;
		lineDistanceMin = 3e-005;
		lineLengthMin = 5;
	};

	class Legend {
		x = 0.700000;
		y = 0.850000;
		w = 0.250000;
		h = 0.100000;
		font = "TahomaB";
		sizeEx = 0.040000;
		colorBackground[] = {1, 1, 1, 1};
		color[] = {0, 0, 0, 1};
	};

	class ActiveMarker {
		color[] = {0.300000, 0.100000, 0.900000, 1};
		size = 50;
	};

	class Command {
		color[] = {1, 1, 1, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		size = 18;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};

	class Task {
		colorCreated[] = {1, 1, 1, 1};
		colorCanceled[] = {0.7, 0.7, 0.7, 1};
		colorDone[] = {0.7, 1, 0.3, 1};
		colorFailed[] = {1, 0.3, 0.2, 1};
		color[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])", "(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])", "(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])", "(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
		icon = "\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa";
		iconCreated = "\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa";
		iconCanceled = "\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa";
		iconDone = "\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa";
		iconFailed = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa";
		size = 27;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};

	class CustomMark {
		color[] = {0, 0, 0, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\custommark_ca.paa";
		size = 24;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};

	class Tree {
		color[] = {0.45, 0.64, 0.33, 0.4};
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		size = 12;
		importance = "0.9 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};

	class SmallTree {
		color[] = {0.45, 0.64, 0.33, 0.4};
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		size = 12;
		importance = "0.6 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};

	class Bush {
		color[] = {0.45, 0.64, 0.33, 0.4};
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		size = "14/2";
		importance = "0.2 * 14 * 0.05 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};

	class Church {
		color[] = {1, 1, 1, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\church_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};

	class Chapel {
		color[] = {0, 0, 0, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\Chapel_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};

	class Cross {
		color[] = {0, 0, 0, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};

	class Rock {
		color[] = {0.1, 0.1, 0.1, 0.8};
		icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
		size = 12;
		importance = "0.5 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};

	class Bunker {
		color[] = {0, 0, 0, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		size = 14;
		importance = "1.5 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};

	class Fortress {
		color[] = {0, 0, 0, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};

	class Fountain {
		color[] = {0, 0, 0, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
		size = 11;
		importance = "1 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};

	class ViewTower {
		color[] = {0, 0, 0, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};

	class Lighthouse {
		color[] = {1, 1, 1, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\lighthouse_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};

	class Quay {
		color[] = {1, 1, 1, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\quay_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};

	class Fuelstation {
		color[] = {1, 1, 1, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\fuelstation_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};

	class Hospital {
		color[] = {1, 1, 1, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\hospital_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};

	class BusStop {
		color[] = {1, 1, 1, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\busstop_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};

	class Transmitter {
		color[] = {1, 1, 1, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\transmitter_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};

	class Stack {
		color[] = {0, 0, 0, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
		size = 20;
		importance = "2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};

	class Ruin {
		color[] = {0, 0, 0, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
		size = 16;
		importance = "1.2 * 16 * 0.05";
		coefMin = 1;
		coefMax = 4;
	};

	class Tourism {
		color[] = {0, 0, 0, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
		size = 16;
		importance = "1 * 16 * 0.05";
		coefMin = 0.7;
		coefMax = 4;
	};

	class Watertower {
		color[] = {1, 1, 1, 1};
		icon = "\A3\ui_f\data\map\mapcontrol\watertower_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};

	class Waypoint {
		color[] = {0, 0, 0, 1};
		size = 24;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
		icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
	};

	class WaypointCompleted {
		color[] = {0, 0, 0, 1};
		size = 24;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
		icon = "\A3\ui_f\data\map\mapcontrol\waypointCompleted_ca.paa";
	};

	class power {
		icon = "\A3\ui_f\data\map\mapcontrol\power_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
		color[] = {1, 1, 1, 1};
	};

	class powersolar {
		icon = "\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
		color[] = {1, 1, 1, 1};
	};

	class powerwave {
		icon = "\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
		color[] = {1, 1, 1, 1};
	};

	class powerwind {
		icon = "\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
		color[] = {1, 1, 1, 1};
	};

	class shipwreck {
		icon = "\A3\ui_f\data\map\mapcontrol\shipwreck_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
		color[] = {1, 1, 1, 1};
	};
};

class FCLA_Camera_Mode_DialogBase_ListBox {
	access = 0;
	type = 5;
	style = 0;
	w = LISTWIDTH;
	h = LISTHEIGHT;
	font = "PuristaMedium";
	shadow = 2;
	sizeEx = 0.030;
	colorBackground[] = {0.0, 0.0, 0.0, 0.0};
	colorText[] = {0.8784, 0.8471, 0.651, 1.0};
	colorScrollbar[] = {0.0, 0, 0, 1.0};
	colorSelect[] = {1.0, 0.95, 0.6, 1.0};
	colorSelect2[] = {0.0, 0.0, 0, 0.0};
	colorSelectBackground[] = {0.0, 0.0, 0.0, 0.6};
	colorSelectBackground2[] = {0.0, 0.0, 0.0, 0.6};
	colorDisabled[] = {1, 1, 1, 0.3};
	period = 0;
	rowHeight = 0;
	maxHistoryDelay = 1.000000;
	soundSelect[] = {"", 0.100000, 1};
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";

	class ScrollBar	{
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\A3\ui_f\data\ui_scrollbar_thumb_ca.paa";
		arrowEmpty = "\A3\ui_f\data\ui_arrow_top_ca.paa";
		arrowFull = "\A3\ui_f\data\ui_arrow_top_active_ca.paa";
		border = "\A3\ui_f\data\ui_border_scroll_ca.paa";
	};

	class ListScrollBar	{
		width = 0;
		height = 0;
		scrollSpeed = 0.01;
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		color[] = {1, 1, 1, 1};
	};
};

class FCLA_Camera_Mode_DialogBase_Button {
	access = 0;
	type = 1;
	style = 2;
	x = 0;
	y = 0;
	w = BUTTONWIDTH;
	h = BUTTONHEIGHT;
	shadow = 2;
	text = "";
	font = "PuristaMedium";
	sizeEx = BUTTONFONTSIZE;
	colorText[] = {0.874, 0.843, 0.647, 1.0};
	colorDisabled[] = {0, 0, 0, 0};
	colorBackground[] = {0.278, 0.223, 0.133, 0.7};
	colorBackgroundDisabled[] = {0, 0, 0, 0};
	colorBackgroundActive[] = {0.482, 0.396, 0.270, 0.8};
	offsetX = 0.0;
	offsetY = 0.0;
	offsetPressedX = 0.001;
	offsetPressedY = 0.001;
	colorFocused[] = {0.482, 0.396, 0.270, 0.8};
	colorShadow[] = {0, 0, 0, 0};
	colorBorder[] = {0, 0, 0, 0};
	borderSize = 0.0;
	soundEnter[] = {"", 0.100000, 1};
	soundPush[] = {"", 0.100000, 1};
	soundClick[] = {"", 0.100000, 1};
	soundEscape[] = {"", 0.100000, 1};
};

class FCLA_Camera_Mode_DialogBase_StructuredText {
	type = 13;
	style = 0;
	x = 0;
	y = 0;
	h = TEXTHEIGHT;
	w = 0.1;
	text = "";
	size = 0.035;
	color[] = {0.8, 0.8, 0.8, 1};
	colorText[] = {0.4, 0.6745, 0.2784, 1};
	colorActive[] = {0.95, 0.95, 0.95, 1};
	colorBackground[] = {0.360, 0.345, 0.270, 0.850};
	shadow = 2;

	class Attributes {
		font = "PuristaMedium";
		color = "#e0d8a0";
		align = "left";
		valign = "middle";
		shadow = 2;
	};
};

class FCLA_Camera_Mode_DialogBase_Edit {
	type = 2;
	style = 0;
	font = "PuristaMedium";
	x = 0.0;
	y = 0.0;
	w = 0.2;
	h = EDITHEIGHT;
	sizeEx = 0.026;
	shadow = 2;
	colorText[] = {1.0, 1.0, 1.0, 1.0};
	colorSelection[] = {0.2, 0.6, 1, 0.4};
	autocomplete = false;
	text = "";
};

class FCLA_Camera_Mode_DialogBase_EditMulti {
	idc = -1;
	type = 2;
	style = 16;
	shadow = 2;
	x = 0;
	y = 0;
	w = LISTWIDTH;
	h = LISTHEIGHT;
	sizeEx = 0.026;
	font = "PuristaMedium";
	text = "";
	colorText[] = {0.8784, 0.8471, 0.651, 1.0};
	colorSelection[] = {0.2, 0.6, 1, 0.4};
	colorDisabled[] = {0, 0, 0, 0.3};
	autocomplete = 0;
	htmlControl = 1;
};

class FCLA_Camera_Mode_DialogBase_Combo {
	type = 4;
	style = 0x00;
	x = 0;
	y = 0;
	w = COMBOWIDTH;
	h = COMBOHEIGHT;
	shadow = 2;
	colorSelect[] = {0.8784, 0.8471, 0.651, 1.0};
	colorText[] = {0.8784, 0.8471, 0.651, 1.0};
	colorBackground[] = {0, 0, 0, 0.4};
	colorSelectBackground[] = {0.0, 0.0, 0.0, 0.6};
	colorScrollbar[] = {0.023529, 0, 0.0313725, 1};
	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
	wholeHeight = COMBOWHOLEHEIGHT;
	color[] = {0.8784, 0.8471, 0.651, 0.6};
	colorActive[] = {0, 0, 0, 1};
	colorDisabled[] = {0, 0, 0, 0.3};
	font = "PuristaMedium";
	sizeEx = 0.035;
	soundSelect[] = {"", 0.1, 1};
	soundExpand[] = {"", 0.1 ,1};
	soundCollapse[] = {"", 0.1, 1};
	maxHistoryDelay = 10;

	class ScrollBar {
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\A3\ui_f\data\ui_scrollbar_thumb_ca.paa";
		arrowEmpty = "\A3\ui_f\data\ui_arrow_top_ca.paa";
		arrowFull = "\A3\ui_f\data\ui_arrow_top_active_ca.paa";
		border = "\A3\ui_f\data\ui_border_scroll_ca.paa";
	};

	class ComboScrollBar {
		width = 0;
		height = 0;
		scrollSpeed = 0.01;
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		color[] = {1, 1, 1, 1};
	};
};

class FCLA_Camera_Mode_DialogBase_RscStructuredText {
	type = 13;
	style = 0;
	x = 0.0;
	y = 0.0;
	w = 1.0;
	h = 1.0;
	colorBackground[] = { 0.0, 0.0, 0.0, 0.0 };
	size = 0.02;
	shadow = 2;
	text = "";

	class Attributes {
		font = "PuristaMedium";
		color = "#FFFFFF";
		shadowColor = "#000000";
		align = "left";
		valign = "middle";
	};
};

class FCLA_Camera_Mode_Dialog {
	idd = 5100;
	movingEnable = 0;

	class controls {
		#ifdef PARAMTRACK
			class StructuredText_Diag : FCLA_Camera_Mode_DialogBase_RscStructuredText {
				idc = 25;
				x = 0.0 - ((SafeZoneW-1.0)/2) + OUTFRAME;
				y = 0.0 - ((SafeZoneH-1.0)/2) + OUTFRAME + EDITHEIGHT + SPACE;
				w = SafeZoneW - OUTFRAME*2;
				h = (SafeZoneH) - (OUTFRAME*2 + EDITHEIGHT + SPACE );
			};

			class Edit_Command1 : FCLA_Camera_Mode_DialogBase_Edit {
				idc = 55;
				x = 0.0 - ((SafeZoneW-1.0)/2) + OUTFRAME + (EDITWIDTH + SPACE)*0;
				y = 0.0 - ((SafeZoneH-1.0)/2) + OUTFRAME;
				w = EDITWIDTH;
				text = "";
				onMouseMoving = "FCLA_Camera_Mode_OC = _this; FCLA_Camera_Mode_F = _this select 3";
				onKeyUp = "if (_this select 1 in [28,156]) then {call compile ctrlText 55}";
				onDestroy = "FCLA_Camera_Mode_Com1 = (ctrlText 55)";
			};

			class Edit_Command2 : FCLA_Camera_Mode_DialogBase_Edit {
				idc = 56;
				x = 0.0 - ((SafeZoneW-1.0)/2) + OUTFRAME + (EDITWIDTH + SPACE)*1;
				y = 0.0 - ((SafeZoneH-1.0)/2) + OUTFRAME;
				w = EDITWIDTH;
				text = "";
				onMouseMoving = "FCLA_Camera_Mode_OC = _this; FCLA_Camera_Mode_F = _this select 3";
				onKeyUp = "if (_this select 1 in [28,156]) then {call compile ctrlText 56}";
				onDestroy = "FCLA_Camera_Mode_Com2 = (ctrlText 56)";
			};

			class Edit_Command3 : FCLA_Camera_Mode_DialogBase_Edit {
				idc = 57;
				x = 0.0 - ((SafeZoneW-1.0)/2) + OUTFRAME + (EDITWIDTH + SPACE)*2;
				y = 0.0 - ((SafeZoneH-1.0)/2) + OUTFRAME;
				w = EDITWIDTH;
				text = "";
				onMouseMoving = "FCLA_Camera_Mode_OC = _this; FCLA_Camera_Mode_F = _this select 3";
				onKeyUp = "if (_this select 1 in [28,156]) then {call compile ctrlText 57}";
				onDestroy = "FCLA_Camera_Mode_Com3 = (ctrlText 57)";
			};

			class Edit_Command4 : FCLA_Camera_Mode_DialogBase_Edit {
				idc = 58;
				x = 0.0 - ((SafeZoneW-1.0)/2) + OUTFRAME + (EDITWIDTH + SPACE)*3;
				y = 0.0 - ((SafeZoneH-1.0)/2) + OUTFRAME;
				w = EDITWIDTH;
				text = "";
				onMouseMoving = "FCLA_Camera_Mode_OC = _this; FCLA_Camera_Mode_F = _this select 3";
				onKeyUp = "if (_this select 1 in [28,156]) then {call compile ctrlText 58}";
				onDestroy = "FCLA_Camera_Mode_Com4 = (ctrlText 58)";
			};
		#endif

		class Background_List : FCLA_Camera_Mode_DialogBase_Static {
			idc = 0;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - LISTWIDTH;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME - LISTHEIGHT;
			w = LISTWIDTH;
			h = LISTHEIGHT;
		};

		class List : FCLA_Camera_Mode_DialogBase_ListBox {
			idc = 50;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - LISTWIDTH;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME - LISTHEIGHT;
			onMouseMoving =  "FCLA_Camera_Mode_OCL = _this";
			onKeyDown = "FCLA_Camera_Mode_KeyDown_List = _this";
			onLBSelChanged = "FCLA_Camera_Mode_LSC = _this";
		};

		class Combo_ListViewMode : FCLA_Camera_Mode_DialogBase_Combo {
			idc = 2;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - BUTTONWIDTH - SPACE - BUTTONWIDTH;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME - LISTHEIGHT - SPACE - BUTTONHEIGHT - SPACE - BUTTONHEIGHT;
			onMouseMoving = "FCLA_Camera_Mode_OC = _this; FCLA_Camera_Mode_F = _this select 3";
			onLBSelChanged = "FCLA_Camera_Mode_BId = ""vc""; FCLA_Camera_Mode_B = true";
		};

		class Button_ListTrigger : FCLA_Camera_Mode_DialogBase_Button {
			idc = 3;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - BUTTONWIDTH - SPACE - BUTTONWIDTH - SPACE - BUTTONWIDTH;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME - LISTHEIGHT - SPACE - BUTTONHEIGHT - SPACE - BUTTONHEIGHT;
			text = "Proyectil";
			toolTip = "Alternar modo de seguimiento	de proyectil (misil guiado, bomba designada, mortero, cañon y ejección de la unidad).";
			onMouseMoving =  "FCLA_Camera_Mode_OC = _this";
			onButtonClick = "FCLA_Camera_Mode_BId = ""trg""; FCLA_Camera_Mode_B = true";
		};

		class Button_ListFollow : FCLA_Camera_Mode_DialogBase_Button {
			idc = 4;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - BUTTONWIDTH - SPACE - BUTTONWIDTH - SPACE - BUTTONWIDTH;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME - LISTHEIGHT - SPACE - BUTTONHEIGHT;
			text = "Seguir";
			toolTip = "Alternar modo de seguimiento.";
			onMouseMoving =  "FCLA_Camera_Mode_OC = _this";
			onButtonClick = "FCLA_Camera_Mode_BId = ""fo""; FCLA_Camera_Mode_B = true";
		};

		class Button_ListBehind : FCLA_Camera_Mode_DialogBase_Button {
			idc = 5;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - BUTTONWIDTH - SPACE - BUTTONWIDTH;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME - LISTHEIGHT - SPACE - BUTTONHEIGHT;
			text = "Trasera";
			toolTip = "Alternar vista trasera del objetivo.";
			onMouseMoving =  "FCLA_Camera_Mode_OC = _this";
			onButtonClick = "FCLA_Camera_Mode_BId = ""be""; FCLA_Camera_Mode_B = true";
		};

		class Button_ListFocus : FCLA_Camera_Mode_DialogBase_Button {
			idc = 6;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - BUTTONWIDTH;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME - LISTHEIGHT - SPACE - BUTTONHEIGHT;
			text = "Enfoque";
			toolTip = "Alternar enfoque.";
			onMouseMoving =  "FCLA_Camera_Mode_OC = _this";
			onButtonClick = "FCLA_Camera_Mode_BId = ""fc""; FCLA_Camera_Mode_B = true";
		};

		class Button_ListTimeInc : FCLA_Camera_Mode_DialogBase_Button {
			idc = 8;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - BUTTONWIDTH2 - SPACE - BUTTONWIDTH2;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME - LISTHEIGHT - SPACE - BUTTONHEIGHT - SPACE - TEXTHEIGHT - SPACE - BUTTONHEIGHT;
			h = BUTTONHEIGHT/2;
			w = BUTTONWIDTH2;
			text = "+";
			toolTip = "Acelerar tiempo. Inservible en multijugador.";
			onMouseMoving =  "FCLA_Camera_Mode_OC = _this";
			onButtonClick = "FCLA_Camera_Mode_BId = ""ti""; FCLA_Camera_Mode_B = true";
		};

		class Button_ListTimeDec : FCLA_Camera_Mode_DialogBase_Button {
			idc = 9;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - BUTTONWIDTH2 - SPACE - BUTTONWIDTH2;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME - LISTHEIGHT - SPACE - BUTTONHEIGHT - SPACE - TEXTHEIGHT - SPACE - BUTTONHEIGHT + BUTTONHEIGHT/2 + 0.001;
			h = BUTTONHEIGHT/2;
			w = BUTTONWIDTH2;
			text = "-";
			toolTip = "Disminuir tiempo. Inservible en multijugador.";
			onMouseMoving =  "FCLA_Camera_Mode_OC = _this";
			onButtonClick = "FCLA_Camera_Mode_BId = ""td""; FCLA_Camera_Mode_B = true";
		};

		class Text_ListAccTime : FCLA_Camera_Mode_DialogBase_StructuredText {
			idc = 10;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - BUTTONWIDTH2 - SPACE - BUTTONWIDTH2 - TEXTWIDTH;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME - LISTHEIGHT - SPACE - BUTTONHEIGHT - SPACE - TEXTHEIGHT - SPACE - BUTTONHEIGHT;
			w = TEXTWIDTH;
		};

		class Background_ListHelp : FCLA_Camera_Mode_DialogBase_Static {
			idc = 79;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - LISTWIDTH;
			y = 0.0 - ((SafeZoneH-1.0)/2) + OUTFRAME;
			colorBackground[] = {0,0,0,0};
			w = LISTWIDTH;
			h = SafeZoneH - (OUTFRAME*2 + LISTHEIGHT + (BUTTONHEIGHT+SPACE)*3 + SPACE);
		};

		class Edit_ListHelp : FCLA_Camera_Mode_DialogBase_EditMulti {
			idc = 80;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - LISTWIDTH;
			y = 0.0 - ((SafeZoneH-1.0)/2) + OUTFRAME;
			h = SafeZoneH - (OUTFRAME*2 + LISTHEIGHT + (BUTTONHEIGHT+SPACE)*3 + SPACE);
			colorText[] = {0.0,0.0,0.0,0.0};
			onMouseMoving = "FCLA_Camera_Mode_OC = _this";
		};

		class Button_ListHelp : FCLA_Camera_Mode_DialogBase_Button {
			idc = 21;
			x = 1.0 + ((SafeZoneW-1.0)/2) - OUTFRAME - BUTTONWIDTH2;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME - LISTHEIGHT - SPACE - BUTTONHEIGHT - SPACE - BUTTONHEIGHT - SPACE - BUTTONHEIGHT;
			h = BUTTONHEIGHT;
			w = BUTTONWIDTH2;
			text = "?";
			toolTip = "Ayuda.";
			onMouseMoving =  "FCLA_Camera_Mode_OC = _this";
			onButtonClick = "FCLA_Camera_Mode_BId = ""hp""; FCLA_Camera_Mode_B = true";
		};

		class Button_MapSize : FCLA_Camera_Mode_DialogBase_Button {
			idc = 22;
			x = 0.0 - ((SafeZoneW-1.0)/2) + OUTFRAME;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME;
			h = BUTTONHEIGHT;
			w = BUTTONWIDTH2;
			text = "<>";
			toolTip = "Cambiar tamaño del mapa (click izquierdo + arrastre).";
			onMouseMoving =  "FCLA_Camera_Mode_OC = _this";
			onMouseButtonDown = "FCLA_Camera_Mode_MD2 = _this";
			onMouseButtonUp = "FCLA_Camera_Mode_MU2 = _this";
		};

		class Map : FCLA_Camera_Mode_DialogBase_Map {
			idc = 100;
			widthRailWay = 1;
			x = 0.0 - ((SafeZoneW-1.0)/2) + OUTFRAME;
			y = 1.0 + ((SafeZoneH-1.0)/2) - OUTFRAME;
			onMouseMoving =  "FCLA_Camera_Mode_OC = _this; FCLA_Camera_Mode_OCM = _this";
		};
	};
};

class FCLA_Camera_Mode_Dialog_Quit {
	idd = 5102;
	movingEnable = 0;

	class controls {
		class Text_Quit : FCLA_Camera_Mode_DialogBase_StructuredText {
			idc = 0;
			x = 0.398;
			y = 0.44;
			w = 0.204;
			h = 0.120;
			size = 0.04;
			text = "¿Salir?";
		};

		class Button_QuitOk : FCLA_Camera_Mode_DialogBase_Button {
			idc = 3;
			x = 0.438;
			y = 0.505;
			h = 0.035;
			w = 0.0560;
			text = "Si";
			onButtonClick = "call BIS_fnc_VRFadeIn; player setVariable ['FCLA_Camera_Mode_On', nil, true]; FCLA_Camera_Mode_BId = ""quit""; FCLA_Camera_Mode_B = true";
		};

		class Button_QuitCancel : FCLA_Camera_Mode_DialogBase_Button {
			idc = 4;
			x = 0.505;
			y = 0.505;
			h = 0.035;
			w = 0.0810;
			text = "Cancelar";
			onButtonClick = "FCLA_Camera_Mode_BId = ""cancel""; FCLA_Camera_Mode_B = true";
		};
	};
};
