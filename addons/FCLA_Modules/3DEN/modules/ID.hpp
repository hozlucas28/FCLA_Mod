
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica la identificación de las unidades sincronizadas.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Set_ID: Module_F {
  author = "hozlucas28";
	displayName = "Modificar ID";
  icon = "\FCLA_Modules\3DEN\data\ID_Card.paa";
  portrait = "\FCLA_Modules\3DEN\data\ID_Card.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setID3DEN";
	isGlobal = 1;
  isDisposable = 1;
	isTriggerActivated = 1;
  scope = 2;
  scopeCurator = 1;


	class Attributes: AttributesBase {
		class FCLA_New_Name: Edit {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_New_Name";
      displayName = "Nombre";
      defaultValue = "''";
		};

    class FCLA_New_Age: Edit {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_New_Age";
      displayName = "Años";
      defaultValue = "''";
		};

    class FCLA_New_Place_Of_Birth: Edit {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_New_Place_Of_Birth";
      displayName = "Lugar de nacimiento";
      defaultValue = "''";
		};

    class FCLA_Doctor_State: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_Doctor_State";
      displayName = "¿Es médico?";
      defaultValue = "false";
		};

    class FCLA_Advanced_Enginner_State: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_Advanced_Enginner_State";
      displayName = "¿Es ingeniero?";
      defaultValue = "false";
		};

    class FCLA_EOD_State: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_EOD_State";
      displayName = "¿Es EOD?";
      defaultValue = "false";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
    sync[] = {"AnyBrain", "EmptyDetector"};
		description[] =	{"Modifica las identificaciones de las unidades sincronizadas al módulo."};
	};
};
