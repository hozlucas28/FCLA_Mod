
/********************************************************************************|
|                                SONIDOS - "SFX"                                 |
|********************************************************************************/



/* ------------------------------ NATURALEZA ------------------------------- */

class FCLA_SFX_Forest_Ambience {
	name = "FCLA - Bosque";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound[] = {"\FCLA_Sounds\SFX\data\Nature\Forest.ogg", 3, 1, 1200, 1, 0, 0, 0};
	sounds[] = {"sound"};
	titles[] = {};
};



/* -------------------------------- ALARMAS -------------------------------- */

class FCLA_SFX_Alarm {
	name = "FCLA - Alarma";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound[] = {"\FCLA_Sounds\SFX\data\Alarms\Alarm.ogg", 9, 1, 400, 1, 0, 0, 0};
	sounds[] = {"sound"};
	titles[] = {};
};


class FCLA_SFX_Air_Alarm {
	name = "FCLA - Alarma aérea";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound[] = {"\FCLA_Sounds\SFX\data\Alarms\Air_Alarm.ogg", 11, 1, 400, 1, 0, 0, 0};
	sounds[] = {"sound"};
	titles[] = {};
};


class FCLA_SFX_Air_Alarm_Far	{
	name = "FCLA - Alarma aérea (distante)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound[] = {"\FCLA_Sounds\SFX\data\Alarms\Air_Alarm_Far.ogg", 11, 1, 1100, 1, 0, 0, 0};
	sounds[] = {"sound"};
	titles[] = {};
};



/* --------------------------- CAMPOS DE BATALLA --------------------------- */

class FCLA_SFX_Battlefield_Fire_Fight_Rifles {
	name = "FCLA - Campo de batalla (rifles)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound[] = {"\FCLA_Sounds\SFX\data\Battlefields\Fire_Fight_Rifles.wav", 11, 1, 400, 1, 0, 0, 0};
	sounds[] = {"sound"};
	titles[] = {};
};


class FCLA_SFX_Battlefield_Fire_Fight_Rifles_Far {
	name = "FCLA - Campo de batalla (rifles - distante)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound[] = {"\FCLA_Sounds\SFX\data\Battlefields\Fire_Fight_Rifles_Far.wav", 10, 1, 1100, 1, 0, 0, 0};
	sounds[] = {"sound"};
	titles[] = {};
};


class FCLA_SFX_Battlefield_Fire_Fight_v1 {
	name = "FCLA - Campo de batalla (v1)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound1[] = {"\FCLA_Sounds\SFX\data\Battlefields\Fire_Fight_v1_1.ogg", 11, 1, 5000, 1, 0, 5, 10};
	sound2[] = {"\FCLA_Sounds\SFX\data\Battlefields\Fire_Fight_v1_2.ogg", 11, 1, 5000, 1, 0, 5, 10};
	sound3[] = {"\FCLA_Sounds\SFX\data\Battlefields\Fire_Fight_v1_3.ogg", 11, 1, 5000, 1, 0, 5, 10};
	sound4[] = {"\FCLA_Sounds\SFX\data\Battlefields\Fire_Fight_v1_4.ogg", 11, 1, 5000, 1, 0, 5, 10};
	sounds[] = {"sound1", "sound2", "sound3", "sound4"};
	titles[] = {};
	random[] = {"sound1", "sound2", "sound3", "sound4"};
};


class FCLA_SFX_Battlefield_Fire_Fight_v2 {
	name = "FCLA - Campo de batalla (v2)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound1[] = {"\FCLA_Sounds\SFX\data\Battlefields\Explosions_1.ogg", 11, 1, 5000, 1, 0, 5, 10};
	sound2[] = {"\FCLA_Sounds\SFX\data\Battlefields\Explosions_2.ogg", 11, 1, 5000, 1, 0, 5, 10};
	sound3[] = {"\FCLA_Sounds\SFX\data\Battlefields\Explosions_3.ogg", 11, 1, 5000, 1, 0, 5, 10};
	sound4[] = {"\FCLA_Sounds\SFX\data\Battlefields\Explosions_4.ogg", 11, 1, 5000, 1, 0, 5, 10};
	sound5[] = {"\FCLA_Sounds\SFX\data\Battlefields\Explosions_5.ogg", 11, 1, 5000, 1, 0, 5, 10};
	sounds[] = {"sound1", "sound2", "sound3", "sound4", "sound5"};
	titles[] = {};
	random[] = {"sound1", "sound2", "sound3", "sound4", "sound5"};
};


