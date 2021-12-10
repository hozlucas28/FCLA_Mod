
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica las radios de los vehículos sincronizados.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Radio: Module_F {
  author = "hozlucas28";
	displayName = "Modificar radio (TFAR)";
  icon = "\FCLA_Modules\3DEN\data\Radio.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setRadio3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  isDisposable = UNREPEATABLE;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Has_Radio: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_Has_Radio";
      displayName = "Radio";
      defaultValue = "true";
		};

    class FCLA_Radio_Side: Combo {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Radio_Side";
      displayName = "Bando";
      defaultValue = """west""";

			class Values {
				class Side_West {
					name = "BLUFOR";
					value = "west";
				};

				class Side_East {
					name = "OPFOR";
					value = "east";
				};

				class Side_Independant {
					name = "Independiente";
					value = "guer";
				};
			};
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Añade/Modifica las radios de los vehículos sincronizados al módulo."};
	};
};
