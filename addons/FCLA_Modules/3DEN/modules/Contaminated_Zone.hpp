
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea areas contaminadas.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_CBRN_Contaminated_Zone: Module_F {
  author = "hozlucas28";
	displayName = "Zona contaminada (CBRN)";
  icon = "\FCLA_Modules\3DEN\data\Contaminated_Zone.paa";
  portrait = "\FCLA_Modules\3DEN\data\Contaminated_Zone.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setCBRNContaminatedZone3DEN";
	isGlobal = 0;
  canSetArea = 1;
  isDisposable = 1;
  canSetAreaShape = 1;
  canSetAreaHeight = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Threat_Level: Combo {
      tooltip = "- Nivel 1: se necesita mascara de oxigeno compatible.\n- Nivel 2: se necesita mascara y mochila con oxigeno compatibles.\n- Nivel 3: se necesita mascara, mochila con oxigeno y un traje NRBQ compatibles.\n- Nivel 4: no hay equipamiento que brinde proteccion alguna.";
      typeName = "NUMBER";
      property = "FCLA_Threat_Level";
      displayName = "Nivel de amenaza";
      defaultValue = 1;

     class Values {
       class One {
         name = "1";
         value = 1;
       };

       class Two {
         name = "2";
         value = 2;
       };

       class Three {
         name = "3";
         value = 3;
       };

       class Four {
         name = "4";
         value = 4;
       };
     };
   };
		class ModuleDescription: ModuleDescription {};
	};

  class AttributeValues {
    isRectangle = 0;
    size3[] = {50, 50, 50};
  };

	class ModuleDescription: ModuleDescription {
    sync[] = {"EmptyDetector"};
		description[] =	{
      "Crea areas contaminadas donde se tendra que utilizar un equipamiento correcto, que puede ser definido por el modulo: 'Configuracion CBRN'.",
      "",
      "- Si colocas -1, en los tamanos de la zona, todo el mapa se vera afectado."
    };
	};
};


class FCLA_Module_CBRN_Contaminated_Zone_Empty: FCLA_Module_CBRN_Contaminated_Zone {
  function = "";
  scope = 1;
};
