
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica las radios de los vehiculos sincronizados.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Radio: Module_F {
  author = "hozlucas28";
	displayName = "Modificar radio (TFAR)";
  icon = "\FCLA_Modules\3DEN\data\Radio.paa";
  portrait = "\FCLA_Modules\3DEN\data\Radio.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setRadio3DEN";
	isGlobal = 1;
  isDisposable = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Has_Radio: CheckBox {
      tooltip = "Si se activa se le colocara una radio al vehiculo.";
      typeName = "BOOL";
      property = "FCLA_Has_Radio";
      displayName = "Tiene radio";
      defaultValue = "true";
		};

    class FCLA_Radio_Side: Combo {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Radio_Side";
      displayName = "Bando";
      defaultValue = """west""";

			class Values {
				class West {
					name = "BLUFOR";
					value = "west";
				};

				class East {
					name = "OPFOR";
					value = "east";
				};

				class Independant {
					name = "Independiente";
					value = "guer";
				};
			};
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
    sync[] = {"AnyVehicle", "EmptyDetector"};
		description[] =	{"Anade/Modifica las radios de los vehiculos sincronizados al modulo."};
	};
};
