
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Interactions\ID_Card\display\Main_GUI.hpp"

Description:
    Define los classnames principales para la visualización de la identificación.

Public: [NO]

Author:
hozlucas28
---------------------------------------------------------------------------- */

class FCLA_ID_Card_Text {
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	idc = -1;
	type = 0;
	style = 0;
	access = 0;
	shadow = 0;
	sizeEx = 0.04921;
	fixedWidth = 0;
	text = "";
	font = "puristaMedium";
	colorText[] = {0, 0, 0, 1};
	colorBackground[] = {1, 1, 1, 0};
};


class FCLA_ID_Card_Header_Text {
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	idc = -1;
	type = 0;
	style = 0;
	access = 0;
	shadow = 0;
	sizeEx = 0.03921;
	fixedWidth = 0;
	text = "";
	font = "puristaBold";
	colorText[] = {1, 1, 1, 1};
	colorBackground[] = {0, 0, 0, 0};
};


class FCLA_ID_Card_Picture {
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
	idc = -1;
	type = 0;
	style = 48;
	access = 0;
	shadow = 0;
	sizeEx = 0;
	fixedWidth = 0;
	lineSpacing = 0;
	text = "";
	font = "TahomaB";
	colorText[] = {1, 1, 1, 1};
	colorBackground[] = {0, 0, 0, 0};
};


class FCLA_ID_Card_Button {
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	type = 1;
	style = 2;
	access = 0;
	shadow = 2;
	sizeEx = 0.03921;
	offsetX = 0.003;
	offsetY = 0.003;
	borderSize = 0;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	text = "";
	font = "puristaLight";
	soundPush[] = {"", 0, 0};
	soundEnter[] = {"", 0.09, 1};
	soundClick[] = {"", 0.07, 1};
	soundEscape[] = {"", 0.09, 1};
	colorShadow[] = {0, 0, 0, 0};
	colorBorder[] = {0, 0, 0, 0};
	colorFocused[] = {0, 0, 0, 0};
	colorText[] = {0, 0, 0, 1};
	colorDisabled[] = {0, 0, 0, 1};
	colorBackground[] = {0, 0, 0, 0};
	colorBackgroundDisabled[] = {0, 0, 0, 0};
	colorBackgroundActive[] = {0, 0, 0, 0};
};
