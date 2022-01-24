
/********************************************************************************|
|                          ESTADOS - "ANIMACIONES TFAR"                          |
|********************************************************************************/

class FCLA_Animation_TFAR_Base: Default {
	connectAs = "";
	equivalentTo = "";
	soundOverride = "";
	speed = 0.30000001;
	looped = 0;
	static = 0;
	preload = 1;
	ragdoll = 0;
	terminal = 0;
	forceAim = 1;
	canReload = 0;
	Walkcycles = 1;
	headBobMode = 0;
	minPlayTime = 0.5;
	relSpeedMax = 1;
	relSpeedMin = 1;
	showHandGun = 0;
	enableOptics = 1;
	soundEnabled = 1;
	enableMissile = 1;
	showWeaponAim = 1;
	leftHandIKBeg = 0;
	leftHandIKEnd = 0;
	weaponLowered = 1;
	rightHandIKBeg = 1;
	canPullTrigger = 0;
	disableWeapons = 1;
	showItemInHand = 0;
	rightHandIKEnd = 1;
	enableBinocular = 1;
	headBobStrength = 0;
	limitGunMovement = 0;
	disableWeaponsLong = 1;
	interpolationSpeed = 6;
	showItemInRightHand = 0;
	interpolationRestart = 0;
	connectTo[] = {};
	soundEdge[] = {0.5, 1};
	connectFrom[] = {};
	interpolateTo[] = {};
	interpolateFrom[] = {};
	interpolateWith[] = {};
	leftHandIKCurve[] = {0};
	rightHandIKCurve[] = {1};
};


class FCLA_Animation_TFAR_onEar: FCLA_Animation_TFAR_Base {
	file = "a3\anims_f_epa\data\anim\sdr\cts\custom\a_in\acts_listeningtoradioloop.rtm";
	mask = "FCLA_Radio_onHand_Mask";
	minPlayTime = 2;
	enableOptics = 0;
};


class FCLA_Animation_TFAR_onVest: FCLA_Animation_TFAR_Base {
	file = "a3\anims_f_bootcamp\data\anim\sdr\cts\acts_kore_talkingoverradio_loop.rtm";
	mask = "FCLA_Radio_onHand_Mask";
	enableOptics = 0;
};


class FCLA_Animation_TFAR_onHand: FCLA_Animation_TFAR_Base {
	file = "\FCLA_Immersions\TFAR_Animations\animation\Radio_onHand.rtm";
	mask = "FCLA_Radio_onHand_Mask";
	looped = 1;
	enableOptics = 0;
};


class FCLA_TFAR_End_Animation: GestureNod {
	file = "a3\anims_f\data\anim\sdr\gst\gesturenod.rtm";
	mask = "empty";
	canReload = 0;
	enableOptics = 1;
	enableMissile = 1;
	weaponLowered = 0;
	canPullTrigger = 1;
	disableWeapons = 0;
	enableBinocular = 1;
	disableWeaponsLong = 0;
};
