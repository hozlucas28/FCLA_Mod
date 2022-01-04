
/***************************************************************************|
|                             LUCES - "EFECTOS"                             |
|***************************************************************************/

class Big_Fire_Light: ObjectDestructionLight {
  intensity = "25000 * (power interpolate [0.1, 1.0, 0.7, 1.0])";
};


class Medium_Fire_Light: ObjectDestructionLightSmall {
  intensity = "3500 * (power interpolate [0.1, 1.0, 0.7, 1.0])";
};