class FCLA_SFX_Battlefield_Fire_Fight_v3 {
	name = "FCLA - Campo de batalla (v3)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound[] = {"\FCLA_Sounds\SFX\data\Battlefields\Fire_Fight_v3.ogg", 6, 1, 5000, 1, 0, 0, 0};
	sounds[] = {"sound"};
	titles[] = {};
};


class FCLA_SFX_Battlefield_Fire_Fight_Urban {
	name = "FCLA - Campo de batalla (urbano)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound[] = {"\FCLA_Sounds\SFX\data\Battlefields\Fire_Fight_Urban.ogg", 3, 1, 1000, 1, 0, 0, 0};
	sounds[] = {"sound"};
	titles[] = {};
};



/* --------------------------------- OTROS --------------------------------- */

class FCLA_SFX_Generator_v1 {
	name = "FCLA - Generador (v1)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound[] = {"\FCLA_Sounds\SFX\data\Others\Generator_v1.wav", 3, 1, 50, 1, 0, 0, 0};
	sounds[] = {"sound"};
	titles[] = {};
};


class FCLA_SFX_Generator_v2 {
	name = "FCLA - Generador (v2)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound[] = {"\FCLA_Sounds\SFX\data\Others\Generator_v2.wav", 11, 1, 120, 1, 0, 0, 0};
	sounds[] = {"sound"};
	titles[] = {};
};


class FCLA_SFX_Generator_v3 {
	name = "FCLA - Generador (v3)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	sound[] = {"\FCLA_Sounds\SFX\data\Others\Generator_v3.wav", 11, 1, 120, 1, 0, 0, 0};
	sounds[] = {"sound"};
	titles[] = {};
};











































