
/********************************************************************************|
|                       ESTADOS - "ANIMACIONES MEJORADAS"                        |
|********************************************************************************/

class FCLA_Tactical_Position_Up_v1: Default {
  file = "\FCLA_Immersions\Enhanced_Animations\animations\Tactical_Position_Up_v1.rtm";
  mask = "handsWeapon";
  speed = 1;
  looped = 1;
  preload = 1;
  terminal = 0;
  onLadder = 0;
  canReload = 0;
  showHandGun = 0;
  headBobMode = 2;
  enableMissile = 0;
  showWeaponAim = 0;
  canPullTrigger = 0;
  disableWeapons = 1;
  showItemInHand = 1;
  enableBinocular = 0;
  headBobStrength = 0;
  disableWeaponsLong = 1;
  showItemInRightHand = 0;
  leftHandIKCurve[] = {1};
  rightHandIKCurve[] = {1};
};


class FCLA_Tactical_Position_Up_v2: default {
  file = "\FCLA_Immersions\Enhanced_Animations\animations\Tactical_Position_Up_v2.rtm";
  mask = "handsWeapon";
  speed = 1;
  looped = 1;
  preload = 1;
  terminal = 0;
  onLadder = 0;
  canReload = 0;
  showHandGun = 0;
  headBobMode = 2;
  enableMissile = 0;
  showWeaponAim = 0;
  canPullTrigger = 0;
  disableWeapons = 1;
  showItemInHand = 1;
  enableBinocular = 0;
  headBobStrength = 0;
  disableWeaponsLong = 1;
  showItemInRightHand = 0;
  leftHandIKCurve[] = {1};
  rightHandIKCurve[] = {1};
};


class FCLA_Tactical_Position_Chest: Default {
  file = "\FCLA_Immersions\Enhanced_Animations\animations\Tactical_Position_Chest.rtm";
  mask = "handsWeapon_pst";
  speed = 1;
  looped = 1;
  preload = 1;
  onLadder = 0;
  terminal = 0;
  canReload = 0;
  headBobMode = 2;
  showHandGun = 0;
  enableMissile = 0;
  canPullTrigger = 0;
  showWeaponAim = 0;
  disableWeapons = 1;
  showItemInHand = 1;
  enableBinocular = 0;
  headBobStrength = 0;
  disableWeaponsLong = 1;
  showItemInRightHand = 0;
  leftHandIKCurve[] = {0};
  rightHandIKCurve[] = {0};
};


class FCLA_Tactical_Position_Down: default {
  file = "\FCLA_Immersions\Enhanced_Animations\animations\Tactical_Position_Down.rtm";
  mask = "handsWeapon";
  looped = 1;
  speed = 9.9999997e-006;
  preload = 1;
  terminal = 0;
  canReload = 1;
  showHandGun = 0;
  headBobMode = 1;
  weaponLowered = 0;
  showWeaponAim = 0;
  disableWeapons = 1;
  canPullTrigger = 0;
  headBobStrength = 0.001;
  limitGunMovement = 1;
  disableWeaponsLong = 1;
  interpolateTo[] = {};
};


class FCLA_Tactical_Position_Stop: default {
  file = "";
  mask = "handsWeapon";
  speed = 9.9;
  looped = 0;
  preload = 1;
  terminal = 0;
  onLadder = 0;
  canReload = 0;
  headBobMode = 2;
  showHandGun = 0;
  enableMissile = 0;
  showWeaponAim = 0;
  canPullTrigger = 1;
  disableWeapons = 0;
  showItemInHand = 1;
  enableBinocular = 0;
  headBobStrength = 0.2;
  disableWeaponsLong = 0;
  showItemInRightHand = 0;
  leftHandIKCurve[] = {1};
  rightHandIKCurve[] = {1};
};


class FCLA_Night_Vision_Switch: default {
  file = "\FCLA_Immersions\Enhanced_Animations\animations\Night_Vision_Switch.rtm";
  mask = "FCLA_Night_Vision_Mask";
  speed = 1.5;
  looped = 0;
  preload = 1;
  terminal = 0;
  onLadder = 0;
  canReload = 0;
  headBobMode = 2;
  showHandGun = 0;
  enableMissile = 0;
  showWeaponAim = 0;
  canPullTrigger = 1;
  disableWeapons = 0;
  showItemInHand = 1;
  enableBinocular = 0;
  headBobStrength = 0.2;
  disableWeaponsLong = 0;
  showItemInRightHand = 0;
  leftHandIKCurve[] = {0};
  rightHandIKCurve[] = {1};
};
