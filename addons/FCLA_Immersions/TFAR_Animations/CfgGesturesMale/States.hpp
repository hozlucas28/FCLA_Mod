
/********************************************************************************|
|                          ESTADOS - "ANIMACIONES TFAR"                          |
|********************************************************************************/

class FCLA_Animation_TFAR_Base: Default {
	canPullTrigger = 0;
	connectAs = "";
	forceAim = 1;
	connectFrom[] = {};
	connectTo[] = {};
	disableWeapons = 1;
	disableWeaponsLong = 1;
	canReload = 0;
	enableBinocular = 1;
	enableMissile = 1;
	enableOptics = 1;
	equivalentTo = "";
	headBobMode = 0;
	headBobStrength = 0;
	interpolateFrom[] = {};
	interpolateTo[] = {};
	interpolateWith[] = {};
	interpolationRestart = 0;
	interpolationSpeed = 6;
	looped = 0;
	minPlayTime = 0.5;
	preload = 1;
	ragdoll = 0;
	relSpeedMax = 1;
	relSpeedMin = 1;
	showHandGun = 0;
	showItemInHand = 0;
	showItemInRightHand = 0;
	showWeaponAim = 1;
	soundEdge[] = {0.5, 1};
	soundEnabled = 1;
	soundOverride = "";
	static = 0;
	terminal = 0;
	Walkcycles = 1;
	leftHandIKBeg = 0;
	leftHandIKCurve[] = {0};
	leftHandIKEnd = 0;
	rightHandIKBeg = 1;
	rightHandIKCurve[] = {1};
	rightHandIKEnd = 1;
	weaponLowered = 1;
	limitGunMovement = 0;
	speed = 0.30000001;
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
	canPullTrigger = 1;
	disableWeapons = 0;
	disableWeaponsLong = 0;
	canReload = 0;
	enableBinocular = 1;
	enableMissile = 1;
	enableOptics = 1;
	weaponLowered = 0;
};
