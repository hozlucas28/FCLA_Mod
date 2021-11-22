
/***************************************************************************|
|                            LUCES - "LANZABLES"                            |
|***************************************************************************/

class FCLA_Molotov {
  size = 10;
  blinking = 0;
  intensity = 100;
  drawLight = 0;
  brightness = 200;
  color[] = {1, 0.30000001, 0.10000001};
  diffuse[] = {1, 0.30000001, 0.10000001};
  ambient[] = {1, 0.30000001, 0.10000001, 0};
  position[] = {0, 0, 0};

  class Attenuation {
    start = 0;
    linear = 0;
    constant = 0;
    quadratic = 2.2;
    hardLimitEnd = 1000;
    hardLimitStart = 500;
  };
};
