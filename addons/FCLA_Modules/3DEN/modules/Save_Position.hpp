
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite guardar la ubicacion/direccion/equipamiento/vehiculo de los jugadores
 * cuando se desconectan. Una vez que se reconectan se los teletransporta a la
 * posicion o vehiculo donde sufrieron la desconexion.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Save_Position: Module_F {
  author = "hozlucas28";
	displayName = "Guardar ultima ubicacion";
  icon = "\FCLA_Modules\3DEN\data\Save.paa";
  portrait = "\FCLA_Modules\3DEN\data\Save.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_savePosition3DEN";
	isGlobal = 1;
  isDisposable = 1;
	isTriggerActivated = 0;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Save_PosAndDir: CheckBox {
      tooltip = "Si se activa se guardara la ultima ubicacion y direccion del jugador.";
      typeName = "BOOL";
      property = "FCLA_Save_PosAndDir";
      displayName = "Guardar posicion y direccion";
      defaultValue = "true";
		};

    class FCLA_Save_Loadout: CheckBox {
      tooltip = "Si se activa se guardara el loadout que tenia el jugador.";
      typeName = "BOOL";
      property = "FCLA_Save_Loadout";
      displayName = "Guardar equipamiento";
      defaultValue = "true";
		};

    class FCLA_Save_Vehicle: CheckBox {
      tooltip = "Si se activa se guardara el vehiculo que el jugador estaba utilizando, para asi al momento de reconectarse este sea teletransportado al mismo.";
      typeName = "BOOL";
      property = "FCLA_Save_Vehicle";
      displayName = "Guardar vehiculo";
      defaultValue = "true";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Permite guardar la ubicacion/direccion/equipamiento/vehiculo de los jugadores cuando se desconectan. Una vez que se reconectan se los teletransportara a la posicion o vehiculo donde sufrieron la desconexion, segun los atributos que se hayan activado."};
	};
};