class Zeus_Sound_Africa_CrowdTalk1 {
	name = "[16AA] African Crowd Talk 1";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Africa\zeus_sound_crowdtalk1.ogg", 10, 1, 17, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Africa_CrowdTalk2 {
	name = "[16AA] African Crowd Talk 2";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Africa\zeus_sound_crowdtalk2.ogg", 10, 1, 17, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Africa_CrowdTalk3 {
	name = "[16AA] African Crowd Talk 3";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Africa\zeus_sound_crowdtalk3.ogg", 15, 1, 17, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Africa_CrowdTalk4 {
	name = "[16AA] African Crowd Talk 4";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Africa\zeus_sound_crowdtalk4.ogg", 15, 1, 20, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Africa_CrowdTalk5 {
	name = "[16AA] African Crowd Talk 5";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Africa\zeus_sound_crowdtalk5.ogg", 15, 1, 20, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Africa_StreetCrowd1 {
	name = "[16AA] African Street Crowd 1";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Africa\zeus_sound_streetcrowd1.ogg", 15, 1, 20, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Africa_StreetCrowd2 {
	name = "[16AA] African Street Crowd 2";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Africa\zeus_sound_streetcrowd2.ogg", 15, 1, 20, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Africa_StreetCrowd3 {
	name = "[16AA] African Street Crowd 3";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Africa\zeus_sound_streetcrowd3.ogg", 15, 1, 20, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Africa_StreetCrowd4 {
	name = "[16AA] African Street Crowd 4";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Africa\zeus_sound_streetcrowd4.ogg", 15, 1, 20, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Desert_AngryInsurgentSpeech {
	name = "[16AA] Desert Angry Insurgent Speech";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Desert\zeus_sound_AngryInsurgentSpeech.ogg", 15, 1, 150, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Desert_Arabic_Music_Radio {
	name = "[16AA] Arabic Music Radio";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Desert\zeus_sound_ArabicMusicRadio.ogg", 15, 1, 50, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Desert_Arab_Talking {
	name = "[16AA] Arab Talking";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Desert\zeus_sound_ArabTalking.ogg", 15, 1, 30, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Desert_Call_To_Prayer {
	name = "[16AA] Call To Prayer";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Desert\zeus_sound_Call_To_Prayer.ogg", 15, 1, 2000, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Desert_CityAmbience1 {
	name = "[16AA] Desert City Ambience 1";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Desert\zeus_sound_CityAmbience1.ogg", 15, 1, 400, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Desert_CityAmbienceLarge {
	name = "[16AA] Desert City Ambience Large";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Desert\zeus_sound_CityAmbienceLarge.ogg", 15, 1, 400, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Desert_CityAmbienceLarge2 {
	name = "[16AA] Desert City Ambience Large 2";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Desert\zeus_sound_CityAmbienceLarge2.ogg", 15, 1, 400, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Desert_InsurgentRadio_Plain {
	name = "[16AA] Desert Insurgent Radio (Plain)";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Desert\zeus_sound_InsurgentRadio(Plain).ogg", 15, 1, 30, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Desert_InsurgentRadio_Weapons {
	name = "[16AA] Desert Insurgent Radio (Weapons)";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Desert\zeus_sound_InsurgentRadio(Weapons).ogg", 15, 1, 30, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Desert_MarketplaceAmbience {
	name = "[16AA] Desert Marketplace Ambience";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Desert\zeus_sound_MarketPlaceAmbience.ogg", 15, 1, 150, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Rus_Radio {
	name = "[16AA] Russian Radio Chatter";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Rus\zeus_sound_Rus_Radio.ogg", 15, 1, 30, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Alarm_AlarmOpenAir {
	name = "[16AA] Alarm Open Air";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\Alarm\zeus_sound_AlarmOpenAir.ogg", 15, 1, 800, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Car_CarStartFail {
	name = "[16AA] Car Start Fail";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\Car\zeus_sound_CarStartFail.ogg", 15, 1, 50, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Dog_BarkingDogCloseMid {
	name = "[16AA] Barking Dog (Close/Mid)";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\Dog\zeus_sound_BarkingDogCloseMid.ogg", 15, 1, 50, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Dog_BarkingDogFar {
	name = "[16AA] Barking Dog (Far)";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\Dog\zeus_sound_BarkingDogFar.ogg", 15, 1, 400, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Fire_AmmoDumpFireAndExplosion {
	name = "[16AA] Ammo Dump Fire and Explosion";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\Fire\zeus_sound_Ammo Dump Fire and Explosion.ogg", 15, 1, 1000, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Fire_BurningVehicle {
	name = "[16AA] Burning Vehicle";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\Fire\zeus_sound_BurningVehicle.ogg", 15, 1, 50, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Fire_CampFire {
	name = "[16AA] Camp Fire";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\Fire\zeus_sound_CampFire.ogg", 15, 1, 20, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Firefight_British_Army_Defence {
	name = "[16AA] British Army Defence";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\Firefight\zeus_sound_BritishArmyDefence.ogg", 15, 1, 700, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Firefight_Sniper_Suppression {
	name = "[16AA] Sniper Suppression";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\Firefight\zeus_sound_SniperSuppression.ogg", 15, 1, 20, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Jets_A10_Fire {
	name = "[16AA] A-10 Fire Medium Distance";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\Jets\zeus_sound_A10_Fire.ogg", 15, 1, 450, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Jets_A10_Fire_2 {
	name = "[16AA] A-10 Fire Long Distance";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\Jets\zeus_sound_A10_Fire_2.ogg", 15, 1, 1000, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Jets_Flyover_Far {
	name = "[16AA] Jet Flyover Far";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\zeus_sound_Jet_Flyover_Far.ogg", 15, 1, 750, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Gasleak {
	name = "[16AA] Gas Leak";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\zeus_sound_Gasleak.ogg", 15, 1, 13, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_IEDRing {
	name = "[16AA] IED Ring and Explosion";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\zeus_sound_IEDRing.ogg", 15, 1, 20, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_NightCrickets {
	name = "[16AA] Night Crickets";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\zeus_sound_NightCrickets.ogg", 15, 1, 500, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Flies {
	name = "[16AA] Flies";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\zeus_sound_Flies.ogg", 10, 1, 20, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};


class Zeus_Sound_Misc_Baby_Cry {
	name = "[16AA] Baby Cry";
	sounds[] = {"sfxsound"};
	sfxsound[] = {"16aa_immersion_sounds\Misc\zeus_sounds_babycry.ogg", 10, 1, 35, 1, 1, 1, 0};
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
};
