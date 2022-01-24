
/********************************************************************************|
|                           ESTADOS - "PATEAR PUERTA"                            |
|********************************************************************************/

class FCLA_Animation_Kick_Door_Rifle: AmovPercMstpSrasWrflDnon {
  file = "\FCLA_Immersions\Kick_Door\animations\Kick_Rifle.rtm";
  mask = "BodyFull";
  aiming = "empty";
  leaning = "empty";
  aimingBody = "empty";
  soundOverride = "rifle_to_handgun";
  duty = 0.69999999;
  speed = 0.69999999;
  looped = 0;
  weaponIK = 1;
  forceAim = 1;
  headBobMode = 0;
  showHandGun = 0;
  enableOptics = 0;
  soundEnabled = 1;
  leftHandIKBeg = 1;
  leftHandIKEnd = 1;
  showWeaponAim = 0;
  weaponLowered = 0;
  rightHandIKBeg = 1;
  rightHandIKEnd = 1;
  disableWeapons = 0;
  canPullTrigger = 1;
  headBobStrength = 0;
  limitGunMovement = 9.1000004;
  disableWeaponsLong = 0;
  enableDirectControl = 0;
  showItemInRightHand = 0;
  ConnectTo[] = {"AmovPercMstpSrasWrflDnon", 0.02};
  variantsAI[] = {};
  ConnectFrom[] = {"AmovPercMstpSrasWrflDnon", 9.0200005, "AmovPercMstpSlowWrflDnon", 9.0200005, "aadjpercmstpsraswrflddown_amovpercmstpsraswrfldnon", 9.0200005, "aadjpercmstpsraswrfldup_amovpercmstpsraswrfldnon", 9.0200005, "aadjpercmstpsraswrfldright_amovpercmstpsraswrfldnon", 9.0200005, "aadjpercmstpsraswrfldleft_amovpercmstpsraswrfldnon", 9.0200005};
  variantsPlayer[] = {};
  leftHandIKCurve[] = {1};
  rightHandIKCurve[] = {1};
};


class FCLA_Animation_Kick_Door_Pistol: AmovPercMstpSrasWpstDnon {
  file = "\FCLA_Immersions\Kick_Door\animations\Kick_Pistol.rtm";
  mask = "BodyFull";
  aiming = "empty";
  leaning = "empty";
  aimingBody = "empty";
  soundOverride = "rifle_to_handgun";
  duty = 0.69999999;
  speed = 0.80000001;
  looped = 0;
  weaponIK = 0;
  forceAim = 1;
  headBobMode = 0;
  enableOptics = 0;
  soundEnabled = 1;
  showWeaponAim = 0;
  leftHandIKBeg = 1;
  leftHandIKEnd = 1;
  weaponLowered = 0;
  rightHandIKBeg = 1;
  rightHandIKEnd = 1;
  disableWeapons = 0;
  canPullTrigger = 1;
  headBobStrength = 0;
  limitGunMovement = 9.1000004;
  disableWeaponsLong = 0;
  enableDirectControl = 0;
  ConnectTo[] = {"AmovPercMstpSrasWpstDnon", 0.02};
  variantsAI[] = {};
  ConnectFrom[] = {"AmovPercMstpSrasWpstDnon", 9.0200005, "AmovPercMstpSlowWpstDnon", 9.0200005, "aadjpercmstpsraswpstddown_amovpercmstpsraswpstdnon", 9.0200005, "aadjpercmstpsraswpstdup_amovpercmstpsraswpstdnon", 9.0200005, "aadjpercmstpsraswpstdright_amovpercmstpsraswpstdnon", 9.0200005, "aadjpercmstpsraswpstdleft_amovpercmstpsraswpstdnon", 9.0200005};
  variantsPlayer[] = {};
  leftHandIKCurve[] = {1};
  rightHandIKCurve[] = {1};
};
