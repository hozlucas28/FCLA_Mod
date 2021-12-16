
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite guardar la ubicación/dirección/equipamiento/vehículo de los jugadores
 * cuando se desconectan. Una vez que se reconectan se los teletransporta a la
 * posición ó vehículo donde sufrieron la desconexión.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Save_Position: Module_F {
  author = "hozlucas28";
	displayName = "Guardar ultima ubicación";
  icon = "\FCLA_Modules\3DEN\data\Save.paa";
  portrait = "\FCLA_Modules\3DEN\data\Save.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_savePosition3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_NOT_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Save_PosAndDir: CheckBox {
      tooltip = "Si se activa se guardara la ultima ubicación y dirección del jugador.";
      typeName = "BOOL";
      property = "FCLA_Save_PosAndDir";
      displayName = "¿Guardar posición y dirección?";
      defaultValue = "true";
		};

    class FCLA_Save_Loadout: CheckBox {
      tooltip = "Si se activa se guardara el loadout que tenia el jugador.";
      typeName = "BOOL";
      property = "FCLA_Save_Loadout";
      displayName = "¿Guardar equipamiento?";
      defaultValue = "true";
		};

    class FCLA_Save_Vehicle: CheckBox {
      tooltip = "Si se activa se guardara el vehículo que el jugador estaba utilizando, para asi al momento de reconectarse este sea teletransportado al mismo.";
      typeName = "BOOL";
      property = "FCLA_Save_Vehicle";
      displayName = "¿Guardar vehículo?";
      defaultValue = "true";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Permite guardar la ubicación/dirección/equipamiento/vehículo de los jugadores cuando se desconectan. Una vez que se reconectan se los teletransportara a la posición ó vehículo donde sufrieron la desconexión, según los atributos que se hayan activado."};
	};
};
