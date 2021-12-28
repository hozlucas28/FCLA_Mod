
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite hackear los dispositivos sincronizados a travez de una acción.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Hack_Device: Module_F {
  author = "hozlucas28";
	displayName = "Dispositivo hackeable";
  icon = "\FCLA_Modules\3DEN\data\Code.paa";
  portrait = "\FCLA_Modules\3DEN\data\Code.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_hackDevice3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaShape = HAS_NOT_SETTABLE_SHAPE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;
  scopeCurator = 0;


	class Attributes: AttributesBase {
    class FCLA_Device_ID: Edit {
      tooltip = "Nombre personalizado para poder reconocer al dispositivo, cuando se le informe a los Zeus que ha sido hackeado.\n• Si no se define un identificador no se informara a los Zeus.";
      typeName = "STRING";
      property = "FCLA_Device_ID";
      displayName = "Identificador";
      defaultValue = "''";
		};

    class FCLA_Need_Hacking_Device: CheckBox {
      tooltip = "Si se activa se necesitara de un dispositivo de hackeo para realizar la acción.";
      typeName = "BOOL";
      property = "FCLA_Need_Hacking_Device";
      displayName = "¿Se necesita dispositivo?";
      defaultValue = "true";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Permite hackear el dispositivo sincronizado a travez de una acción.<br/><br/>• El módulo debe estar sincronizado únicamente a un objeto.<br/>• Una vez que el dispositivo es hackeado se le asociara la variable de tipo objeto 'FCLA_Hacked' con el valor 'true'."};
	};
};
