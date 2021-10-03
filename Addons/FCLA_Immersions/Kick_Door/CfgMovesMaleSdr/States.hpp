
/********************************************************************************|
|                           ESTADOS - "PATEAR PUERTA"                            |
|********************************************************************************/

class FCLA_Animation_Kick_Door_Rifle: AmovPercMstpSrasWrflDnon {
  file = "\FCLA_Immersions\Kick_Door\animations\Kick_Rifle.rtm";
  looped = 0;
  speed = 0.69999999;
  duty = 0.69999999;
  mask = "BodyFull";
  leftHandIKBeg = 1;
  leftHandIKCurve[] = {1};
  leftHandIKEnd = 1;
  rightHandIKBeg = 1;
  rightHandIKCurve[] = {1};
  rightHandIKEnd = 1;
  weaponIK = 1;
  enableOptics = 0;
  showWeaponAim = 0;
  disableWeapons = 0;
  disableWeaponsLong = 0;
  leaning = "empty";
  aimingBody = "empty";
  aiming = "empty";
  forceAim = 1;
  limitGunMovement = 9.1000004;
  headBobMode = 0;
  headBobStrength = 0;
  canPullTrigger = 1;
  enableDirectControl = 0;
  weaponLowered = 0;
  soundEnabled = 1;
  showHandGun = 0;
  showItemInRightHand = 0;
  soundOverride = "rifle_to_handgun";
  variantsPlayer[] = {};
  variantsAI[] = {};
  ConnectTo[] = {"AmovPercMstpSrasWrflDnon", 0.02};
  ConnectFrom[] = {"AmovPercMstpSrasWrflDnon", 9.0200005, "AmovPercMstpSlowWrflDnon", 9.0200005, "aadjpercmstpsraswrflddown_amovpercmstpsraswrfldnon", 9.0200005, "aadjpercmstpsraswrfldup_amovpercmstpsraswrfldnon", 9.0200005, "aadjpercmstpsraswrfldright_amovpercmstpsraswrfldnon", 9.0200005, "aadjpercmstpsraswrfldleft_amovpercmstpsraswrfldnon", 9.0200005};
};


class FCLA_Animation_Kick_Door_Pistol: AmovPercMstpSrasWpstDnon {
  file = "\FCLA_Immersions\Kick_Door\animations\Kick_Pistol.rtm";
  looped = 0;
  speed = 0.80000001;
  duty = 0.69999999;
  mask = "BodyFull";
  leftHandIKBeg = 1;
  leftHandIKCurve[] = {1};
  leftHandIKEnd = 1;
  rightHandIKBeg = 1;
  rightHandIKCurve[] = {1};
  rightHandIKEnd = 1;
  weaponIK = 0;
  enableOptics = 0;
  showWeaponAim = 0;
  disableWeapons = 0;
  disableWeaponsLong = 0;
  leaning = "empty";
  aimingBody = "empty";
  aiming = "empty";
  forceAim = 1;
  limitGunMovement = 9.1000004;
  headBobMode = 0;
  headBobStrength = 0;
  canPullTrigger = 1;
  enableDirectControl = 0;
  weaponLowered = 0;
  soundEnabled = 1;
  soundOverride = "rifle_to_handgun";
  variantsPlayer[] = {};
  variantsAI[] = {};
  ConnectTo[] = {"AmovPercMstpSrasWpstDnon", 0.02};
  ConnectFrom[] = {"AmovPercMstpSrasWpstDnon", 9.0200005, "AmovPercMstpSlowWpstDnon", 9.0200005, "aadjpercmstpsraswpstddown_amovpercmstpsraswpstdnon", 9.0200005, "aadjpercmstpsraswpstdup_amovpercmstpsraswpstdnon", 9.0200005, "aadjpercmstpsraswpstdright_amovpercmstpsraswpstdnon", 9.0200005, "aadjpercmstpsraswpstdleft_amovpercmstpsraswpstdnon", 9.0200005};
};
