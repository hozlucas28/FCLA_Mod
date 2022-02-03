
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea tres modulos para agregar acciones ACE 3D asociadas a las entidades que
 * tengan un mismo classname, una entidad en especifico o a los Zeus.
 *
 * Public: [No]
---------------------------------------------------------------------------- */



/* ------------------------------- CLASSNAME ------------------------------- */

class FCLA_Module_ACE_Class_Action: Module_F {
  author = "hozlucas28";
	displayName = "Crear accion (ACE - classname)";
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
      tooltip = "Nombre que tendra la accion.";
      typeName = "STRING";
      property = "FCLA_Name";
      displayName = "Nombre";
      defaultValue = "''";
		};

    class FCLA_Icon: Edit {
      tooltip = "Icono de la accion, opcional.\n- Se recomienda que el tamano sea de 32x32 en formato '.paa'.";
      typeName = "STRING";
      property = "FCLA_Icon";
      displayName = "Icono";
      defaultValue = "''";
		};

    class FCLA_Condition: Edit {
      tooltip = "Condicion/es que se deben cumplir para que la accion se muestre.\n- Variables reservadas:\n - _target = entidad asociada a la accion.\n - _player = unidad que ejecuta la accion.";
      typeName = "STRING";
      property = "FCLA_Condition";
      displayName = "Condicion/es";
      defaultValue = "''";
		};

    class FCLA_Statement: Edit {
      tooltip = "Codigo que se ejecutara al seleccionar la accion.\n- Variables reservadas:\n - _target = entidad asociada a la accion.\n - _player = unidad que ejecuta la accion.";
      typeName = "STRING";
      property = "FCLA_Statement";
      displayName = "Sentencia/s";
      defaultValue = "''";
		};

    class FCLA_Associated_Classname: Edit {
      tooltip = "Classname al que se le asociara la accion, opcional.\n- Si no se define ningun classname, se le asociara la accion a la entidad sincronizada solo si es la unica sincronizada al modulo.";
      typeName = "STRING";
      property = "FCLA_Associated_Classname";
      displayName = "Classname";
      defaultValue = "''";
		};

    class FCLA_Type_Of_Action: Combo {
      tooltip = "- Propia: solo la entidad asociada tiene acceso a la accion.\n- Externa: todas las entidades ajenas a la asociada tienen acceso a la accion.";
      typeName = "NUMBER";
      property = "FCLA_Type_Of_Action";
      displayName = "Tipo de accion";
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
      tooltip = "Determina en que accion padre se colocara la accion que queremos crear.\n- Por ejemplo:\n- Accion externa = ['ACE_MainActions']\n- Accion propia = ['ACE_SelfActions', 'ACE_Equipment']";
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
      "Crea una accion ACE 3D asociada a las entidades que tengan el mismo classname.",
      "- Mas informacion: <a href='https://ace3mod.com/wiki/framework/interactionMenu-framework.html'>https://ace3mod.com/wiki/framework/interactionMenu-framework.html</a>"
    };
	};
};



/* -------------------------------- OBJETO --------------------------------- */

class FCLA_Module_ACE_Object_Action: Module_F {
  author = "hozlucas28";
	displayName = "Crear accion (ACE - objeto)";
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
      tooltip = "Nombre que tendra la accion.";
      typeName = "STRING";
      property = "FCLA_Name";
      displayName = "Nombre";
      defaultValue = "''";
		};

    class FCLA_Icon: Edit {
      tooltip = "Icono de la accion, opcional.\n- Se recomienda que el tamano sea de 32x32 en formato '.paa'.";
      typeName = "STRING";
      property = "FCLA_Icon";
      displayName = "Icono";
      defaultValue = "''";
		};

    class FCLA_Condition: Edit {
      tooltip = "Determina que condicion/es deben cumplirse para que la accion se muestre.\n- Variables reservadas:\n - _target = entidad asociada a la accion.\n - _player = unidad que ejecuta la accion.";
      typeName = "STRING";
      property = "FCLA_Condition";
      displayName = "Condicion/es";
      defaultValue = "''";
		};

    class FCLA_Statement: Edit {
      tooltip = "Determina el codigo que se ejecutara al seleccionar la accion.\n- Variables reservadas:\n - _target = entidad asociada a la accion.\n - _player = unidad que ejecuta la accion.";
      typeName = "STRING";
      property = "FCLA_Statement";
      displayName = "Sentencia/s";
      defaultValue = "''";
		};

    class FCLA_Associated_Object: Edit {
      tooltip = "Variable de la entidad a la que se le asociara la accion, opcional.\n- Si no se define ninguna variable, se le asociara la accion a la entidad sincronizada solo si es la unica sincronizada al modulo.";
      typeName = "STRING";
      property = "FCLA_Associated_Object";
      displayName = "Variable";
      defaultValue = "''";
		};

    class FCLA_Type_Of_Action: Combo {
      tooltip = "- Propia: solo la entidad asociada tiene acceso a la accion.\n- Externa: todas las entidades ajenas a la asociada tienen acceso a la accion.";
      typeName = "NUMBER";
      property = "FCLA_Type_Of_Action";
      displayName = "Tipo de accion";
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
      tooltip = "Determina en que accion padre se colocara la accion que queremos crear.\n- Por ejemplo:\n- Accion externa = ['ACE_MainActions']\n- Accion propia = ['ACE_SelfActions', 'ACE_Equipment']";
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
      "Crea una accion ACE 3D asociada a una entidad especifica.",
      "- Mas informacion: <a href='https://ace3mod.com/wiki/framework/interactionMenu-framework.html'>https://ace3mod.com/wiki/framework/interactionMenu-framework.html</a>"
    };
	};
};



/* --------------------------------- ZEUS ---------------------------------- */

class FCLA_Module_ACE_Zeus_Action: Module_F {
  author = "hozlucas28";
	displayName = "Crear accion (ACE - Zeus)";
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
      tooltip = "Nombre que tendra la accion.";
      typeName = "STRING";
      property = "FCLA_Name";
      displayName = "Nombre";
      defaultValue = "''";
		};

    class FCLA_Icon: Edit {
      tooltip = "Icono de la accion, opcional.\n- Se recomienda que el tamano sea de 32x32 en formato '.paa'.";
      typeName = "STRING";
      property = "FCLA_Icon";
      displayName = "Icono";
      defaultValue = "''";
		};

    class FCLA_Condition: Edit {
      tooltip = "Determina que condicion/es deben cumplirse para que la accion se muestre.\n- Variables reservadas:\n - _target = entidad asociada a la accion.\n - _player = unidad que ejecuta la accion.";
      typeName = "STRING";
      property = "FCLA_Condition";
      displayName = "Condicion/es";
      defaultValue = "''";
		};

    class FCLA_Statement: Edit {
      tooltip = "Determina el codigo que se ejecutara al seleccionar la accion.\n- Variables reservadas:\n - _target = entidad asociada a la accion.\n - _player = unidad que ejecuta la accion.";
      typeName = "STRING";
      property = "FCLA_Statement";
      displayName = "Sentencia/s";
      defaultValue = "''";
		};

    class FCLA_Parent_Path: Edit {
      tooltip = "Determina en que accion padre se colocara la accion que queremos crear.\n- Por ejemplo: ['ACE_ZeusActions']";
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
      "Crea una accion ACE 3D asociada a los Zeus, disponible cuando se encuentran en la camara del Zeus.",
      "- Mas informacion: <a href='https://ace3mod.com/wiki/framework/interactionMenu-framework.html'>https://ace3mod.com/wiki/framework/interactionMenu-framework.html</a>"
    };
	};
};
