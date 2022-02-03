
/********************************************************************************|
|                  TITULOS - "BATERIA PARA LA VISION NOCTURNA"                   |
|********************************************************************************/

class FCLA_NVG_Battery_Base {
  idc = -1;
  type = 0;
  style = 48;
  access = 0;
  text = "";
  font = "PuristaLight";
  sizeEx = 1;
  shadow = 0;
  fixedWidth = 0;
  lineSpacing = 0;
  colorText[] = {1,1,1,1};
  colorBackground[] = {0,0,0,0};
};


class FCLA_NVG_Battery_0 {
  idd = -1;
	name = "FCLA_NVG_Battery_0";
	fadein = 0;
	fadeout = 0;
  duration = 100000;
  movingEnable = 0;
	controls[] = {"Picture"};

	class Picture: FCLA_NVG_Battery_Base {
		x = 0.4;
		y = 0;
		w = 0.20;
		h = 0.20;
		idc = 1200;
		text = "\FCLA_Interactions\Night_Vision_Battery\data\Battery_0.paa";
	};
};


class FCLA_NVG_Battery_20 {
	idd = -1;
  name = "FCLA_NVG_Battery_10";
  fadein = 0;
	fadeout = 0;
	duration = 100000;
  movingEnable = 0;
	controls[] = {"Picture"};

	class Picture: FCLA_NVG_Battery_Base {
		x = safeZoneX + safeZoneW * 0.9;
		y = safeZoneY + safeZoneH * 0.08;
		w = safeZoneH * 0.1;
		h = safeZoneH * 0.1;
		idc = 1200;
		text = "\FCLA_Interactions\Night_Vision_Battery\data\Battery_20.paa";
	};
};


class FCLA_NVG_Battery_40 {
	idd = -1;
	name = "FCLA_NVG_Battery_25";
	fadein = 0;
	fadeout = 0;
  duration = 100000;
  movingEnable = 0;
	controls[] = {"Picture"};

	class Picture: FCLA_NVG_Battery_Base {
		x = safeZoneX + safeZoneW * 0.9;
		y = safeZoneY + safeZoneH * 0.08;
		w = safeZoneH * 0.1;
		h = safeZoneH * 0.1;
		idc = 1200;
		text = "\FCLA_Interactions\Night_Vision_Battery\data\Battery_40.paa";
	};
};


class FCLA_NVG_Battery_60 {
	idd = -1;
	name = "FCLA_NVG_Battery_50";
	fadein = 0;
	fadeout = 0;
  duration = 100000;
  movingEnable = 0;
	controls[] = {"Picture"};

	class Picture: FCLA_NVG_Battery_Base {
		x = safeZoneX + safeZoneW * 0.9;
		y = safeZoneY + safeZoneH * 0.08;
		w = safeZoneH * 0.1;
		h = safeZoneH * 0.1;
		idc = 1200;
		text = "\FCLA_Interactions\Night_Vision_Battery\data\Battery_60.paa";
	};
};


class FCLA_NVG_Battery_80 {
	idd = -1;
	name = "FCLA_NVG_Battery_75";
	fadein = 0;
	fadeout = 0;
  duration = 100000;
  movingEnable = 0;
	controls[] = {"Picture"};

	class Picture: FCLA_NVG_Battery_Base {
		x = safeZoneX + safeZoneW * 0.9;
		y = safeZoneY + safeZoneH * 0.08;
		w = safeZoneH * 0.1;
		h = safeZoneH * 0.1;
		idc = 1200;
		text = "\FCLA_Interactions\Night_Vision_Battery\data\Battery_80.paa";
	};
};


class FCLA_NVG_Battery_100 {
	idd = -1;
  name = "FCLA_NVG_Battery_100";
  fadein = 0;
	fadeout = 0;
	duration = 100000;
  movingEnable = 0;
	controls[] = {"Picture"};

	class Picture: FCLA_NVG_Battery_Base {
		x = safeZoneX + safeZoneW * 0.9;
		y = safeZoneY + safeZoneH * 0.08;
		w = safeZoneH * 0.1;
		h = safeZoneH * 0.1;
		idc = 1200;
		text = "\FCLA_Interactions\Night_Vision_Battery\data\Battery_100.paa";
	};
};
