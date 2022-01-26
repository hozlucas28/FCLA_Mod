
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea tres módulos para agregar acciones ACE 3D asociadas a las entidades que
 * tengan un mismo classname, una entidad en específico ó a los Zeus.
 *
 * Public: [No]
---------------------------------------------------------------------------- */



/* ------------------------------- CLASSNAME ------------------------------- */

class FCLA_Module_ACE_Class_Action: Module_F {
  author = "hozlucas28";
	displayName = "Crear acción (ACE - classname)";
  icon = "\FCLA_Modules\3DEN\data\ACE_Interaction.paa";
  portrait = "\FCLA_Modules\3DEN\data\ACE_Interaction.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_createACEClassnameAction3DEN";
	isGlobal = 0;
  isDisposable = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Name: Edit {
      tooltip = "Nombre que tendra la acción.";
      typeName = "STRING";
      property = "FCLA_Name";
      displayName = "Nombre";
      defaultValue = "''";
		};

    class FCLA_Icon: Edit {
      tooltip = "Icono de la acción, opcional.\n• Se recomienda que el tamaño sea de 32x32 en formato '.paa'.";
      typeName = "STRING";
      property = "FCLA_Icon";
      displayName = "Icono";
      defaultValue = "''";
		};

    class FCLA_Condition: Edit {
      tooltip = "Condición/es que se deben cumplir para que la acción se muestre.\n• Variables reservadas:\n - _target = entidad asociada a la acción.\n - _player = unidad que ejecuta la acción.";
      typeName = "STRING";
      property = "FCLA_Condition";
      displayName = "Condición/es";
      defaultValue = "''";
		};

    class FCLA_Statement: Edit {
      tooltip = "Código que se ejecutara al seleccionar la acción.\n• Variables reservadas:\n - _target = entidad asociada a la acción.\n - _player = unidad que ejecuta la acción.";
      typeName = "STRING";
      property = "FCLA_Statement";
      displayName = "Sentencia/s";
      defaultValue = "''";
		};

    class FCLA_Associated_Classname: Edit {
      tooltip = "Classname al que se le asociara la acción, opcional.\n• Si no se define ningún classname, se le asociara la acción a la entidad sincronizada solo si es la única sincronizada al módulo.";
      typeName = "STRING";
      property = "FCLA_Associated_Classname";
      displayName = "Classname";
      defaultValue = "''";
		};

    class FCLA_Type_Of_Action: Combo {
      tooltip = "• Propia: solo la entidad asociada tiene acceso a la acción.\n• Externa: todas las entidades ajenas a la asociada tienen acceso a la acción.";
      typeName = "NUMBER";
      property = "FCLA_Type_Of_Action";
      displayName = "Tipo de acción";
      defaultValue = 1;

			class Values {
        class Self {
					name = "Propia";
					value = 1;
				};

				class External {
					name = "Externa";
					value = 0;
				};
			};
		};

    class FCLA_Parent_Path: Edit {
      tooltip = "Determina en que acción padre se colocara la acción que queremos crear.\n• Por ejemplo:\n- Acción externa = ['ACE_MainActions']\n- Acción propia = ['ACE_SelfActions', 'ACE_Equipment']";
      typeName = "STRING";
      property = "FCLA_Parent_Path";
      displayName = "Padres";
      defaultValue = "''";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
    sync[] = {"AnyBrain", "AnyVehicle", "EmptyDetector", "AnyStaticObject"};
		description[] =	{
      "Crea una acción ACE 3D asociada a las entidades que tengan el mismo classname.",
      "• Más información: <a href='https://ace3mod.com/wiki/framework/interactionMenu-framework.html'>https://ace3mod.com/wiki/framework/interactionMenu-framework.html</a>"
    };
	};
};



/* -------------------------------- OBJETO --------------------------------- */

class FCLA_Module_ACE_Object_Action: Module_F {
  author = "hozlucas28";
	displayName = "Crear acción (ACE - objeto)";
  icon = "\FCLA_Modules\3DEN\data\ACE_Interaction_Object.paa";
  portrait = "\FCLA_Modules\3DEN\data\ACE_Interaction_Object.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_createACEObjectAction3DEN";
	isGlobal = 0;
  isDisposable = 1;
  isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Name: Edit {
      tooltip = "Nombre que tendra la acción.";
      typeName = "STRING";
      property = "FCLA_Name";
      displayName = "Nombre";
      defaultValue = "''";
		};

    class FCLA_Icon: Edit {
      tooltip = "Icono de la acción, opcional.\n• Se recomienda que el tamaño sea de 32x32 en formato '.paa'.";
      typeName = "STRING";
      property = "FCLA_Icon";
      displayName = "Icono";
      defaultValue = "''";
		};

