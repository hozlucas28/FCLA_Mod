
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera una señal de humo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Smoke_Signal: Module_F {
  author = "hozlucas28";
	displayName = "Señal de humo";
  icon = "\FCLA_Modules\3DEN\data\Smoke.paa";
  portrait = "\FCLA_Modules\3DEN\data\Smoke.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_spawnSmokeSignal3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Color: Combo {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Color";
      displayName = "Color";
      defaultValue = """red""";

			class Values {
				class Red_Color {
					name = "Rojo";
					value = "red";
				};

				class Blue_Color {
					name = "Azul";
					value = "blue";
				};

				class Green_Color {
					name = "Verde";
					value = "green";
				};

        class Purple_Color {
					name = "Morado";
					value = "purple";
				};

        class White_Color {
					name = "Blanco";
					value = "white";
				};

        class Orange_Color {
					name = "Naranja";
					value = "orange";
				};

        class Yellow_Color {
					name = "Amarillo";
					value = "yellow";
				};
			};
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Genera una señal de humo en la posición del módulo."};
	};
};
