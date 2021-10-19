
/********************************************************************************|
|                    EFECTOS DE SONIDO - "SONIDOS MEJORADOS"                     |
|********************************************************************************/

class FCLA_Forest_Ambience {
	name = "FCLA - Ambiente forestal";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	Forest_Ambience[] = {"\FCLA_Effects\sounds\ambient\Forest_Ambience.ogg", db-3, 1, 1200, 1, 0, 0, 0};
	sounds[] = {"Forest_Ambience"};
};

class FCLA_Battlefield_Fire_Fight {
	name = "FCLA - Tiroteos dinámicos";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	random[] = {"sound0", "sound1", "sound2", "sound3"};
	sound0[] = {"\FCLA_Effects\sounds\ambient\Battlefield_Fire_Fight_1.ogg", db+11, 1, 5000, 1, 0, 5, 10};
	sound1[] = {"\FCLA_Effects\sounds\ambient\Battlefield_Fire_Fight_2.ogg", db+11, 1, 5000, 1, 0, 5, 10};
	sound2[] = {"\FCLA_Effects\sounds\ambient\Battlefield_Fire_Fight_3.ogg", db+11, 1, 5000, 1, 0, 5, 10};
	sound3[] = {"\FCLA_Effects\sounds\ambient\Battlefield_Fire_Fight_4.ogg", db+11, 1, 5000, 1, 0, 5, 10};
	sounds[] = {"sound0", "sound1", "sound2", "sound3"};
};

class FCLA_Battlefield_Explosions {
	name = "FCLA - Explosiones dinámicas";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	random[] = {"sound0", "sound1", "sound2", "sound3", "sound4"};
	sound0[] = {"\FCLA_Effects\sounds\ambient\Battlefield_Explosions_1.ogg", db+11, 1, 5000, 1, 0, 5, 10};
	sound1[] = {"\FCLA_Effects\sounds\ambient\Battlefield_Explosions_2.ogg", db+11, 1, 5000, 1, 0, 5, 10};
	sound2[] = {"\FCLA_Effects\sounds\ambient\Battlefield_Explosions_3.ogg", db+11, 1, 5000, 1, 0, 5, 10};
	sound3[] = {"\FCLA_Effects\sounds\ambient\Battlefield_Explosions_4.ogg", db+11, 1, 5000, 1, 0, 5, 10};
	sound4[] = {"\FCLA_Effects\sounds\ambient\Battlefield_Explosions_5.ogg", db+11, 1, 5000, 1, 0, 5, 10};
	sounds[] = {"sound0", "sound1", "sound2", "sound3", "sound4"};
};

class FCLA_Battle_Overhaul {
	name = "FCLA - Batalla ambiental";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	Battle_Overhaul[] = {"\FCLA_Effects\sounds\ambient\Battle_Overhaul.ogg", db+6, 1, 5000, 1, 0, 0, 0};
	sounds[] = {"Battle_Overhaul"};
};

class FCLA_Battle_Overhaul_Far {
	name = "FCLA - Batalla ambiental (distante)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	Battle_Overhaul_Far[] = {"\FCLA_Effects\sounds\ambient\Battle_Overhaul_Far.wav", db+0, 1, 5000, 1, 0, 0, 0};
	sounds[] = {"Battle_Overhaul_Far"};
};

class FCLA_Battle_Overhaul_Rifle {
	name = "FCLA - Batalla ambiental (solo rifles)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	Battle_Overhaul_Rifle[] = {"\FCLA_Effects\sounds\ambient\Battle_Overhaul_Rifle.wav", db+11, 1, 400, 1, 0, 0, 0};
	sounds[] = {"Battle_Overhaul_Rifle"};
};

class FCLA_Battle_Overhaul_Rifle_Far {
	name = "FCLA - Batalla ambiental (solo rifles - distante)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	Battle_Overhaul_Rifle_Far[] = {"\FCLA_Effects\sounds\ambient\Battle_Overhaul_Rifle_Far.wav", db+10, 1, 1100, 1, 0, 0, 0};
	sounds[] = {"Battle_Overhaul_Rifle_Far"};
};

class FCLA_Battle_Overhaul_Town {
	name = "FCLA - Batalla ambiental (ciudad)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	Battle_Overhaul_Town[] = {"\FCLA_Effects\sounds\ambient\Battle_Overhaul_Town.ogg", db+3, 1, 1000, 1, 0, 0, 0};
	sounds[] = {"Battle_Overhaul_Town"};
};

class FCLA_Alarm {
	name = "FCLA - Alarma";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	Alarm[] = {"\FCLA_Effects\sounds\ambient\Alarm.ogg", db+9, 1, 400, 1, 0, 0, 0};
	sounds[] = {"Alarm"};
};

class FCLA_Air_Alarm {
	name = "FCLA - Alarma aérea";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	Air_Alarm[] = {"\FCLA_Effects\sounds\ambient\Air_Alarm.ogg", db+11, 1, 400, 1, 0, 0, 0};
	sounds[] = {"Air_Alarm"};
};

class FCLA_Air_Alarm_Far	{
	name = "FCLA - Alarma aérea (distante)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	Air_Alarm_Far[] = {"\FCLA_Effects\sounds\ambient\Air_Alarm_Far.ogg", db+11, 1, 1100, 1, 0, 0, 0};
	sounds[] = {"Air_Alarm_Far"};
};

class FCLA_Generator_1 {
	name = "FCLA - Generador portátil";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	Generator_1[] = {"\FCLA_Effects\sounds\ambient\Generator_1.wav", db+3, 1, 50, 1, 0, 0, 0};
	sounds[] = {"Generator_1"};
};

class FCLA_Huge_Generator_1 {
	name = "FCLA - Generador (grande 1)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	Huge_Generator_1[] = {"\FCLA_Effects\sounds\ambient\Huge_Generator_1.wav", db+11, 1, 120, 1, 0, 0, 0};
	sounds[] = {"Huge_Generator_1"};
};

class FCLA_Huge_Generator_2 {
	name = "FCLA - Generador (grande 2)";
	empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	Huge_Generator_2[] = {"\FCLA_Effects\sounds\ambient\Huge_Generator_2.wav", db+11, 1, 120, 1, 0, 0, 0};
	sounds[] = {"Huge_Generator_2"};
};
