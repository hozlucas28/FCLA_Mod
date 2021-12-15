
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un mensaje a modo de subtítulo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Show_Subtitle: Module_F {
  author = "hozlucas28";
	displayName = "Mostrar subtítulo";
  icon = "\FCLA_Modules\3DEN\data\Chat.paa";
  portrait = "\FCLA_Modules\3DEN\data\Chat.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_showSubtitle3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = REPEATABLE;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
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
      tooltip = "Mensaje que se mostrara a modo de subtítulo.";
      typeName = "STRING";
      property = "FCLA_Subtitle";
      displayName = "Subtítulo";
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

    class FCLA_Distance_To_Show: Edit {
      tooltip = "Aquellas unidades comprendidas dentro del radio definido podrán ver el mensaje, tomando como origen del radio al módulo ó la entidad sincronizada.\n• Nota: si colocas -1 la distancia no importara.";
      typeName = "NUMBER";
      property = "FCLA_Distance_To_Show";
      displayName = "Radio / Distancia";
      defaultValue = -1;
		};

    class FCLA_Repeatable: CheckBox {
      tooltip = "Si se activa el mensaje se repetira cuando la unidad vuelva a estar dentro del 'Radio / Distancia'.<br/>• Si 'Radio / Distancia' es -1, el mensaje no se repetira.";
      typeName = "BOOL";
      property = "FCLA_Repeatable";
      displayName = "¿Repetible?";
      defaultValue = "false";
		};

    class FCLA_Need_Short_Radio: CheckBox {
      tooltip = "Si se activa únicamente aquellas unidades que posean radio de onda corta podran ver los subtítulos.";
      typeName = "BOOL";
      property = "FCLA_Need_Short_Radio";
      displayName = "¿Necesita radio corta?";
      defaultValue = "false";
		};

    class FCLA_Need_Long_Radio: CheckBox {
      tooltip = "Si se activa únicamente aquellas unidades que posean radio de onda larga podran ver los subtítulos.";
      typeName = "BOOL";
      property = "FCLA_Need_Long_Radio";
      displayName = "¿Necesita radio larga?";
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

	class ModuleDescription: ModuleDescription {
		description[] =	{"Genera un mensaje a modo de subtítulo.<br/><br/>• Si sincronizas únicamente una entidad (objeto, unidad, vehículo, etc.) al módulo, esta se tomara como origen del 'Radio / Distancia'. Sin embargo si hay más de una entidad sincronizada ó ninguna, se tomara como origen al módulo."};
	};
};
