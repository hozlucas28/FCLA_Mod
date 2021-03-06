
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Fuerza a los vehiculos a disparar hacia el cielo.
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
	isGlobal = 1;
  isDisposable = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Weapon: Edit {
      tooltip = "Classname del arma.\n- Si desea conocer los classnames de las armas que posee el vehiculo utilize el script: weapons _vehicle;";
      typeName = "STRING";
      property = "FCLA_Weapon";
      displayName = "Arma";
      defaultValue = "''";
		};

    class FCLA_Ammo: Edit {
      tooltip = "Classname de la municion.\n- Si desea conocer los classnames de las municiones que posee el vehiculo utilize el script: magazines _vehicle;";
      typeName = "STRING";
      property = "FCLA_Ammo";
      displayName = "Municion";
      defaultValue = "''";
		};

    class FCLA_Minimum_Shots: Edit {
      tooltip = "Cantidad minima de disparos que se efectuaran.";
      typeName = "NUMBER";
      property = "FCLA_Minimum_Shots";
      displayName = "Minimo de disparos";
      defaultValue = 10;
		};

    class FCLA_Maximum_Shots: Edit {
      tooltip = "Cantidad maxima de disparos que se efectuaran.";
      typeName = "NUMBER";
      property = "FCLA_Maximum_Shots";
      displayName = "Maximo de disparos";
      defaultValue = 20;
		};

    class FCLA_Minimum_Delay: Edit {
      tooltip = "Tiempo minimo (en segundos) para repetir disparos.";
      typeName = "NUMBER";
      property = "FCLA_Minimum_Delay";
      displayName = "Tiempo minimo";
      defaultValue = 4;
		};

    class FCLA_Maximum_Delay: Edit {
      tooltip = "Tiempo maximo (en segundos) para repetir disparos.";
      typeName = "NUMBER";
      property = "FCLA_Maximum_Delay";
      displayName = "Tiempo maximo";
      defaultValue = 8;
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
    sync[] = {"AnyVehicle", "EmptyDetector"};
		description[] =	{
      "Permite forzar los vehiculos sincronizados al modulo a disparar hacia el cielo.",
      "",
      "- El modulo solo puede estar sincronizado a un unico vehiculo.",
      "- Si desea detener los disparos ambientales bastara con borrar el modulo correspondiente."
    };
	};
};


class FCLA_Module_Ambient_Fired_Empty: FCLA_Module_Ambient_Fired {
  function = "";
  scope = 1;
};