    class FCLA_Condition: Edit {
      tooltip = "Determina que condición/es deben cumplirse para que la acción se muestre.\n• Variables reservadas:\n - _target = entidad asociada a la acción.\n - _player = unidad que ejecuta la acción.";
      typeName = "STRING";
      property = "FCLA_Condition";
      displayName = "Condición/es";
      defaultValue = "''";
		};

    class FCLA_Statement: Edit {
      tooltip = "Determina el código que se ejecutara al seleccionar la acción.\n• Variables reservadas:\n - _target = entidad asociada a la acción.\n - _player = unidad que ejecuta la acción.";
      typeName = "STRING";
      property = "FCLA_Statement";
      displayName = "Sentencia/s";
      defaultValue = "''";
		};

    class FCLA_Associated_Object: Edit {
      tooltip = "Variable de la entidad a la que se le asociara la acción, opcional.\n• Si no se define ningúna variable, se le asociara la acción a la entidad sincronizada solo si es la única sincronizada al módulo.";
      typeName = "STRING";
      property = "FCLA_Associated_Object";
      displayName = "Variable";
      defaultValue = "''";
		};

    class FCLA_Type_Of_Action: Combo {
      tooltip = "• Propia: solo la entidad asociada tiene acceso a la acción.\n• Externa: todas las entidades ajenas a la asociada tienen acceso a la acción.";
      typeName = "NUMBER";
      property = "FCLA_Type_Of_Action";
      displayName = "Tipo de acción";
      defaultValue = 1;

			class Values {
        class Self {
					name = "Propia";
					value = 1;
				};

				class External {
					name = "Externa";
					value = 0;
				};
			};
		};

    class FCLA_Parent_Path: Edit {
      tooltip = "Determina en que acción padre se colocara la acción que queremos crear.\n• Por ejemplo:\n- Acción externa = ['ACE_MainActions']\n- Acción propia = ['ACE_SelfActions', 'ACE_Equipment']";
      typeName = "STRING";
      property = "FCLA_Parent_Path";
      displayName = "Padres";
      defaultValue = "''";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
    sync[] = {"AnyBrain", "AnyVehicle", "EmptyDetector", "AnyStaticObject"};
		description[] =	{
      "Crea una acción ACE 3D asociada a una entidad específica.",
      "• Más información: <a href='https://ace3mod.com/wiki/framework/interactionMenu-framework.html'>https://ace3mod.com/wiki/framework/interactionMenu-framework.html</a>"
    };
	};
};



/* --------------------------------- ZEUS ---------------------------------- */

class FCLA_Module_ACE_Zeus_Action: Module_F {
  author = "hozlucas28";
	displayName = "Crear acción (ACE - Zeus)";
  icon = "\FCLA_Modules\3DEN\data\ACE_Interaction_Zeus.paa";
  portrait = "\FCLA_Modules\3DEN\data\ACE_Interaction_Zeus.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_createACEZeusAction3DEN";
	isGlobal = 0;
  isDisposable = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Name: Edit {
      tooltip = "Nombre que tendra la acción.";
      typeName = "STRING";
      property = "FCLA_Name";
      displayName = "Nombre";
      defaultValue = "''";
		};

    class FCLA_Icon: Edit {
      tooltip = "Icono de la acción, opcional.\n• Se recomienda que el tamaño sea de 32x32 en formato '.paa'.";
      typeName = "STRING";
      property = "FCLA_Icon";
      displayName = "Icono";
      defaultValue = "''";
		};

    class FCLA_Condition: Edit {
      tooltip = "Determina que condición/es deben cumplirse para que la acción se muestre.\n• Variables reservadas:\n - _target = entidad asociada a la acción.\n - _player = unidad que ejecuta la acción.";
      typeName = "STRING";
      property = "FCLA_Condition";
      displayName = "Condición/es";
      defaultValue = "''";
		};

    class FCLA_Statement: Edit {
      tooltip = "Determina el código que se ejecutara al seleccionar la acción.\n• Variables reservadas:\n - _target = entidad asociada a la acción.\n - _player = unidad que ejecuta la acción.";
      typeName = "STRING";
      property = "FCLA_Statement";
      displayName = "Sentencia/s";
      defaultValue = "''";
		};

    class FCLA_Parent_Path: Edit {
      tooltip = "Determina en que acción padre se colocara la acción que queremos crear.\n• Por ejemplo: ['ACE_ZeusActions']";
      typeName = "STRING";
      property = "FCLA_Parent_Path";
      displayName = "Padres";
      defaultValue = "''";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
    sync[] = {"EmptyDetector"};
		description[] =	{
      "Crea una acción ACE 3D asociada a los Zeus, disponible cuando se encuentran en la cámara del Zeus.",
      "• Más información: <a href='https://ace3mod.com/wiki/framework/interactionMenu-framework.html'>https://ace3mod.com/wiki/framework/interactionMenu-framework.html</a>"
    };
	};
};
