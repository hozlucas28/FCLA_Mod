
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Fuerza a los vehículos a disparar hacia el cielo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Ambient_Fired: Module_F {
  author = "hozlucas28";
	displayName = "Asignar disparos ambientales";
  icon = "\FCLA_Modules\3DEN\data\Tracers.paa";
  portrait = "\FCLA_Modules\3DEN\data\Tracers.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setAmbientFired3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Weapon: Edit {
      tooltip = "Classname del arma.\n• Si desea conocer los classnames de las armas que posee el vehículo utilize el script: weapons _vehicle;";
      typeName = "STRING";
      property = "FCLA_Weapon";
      displayName = "Arma";
      defaultValue = "''";
		};

    class FCLA_Ammo: Edit {
      tooltip = "Classname de la munición.\n• Si desea conocer los classnames de las municiones que posee el vehículo utilize el script: magazines _vehicle;";
      typeName = "STRING";
      property = "FCLA_Ammo";
      displayName = "Munición";
      defaultValue = "''";
		};

    class FCLA_Minimum_Shots: Edit {
      tooltip = "Cantidad mínima de disparos que se efectuaran.";
      typeName = "NUMBER";
      property = "FCLA_Minimum_Shots";
      displayName = "Mínimo de disparos";
      defaultValue = 10;
		};

    class FCLA_Maximum_Shots: Edit {
      tooltip = "Cantidad máxima de disparos que se efectuaran.";
      typeName = "NUMBER";
      property = "FCLA_Maximum_Shots";
      displayName = "Máximo de disparos";
      defaultValue = 20;
		};

    class FCLA_Minimum_Delay: Edit {
      tooltip = "Tiempo mínimo (en segundos) para repetir disparos.";
      typeName = "NUMBER";
      property = "FCLA_Minimum_Delay";
      displayName = "Tiempo mínimo";
      defaultValue = 4;
		};

    class FCLA_Maximum_Delay: Edit {
      tooltip = "Tiempo máximo (en segundos) para repetir disparos.";
      typeName = "NUMBER";
      property = "FCLA_Maximum_Delay";
      displayName = "Tiempo máximo";
      defaultValue = 8;
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Permite forzar los vehículos sincronizados al módulo a disparar hacia el cielo.<br/><br/>• El módulo solo puede estar sincronizado a un único vehículo.<br/>• Si desea detener los disparos ambientales bastará con borrar el módulo correspondiente."};
	};
};
