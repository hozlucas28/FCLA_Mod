
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un mensaje a modo de subtitulo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Show_Subtitle: Module_F {
  author = "hozlucas28";
	displayName = "Mostrar subtitulo [BETA]";
  icon = "\FCLA_Modules\3DEN\data\Chat.paa";
  portrait = "\FCLA_Modules\3DEN\data\Chat.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_showSubtitle3DEN";
	isGlobal = 0;
  canSetArea = 1;
  isDisposable = 1;
  canSetAreaShape = 1;
  canSetAreaHeight = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
		class FCLA_Emitter: Edit {
      tooltip = "Nombre del emisor.";
      typeName = "STRING";
      property = "FCLA_Emitter";
      displayName = "Emisor";
      defaultValue = "''";
		};

    class FCLA_Subtitle: Edit {
      tooltip = "Mensaje que se mostrara a modo de subtitulo.";
      typeName = "STRING";
      property = "FCLA_Subtitle";
      displayName = "Subtitulo";
      defaultValue = "''";
		};

    class FCLA_Color: Combo {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Color";
      displayName = "Color";
      defaultValue = """SIDE""";

			class Values {
				class Side {
					name = "Side";
					value = "SIDE";
				};

        class Vehicle {
					name = "Vehicle";
					value = "VEHICLE";
				};

        class Command {
					name = "Command";
					value = "COMMAND";
				};

        class Group {
					name = "Group";
					value = "GROUP";
				};

        class Direct {
					name = "Direct";
					value = "DIRECT";
				};

        class System {
					name = "System";
					value = "SYSTEM";
				};

        class West {
					name = "BLUFOR";
					value = "BLUFOR";
				};

        class East {
					name = "OPFOR";
					value = "OPFOR";
				};

        class Independant {
					name = "Independant";
					value = "INDEPENDANT";
				};

        class Civilian {
					name = "Civilian";
					value = "CIVILIAN";
				};
			};
		};

    class FCLA_Time_To_Hide: Edit {
      tooltip = "Tiempo en segundos para ocultar el mensaje.";
      typeName = "NUMBER";
      property = "FCLA_Time_To_Hide";
      displayName = "Tiempo";
      defaultValue = 5;
		};

    class FCLA_Repeatable: CheckBox {
      tooltip = "Si se activa el mensaje se repetira cuando la unidad vuelva a estar dentro de los tamanos del modulo.\n- Si todos los tamanos son -1, el mensaje no se repetira.";
      typeName = "BOOL";
      property = "FCLA_Repeatable";
      displayName = "Repetible";
      defaultValue = "false";
		};

    class FCLA_Need_Short_Radio: CheckBox {
      tooltip = "Si se activa unicamente aquellas unidades que posean radio de onda corta podran ver los subtitulos.";
      typeName = "BOOL";
      property = "FCLA_Need_Short_Radio";
      displayName = "Necesita radio corta";
      defaultValue = "false";
		};

    class FCLA_Need_Long_Radio: CheckBox {
      tooltip = "Si se activa unicamente aquellas unidades que posean radio de onda larga podran ver los subtitulos.";
      typeName = "BOOL";
      property = "FCLA_Need_Long_Radio";
      displayName = "Necesita radio larga";
      defaultValue = "false";
		};

    class FCLA_Side: Combo {
      tooltip = "Determina a que bando debe pertenecer la unidad para ver el mensaje.";
      typeName = "STRING";
      property = "FCLA_Side";
      displayName = "Seleccionar bando";
      defaultValue = """ALL""";

			class Values {
        class All {
					name = "Todos";
					value = "ALL";
				};

				class West {
					name = "BLUFOR";
					value = "BLUFOR";
				};

				class East {
					name = "OPFOR";
					value = "OPFOR";
				};

				class Independant {
					name = "Independiente";
					value = "INDEPENDANT";
				};

        class Civilian {
					name = "Civil";
					value = "CIVILIAN";
				};
			};
		};
		class ModuleDescription: ModuleDescription {};
	};

  class AttributeValues {
    isRectangle = 0;
    size3[] = {5, 5, 2};
  };

	class ModuleDescription: ModuleDescription {
    sync[] = {"AnyBrain", "AnyVehicle", "EmptyDetector", "AnyStaticObject"};
		description[] =	{
      "Genera un mensaje a modo de subtitulo.",
      "",
      "- Los tamanos del modulo determinan el area en el cual debe estar la unidad para ver el mensaje. Si todos son -1 se asumira que la unidad esta dentro del area.",
      "- Si sincronizas unicamente una entidad (objeto, unidad, vehiculo, etc.) al modulo, esta se tomara como origen/centro del area. Sin embargo si hay mas de una entidad sincronizada o ninguna, se tomara como origen al modulo."
    };
	};
};
