
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica las propiedades de los objetos sincronizados para que estos puedan
 * ser arrastrados y/o portados.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Drag_And_Carry: Module_F {
  author = "hozlucas28";
	displayName = "Modificar arrastre/portar (ACE)";
  icon = "\FCLA_Modules\3DEN\data\Edit_Object.paa";
  portrait = "\FCLA_Modules\3DEN\data\Edit_Object.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setDragAndCarry3DEN";
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
    class FCLA_Can_Drag: Combo {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Can_Drag";
      displayName = "¿Se puede arrastrar?";
      defaultValue = """TRUE""";

      class Values {
        class True {
          name = "Si";
          value = "TRUE";
        };

        class False {
          name = "No";
          value = "FALSE";
        };
      };
		};

    class FCLA_Can_Carry: Combo {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Can_Carry";
      displayName = "¿Se puede portar?";
      defaultValue = """TRUE""";

      class Values {
        class True {
          name = "Si";
          value = "TRUE";
        };

        class False {
          name = "No";
          value = "FALSE";
        };
      };
		};

    class FCLA_Ignore_Weight_Drag: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_Ignore_Weight_Drag";
      displayName = "Ignorar peso (al arrastrar)";
      defaultValue = "true";
		};

    class FCLA_Ignore_Weight_Carry: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_Ignore_Weight_Carry";
      displayName = "Ignorar peso (al portar)";
      defaultValue = "true";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Modifica las propiedades de los objetos sincronizados al módulo para que estos puedan ser arrastrados y/o portados."};
	};
};