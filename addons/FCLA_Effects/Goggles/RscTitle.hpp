
/********************************************************************************|
|                              TÍTULOS - "ANTEOJOS"                              |
|********************************************************************************/

class FCLA_CBRN_APR {
  idd = -1;
  movingEnable = false;
  duration = 999999;
  onLoad = "";
  controlsBackground[] = {overlay};
  objects[] = {};
  controls[] = {};

  class overlay {
    idc = 1337;
    type = 0;
    style = 48;
    colorBackground[] = {};
    colorText[] = {};
    font = "PuristaMedium";
    sizeEx = 1.0;
    moving = false;
    x = safeZoneXAbs;
    y = SafeZoneY - safeZoneH / 5;
    w = safeZoneWAbs;
    h = safeZoneH * 1.5;
    text = "\FCLA_Effects\Goggles\data\APR_Overlay.paa";
  };
};
