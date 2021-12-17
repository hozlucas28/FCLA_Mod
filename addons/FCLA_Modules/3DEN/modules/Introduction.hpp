
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una introducción animada al comienzo del escenario.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Introduction: Module_F {
  author = "hozlucas28";
	displayName = "Introducción";
  icon = "\FCLA_Modules\3DEN\data\Tag.paa";
  portrait = "\FCLA_Modules\3DEN\data\Tag.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setIntroduction3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_NOT_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
		class FCLA_Title: Edit {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Title";
      displayName = "Título";
      defaultValue = "''";
		};

    class FCLA_Subtitle: Edit {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Subtitle";
      displayName = "Subtítulo";
      defaultValue = "''";
		};

    class FCLA_Introductory_Video: Edit {
      tooltip = "Directorio del video a reproducir.";
      typeName = "STRING";
      property = "FCLA_Introductory_Video";
      displayName = "Video introductorio";
      defaultValue = "''";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Reproduce una introducción animada al comienzo del escenario.<br/><br/>• Si el título y/o subtítulo no son definidos únicamente se mostrara el video introductorio, el cual es opcional."};
	};
};