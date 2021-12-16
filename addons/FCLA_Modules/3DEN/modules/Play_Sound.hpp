
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce el sonido seleccionado de manera tridimensional.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Play_Sound: Module_F {
  author = "hozlucas28";
	displayName = "Reproducir sonido";
  icon = "\FCLA_Modules\3DEN\data\Sound.paa";
  portrait = "\FCLA_Modules\3DEN\data\Sound.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_playSound3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Sound: Combo {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Selected_Sound";
      displayName = "Sonido";
      defaultValue = """FCLA_SFX_Flies""";

			class Values {
        class Flies {
					name = "FCLA - Moscas";
					value = "FCLA_SFX_Flies";
				};

        class Night_Crickets {
					name = "FCLA - Grillos";
					value = "FCLA_SFX_Night_Crickets";
				};

        class Campfire {
					name = "FCLA - Fogata";
					value = "FCLA_SFX_Campfire";
				};

        class Forest_Ambience {
					name = "FCLA - Bosque";
					value = "FCLA_SFX_Forest_Ambience";
				};

        class Baby_Crying {
					name = "FCLA - Bebe llorando";
					value = "FCLA_SFX_Baby_Crying";
				};

        class Arab_People_Talking {
					name = "FCLA - Personas charlando (Arabia)";
					value = "FCLA_SFX_Arab_People_Talking";
				};

        class Arab_Marketplace {
					name = "FCLA - Mercado (Arabia)";
					value = "FCLA_SFX_Arab_Marketplace";
				};

        class Riot {
					name = "FCLA - Manifestación";
					value = "FCLA_SFX_Riot";
				};

        class Africa_Crowd_v1 {
					name = "FCLA - Multitud (África v1)";
					value = "FCLA_SFX_Africa_Crowd_v1";
				};

        class Africa_Crowd_v2 {
					name = "FCLA - Multitud (África v2)";
					value = "FCLA_SFX_Africa_Crowd_v2";
				};

        class Africa_Crowd_v3 {
					name = "FCLA - Multitud (África v3)";
					value = "FCLA_SFX_Africa_Crowd_v3";
				};

        class Africa_Crowd_v4 {
					name = "FCLA - Multitud (África v4)";
					value = "FCLA_SFX_Africa_Crowd_v4";
				};

        class Africa_Crowd_v5 {
					name = "FCLA - Multitud (África v5)";
					value = "FCLA_SFX_Africa_Crowd_v5";
				};

        class Arab_Crowd_Vehicles_v1 {
					name = "FCLA - Multitud y vehículos (Arabia v1)";
					value = "FCLA_SFX_Arab_Crowd_Vehicles_v1";
				};

        class Arab_Crowd_Vehicles_v2 {
					name = "FCLA - Multitud y vehículos (Arabia v2)";
					value = "FCLA_SFX_Arab_Crowd_Vehicles_v2";
				};

        class Arab_Crowd_Vehicles_v3 {
					name = "FCLA - Multitud y vehículos (Arabia v3)";
					value = "FCLA_SFX_Arab_Crowd_Vehicles_v3";
				};

        class Africa_Crowd_Vehicles_v1 {
					name = "FCLA - Multitud y vehículos (África v1)";
					value = "FCLA_SFX_Africa_Crowd_Vehicles_v1";
				};

        class Africa_Crowd_Vehicles_v2 {
					name = "FCLA - Multitud y vehículos (África v2)";
					value = "FCLA_SFX_Africa_Crowd_Vehicles_v2";
				};

        class Africa_Crowd_Vehicles_v3 {
					name = "FCLA - Multitud y vehículos (África v3)";
					value = "FCLA_SFX_Africa_Crowd_Vehicles_v3";
				};

        class Africa_Crowd_Vehicles_v4 {
					name = "FCLA - Multitud y vehículos (África v4)";
					value = "FCLA_SFX_Africa_Crowd_Vehicles_v4";
				};

        class Submarine_Alarm {
					name = "FCLA - Submarino (alarma)";
					value = "FCLA_SFX_Submarine_Alarm";
				};

        class Shooting_Range_Alarm {
					name = "FCLA - Campo de tiro (alarma)";
					value = "FCLA_SFX_Shooting_Range_Alarm";
				};

        class Alarm {
					name = "FCLA - Alarma";
					value = "FCLA_SFX_Alarm";
				};

        class Air_Alarm {
					name = "FCLA - Alarma aérea";
					value = "FCLA_SFX_Air_Alarm";
				};

        class Air_Alarm_Far {
					name = "FCLA - Alarma aérea (distante)";
					value = "FCLA_SFX_Air_Alarm_Far";
				};

        class Artillery_Incoming_Alarm {
					name = "FCLA - Artillería inminente (alarma)";
					value = "FCLA_SFX_Artillery_Incoming_Alarm";
				};

        class Biologic_Alarm {
					name = "FCLA - Alarma biológica";
					value = "FCLA_SFX_Biologic_Alarm";
				};

        class Nuclear_Alarm {
					name = "FCLA - Alarma nuclear";
					value = "FCLA_SFX_Nuclear_Alarm";
				};

        class Arab_Music_Radio {
					name = "FCLA - Radio (música árabe)";
					value = "FCLA_SFX_Arab_Music_Radio";
				};

        class Spanish_News_Radio {
					name = "FCLA - Radio (noticias en español)";
					value = "FCLA_SFX_Spanish_News_Radio";
				};

        class English_Military_Radio_v1 {
					name = "FCLA - Radio militar (inglesa v1)";
					value = "FCLA_SFX_English_Military_Radio_v1";
				};

        class English_Military_Radio_v2 {
					name = "FCLA - Radio militar (inglesa v2)";
					value = "FCLA_SFX_English_Military_Radio_v2";
				};

        class Russian_Military_Radio {
					name = "FCLA - Radio militar (rusa)";
					value = "FCLA_SFX_Russian_Military_Radio";
				};

        class German_Military_Radio {
					name = "FCLA - Radio militar (alemana)";
					value = "FCLA_SFX_German_Military_Radio";
				};

        class Japanese_Military_Radio {
					name = "FCLA - Radio militar (japonesa)";
					value = "FCLA_SFX_Japanese_Military_Radio";
				};

        class Insurgent_Military_Radio_v1 {
					name = "FCLA - Radio militar (insurgente v1)";
					value = "FCLA_SFX_Insurgent_Military_Radio_v1";
				};

        class Insurgent_Military_Radio_v2 {
					name = "FCLA - Radio militar (insurgente v2)";
					value = "FCLA_SFX_Insurgent_Military_Radio_v2";
				};

        class Insurgent_Speech {
					name = "FCLA - Discurso insurgente (megáfono)";
					value = "FCLA_SFX_Insurgent_Speech";
				};

        class Call_To_Prayer_Speech {
					name = "FCLA - Llamado a la oración (megáfono)";
					value = "FCLA_SFX_Call_To_Prayer_Speech";
				};

        class Speaker_Curfew {
					name = "FCLA - Toque de queda (altavoz)";
					value = "FCLA_SFX_Speaker_Curfew";
				};

        class Battlefield_Sniper_Suppression {
					name = "FCLA - Supresión de francotirador";
					value = "FCLA_SFX_Battlefield_Sniper_Suppression";
				};

        class Battlefield_Fire_Fight_Rifles {
					name = "FCLA - Campo de batalla (rifles)";
					value = "FCLA_SFX_Battlefield_Fire_Fight_Rifles";
				};

        class Battlefield_Fire_Fight_Rifles_Far {
					name = "FCLA - Campo de batalla (rifles - distante)";
					value = "FCLA_SFX_Battlefield_Fire_Fight_Rifles_Far";
				};

        class Battlefield_Fire_Fight_v1 {
					name = "FCLA - Campo de batalla (v1)";
					value = "FCLA_SFX_Battlefield_Fire_Fight_v1";
				};

        class Battlefield_Fire_Fight_v2 {
					name = "FCLA - Campo de batalla (v2)";
					value = "FCLA_SFX_Battlefield_Fire_Fight_v2";
				};

        class Battlefield_Fire_Fight_v3 {
					name = "FCLA - Campo de batalla (v3)";
					value = "FCLA_SFX_Battlefield_Fire_Fight_v3";
				};

        class Battlefield_Fire_Fight_Urban {
					name = "FCLA - Campo de batalla (urbano)";
					value = "FCLA_SFX_Battlefield_Fire_Fight_Urban";
				};

        class IED_Ring {
					name = "FCLA - Tono de llamada (IED)";
					value = "FCLA_SFX_IED_Ring";
				};

        class Generator_v1 {
					name = "FCLA - Generador (v1)";
					value = "FCLA_SFX_Generator_v1";
				};

        class Generator_v2 {
					name = "FCLA - Generador (v2)";
					value = "FCLA_SFX_Generator_v2";
				};

        class Generator_v3 {
					name = "FCLA - Generador (v3)";
					value = "FCLA_SFX_Generator_v3";
				};

        class Burning_Vehicle {
					name = "FCLA - Vehículo en llamas";
					value = "FCLA_SFX_Burning_Vehicle";
				};

        class Barking_Dogs_v1 {
					name = "FCLA - Perros ladrando (v1)";
					value = "FCLA_SFX_Barking_Dogs_v1";
				};

        class Barking_Dogs_v2 {
					name = "FCLA - Perros ladrando (v2)";
					value = "FCLA_SFX_Barking_Dogs_v2";
				};

        class Attempt_Start_Vehicle {
					name = "FCLA - Intento de encender vehículo";
					value = "FCLA_SFX_Attempt_Start_Vehicle";
				};
			};
		};

    class FCLA_Loop: CheckBox {
      tooltip = "Si se activa el sonido se repetira una vez haya concluido.";
      typeName = "BOOL";
      property = "FCLA_Sound_On_Loop";
      displayName = "¿Reproducir en bucle?";
      defaultValue = "false";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Reproduce de manera tridimensional el sonido seleccionado.<br/><br/>• Si el módulo esta sincronizado únicamente a una entidad (objeto, unidad, vehículo, etc.) esta sera tomada como origen del sonido. Sin embargo si hay más de una entidad sincronizada ó ninguna, se tomara como origen al módulo."};
	};
};
