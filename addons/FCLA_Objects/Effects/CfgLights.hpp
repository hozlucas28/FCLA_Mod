
/***************************************************************************|
|                             LUCES - "EFECTOS"                             |
|***************************************************************************/

class BigFireLight: ObjectDestructionLight {
  intensity = "25000 * (power interpolate [0.1, 1.0, 0.7, 1.0])";
};

class MediumFireLight: ObjectDestructionLightSmall {
  intensity = "3500 * (power interpolate [0.1, 1.0, 0.7, 1.0])";
};
