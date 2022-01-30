
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera el efecto seleccionado en la posición del módulo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Spawn_Effect: Module_F {
  author = "hozlucas28";
	displayName = "Generar efecto (BETA)";
  icon = "\FCLA_Modules\3DEN\data\Common.paa";
  portrait = "\FCLA_Modules\3DEN\data\Common.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setEffect3DEN";
	isGlobal = 0;
  isDisposable = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Effect: Combo {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Effect";
      displayName = "Seleccionar efecto";
      defaultValue = """smoke""";

			class Values {
        class Smoke {
					name = "Humo";
					value = "smoke";
				};

        class Fire {
					name = "Fuego";
					value = "fire";
				};

				class Sparks {
					name = "Chispas";
					value = "sparks";
				};

				class Fireflies {
					name = "Luciérnagas";
					value = "fireflies";
				};

				class Wind_Gust {
					name = "Ráfaga de viento";
					value = "wind_gust";
				};
			};
    };

		class FCLA_Delay: Edit {
      tooltip = "Segundos para que se repita el efecto.\n• Solo funciona con las chispas y la ráfaga de viento.";
      typeName = "NUMBER";
      property = "FCLA_Delay";
      displayName = "Tiempo";
      defaultValue = 15;
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
    sync[] = {"EmptyDetector"};
		description[] =	{"Genera el efecto seleccionado en la posición del módulo."};
	};
};


class FCLA_Module_Spawn_Effect_Empty: FCLA_Module_Spawn_Effect {
  function = "";
  scope = 1;
};
