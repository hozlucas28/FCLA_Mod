
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea tres módulos para agregar acciones ACE 3D asociadas a un classname, un
 * objeto ó a los Zeus.
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
	function = "FCLA_Modules_fnc_createACEClassAction3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    //Action name <EDIT TO STRING>
    //Name of the action shown in the menu <EDIT TO STRING>
    //Icon, opcional <EDIT TO STRING>
    //Statement <EDIT TO CODE>
    //Condition <EDIT TO CODE>

    //TypeOf of the class, opcional <EDIT TO TYPEOF VARIABLE OR TYPEOF SYNC OBJECT/S>
    //Type of action, 0 for actions, 1 for self-actions, opcional <CHECKBOXNUMBER TO NUMBER>
    //Parent path of the new action <EDIT TO ARRAY OF STRINGS>
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Crea una acción ACE 3D asociada a un classname."};
	};
};



/* -------------------------------- OBJETO --------------------------------- */

class FCLA_Module_ACE_Object_Action: Module_F {
  author = "hozlucas28";
	displayName = "Crear acción (ACE - objeto)";
  icon = "\FCLA_Modules\3DEN\data\ACE_Interaction.paa";
  portrait = "\FCLA_Modules\3DEN\data\ACE_Interaction.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_createACEObjectAction3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    //Action name <EDIT TO STRING>
    //Name of the action shown in the menu <EDIT TO STRING>
    //Icon, opcional <EDIT TO STRING>
    //Statement <EDIT TO CODE>
    //Condition <EDIT TO CODE>

    //Object the action should be assigned to, opcional <EDIT TO VARIABLE OR SYNC OBJECT/S>
    //Type of action, 0 for actions, 1 for self-actions, opcional <CHECKBOXNUMBER TO NUMBER>
    //Parent path of the new action <EDIT TO ARRAY OF STRINGS>
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Crea una acción ACE 3D asociada a una entidad."};
	};
};



/* --------------------------------- ZEUS ---------------------------------- */

class FCLA_Module_ACE_Zeus_Action: Module_F {
  author = "hozlucas28";
	displayName = "Crear acción (ACE - Zeus)";
  icon = "\FCLA_Modules\3DEN\data\ACE_Interaction.paa";
  portrait = "\FCLA_Modules\3DEN\data\ACE_Interaction.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_createACEZeusAction3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    //Action name <EDIT TO STRING>
    //Name of the action shown in the menu <EDIT TO STRING>
    //Icon, opcional <EDIT TO STRING>
    //Statement <EDIT TO CODE>
    //Condition <EDIT TO CODE>

    //Parent path of the new action <EDIT TO ARRAY OF STRINGS>
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Crea una acción ACE 3D asociada a los Zeus."};
	};
};
