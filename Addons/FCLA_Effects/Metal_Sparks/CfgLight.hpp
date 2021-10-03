
/********************************************************************************|
|                           LUCES - "CHISPAS DE METAL"                           |
|********************************************************************************/

class Metal_Sparks_Bullet_Explode {
  diffuse[] = {1, 0.5, 0.40000001};
  color[] = {1, 0.60000002, 0.40000001};
  ambient[] = {0, 0, 0, 0};
  position[] = {0, 3.5, 0};
  brightness = 1;
  size = 1;
  intensity = 500;
  drawLight = 0;
  blinking = 1;

  class Attenuation {
    start = 0;
    constant = 0;
    linear = 0;
    quadratic = 2.2;
    hardLimitStart = 500;
    hardLimitEnd = 1000;
  };
};
