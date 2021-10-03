
/***************************************************************************|
|                            LUCES - "LANZABLES"                            |
|***************************************************************************/

class FCLA_Molotov_Light {
  diffuse[] = {1,0.30000001,0.10000001};
  color[] = {1,0.30000001,0.10000001};
  ambient[] = {1,0.30000001,0.10000001,0};
  brightness = 200;
  size = 10;
  intensity = 100;
  drawLight = 0;
  blinking = 0;
  position[] = {0,0,0};

  class Attenuation {
    start = 0;
    constant = 0;
    linear = 0;
    quadratic = 2.2;
    hardLimitStart = 500;
    hardLimitEnd = 1000;
  };
};
