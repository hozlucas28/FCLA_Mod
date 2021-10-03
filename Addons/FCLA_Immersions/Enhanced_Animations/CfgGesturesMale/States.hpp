
/********************************************************************************|
|                       ESTADOS - "ANIMACIONES MEJORADAS"                        |
|********************************************************************************/

class FCLA_Animation_Tactical_Position_Up: default {
  file = "\FCLA_Immersions\Enhanced_Animations\animations\Tactical_Position_Up.rtm";
  mask = "handsWeapon";
  looped = 1;
  speed = 9.9999997e-006;
  canPullTrigger = 0;
  headBobMode = 2;
  canReload = 0;
  terminal = 0;
  preload = 1;
  disableWeapons = 1;
  disableWeaponsLong = 1;
  enableBinocular = 0;
  enableMissile = 0;
  onLadder = 0;
  showHandGun = 0;
  showWeaponAim = 0;
  showItemInHand = 1;
  showItemInRightHand = 0;
  headBobStrength = 0.2;
  rightHandIKCurve[] = {1};
  leftHandIKCurve[] = {1};
};


class FCLA_Animation_Tactical_Position_Down: default {
  file = "\FCLA_Immersions\Enhanced_Animations\animations\Tactical_Position_Down.rtm";
  mask = "handsWeapon";
  looped = 1;
  speed = 9.9999997e-006;
  disableWeapons = 1;
  disableWeaponsLong = 1;
  weaponLowered = 0;
  showWeaponAim = 0;
  showHandGun = 0;
  canPullTrigger = 0;
  canReload = 1;
  terminal = 0;
  limitGunMovement = 1;
  preload = 1;
  headBobMode = 1;
  headBobStrength = 0.001;
  interpolateTo[] = {};
};


class FCLA_Animation_tacticalPosition_End: default {
  file = "";
  mask = "handsWeapon";
  looped = 0;
  speed = 9.9;
  canPullTrigger = 1;
  headBobMode = 2;
  canReload = 0;
  terminal = 0;
  preload = 1;
  disableWeapons = 0;
  disableWeaponsLong = 0;
  enableBinocular = 0;
  enableMissile = 0;
  onLadder = 0;
  showHandGun = 0;
  showWeaponAim = 0;
  showItemInHand = 1;
  showItemInRightHand = 0;
  headBobStrength = 0.2;
  rightHandIKCurve[] = {1};
  leftHandIKCurve[] = {1};
};


class FCLA_Animation_Night_Vision_Switch: default {
  file = "\FCLA_Immersions\Enhanced_Animations\animations\Night_Vision_Switch.rtm";
  mask = "FCLA_Night_Vision_Mask";
  looped = 0;
  speed = 1.5;
  canPullTrigger = 1;
  headBobMode = 2;
  canReload = 0;
  terminal = 0;
  preload = 1;
  disableWeapons = 0;
  disableWeaponsLong = 0;
  enableBinocular = 0;
  enableMissile = 0;
  onLadder = 0;
  showHandGun = 0;
  showWeaponAim = 0;
  showItemInHand = 1;
  showItemInRightHand = 0;
  headBobStrength = 0.2;
  rightHandIKCurve[] = {1};
  leftHandIKCurve[] = {0};
};
