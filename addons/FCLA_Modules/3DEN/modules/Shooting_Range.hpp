
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica los objetivos del campo de tiro para que sean funcionales.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Shooting_Range: Module_F {
  author = "hozlucas28";
	displayName = "Campo de tiro";
  icon = "\FCLA_Modules\3DEN\data\Shooting_Range.paa";
  portrait = "\FCLA_Modules\3DEN\data\Shooting_Range.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setShootingRange3DEN";
	isGlobal = 1;
  canSetArea = 1;
  isDisposable = 1;
  canSetAreaShape = 1;
  canSetAreaHeight = 1;
	isTriggerActivated = 0;
  scope = 2;


	class Attributes: AttributesBase {
		class ModuleDescription: ModuleDescription {};
	};

  class AttributeValues {
    isRectangle = 1;
    size3[] = {16, 16, 2};
  };

	class ModuleDescription: ModuleDescription {
    sync[] = {"EmptyDetector", "AnyStaticObject"};
		description[] =	{
      "Modifica los objetivos que se encuentran dentro del campo de tiro para que sean funcionales.",
      "",
      "- Necesitaras sincronizar un controlador para que el mismo tenga efecto, por ejemplo un portatil."
    };
	};
};
