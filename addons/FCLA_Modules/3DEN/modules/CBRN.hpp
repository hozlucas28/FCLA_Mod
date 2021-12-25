
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea dos módulos uno para configurar el CBRN y otro para crear áreas
 * contaminadas.
 *
 * Public: [No]
---------------------------------------------------------------------------- */



/* ----------------------------- CONFIGURACIÓN ----------------------------- */

class FCLA_Module_CBRN_Configuration: Module_F {
  author = "hozlucas28";
	displayName = "Configuración (CBRN)";
  icon = "\FCLA_Modules\3DEN\data\CBRN.paa";
  portrait = "\FCLA_Modules\3DEN\data\CBRN.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_initCBRNConfiguration3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_NOT_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_NRBQ_Uniforms: Edit {
      tooltip = "Classnames de los uniformes NRBQ compatibles.";
      typeName = "STRING";
      property = "FCLA_NRBQ_Uniforms";
      displayName = "Uniformes NRBQ";
      defaultValue = "'['U_C_CBRN_Suit_01_Blue_F', 'U_C_CBRN_Suit_01_White_F', 'U_B_CBRN_Suit_01_Wdl_F', 'U_B_CBRN_Suit_01_MTP_F', 'U_B_CBRN_Suit_01_Tropic_F', 'U_I_CBRN_Suit_01_AAF_F', 'U_I_E_CBRN_Suit_01_EAF_F']'";
		};

    class FCLA_Chemical_Detectors: Edit {
      tooltip = "Classnames de los detectores químicos compatibles.";
      typeName = "STRING";
      property = "FCLA_Chemical_Detectors";
      displayName = "Detectores químicos";
      defaultValue = "'['ChemicalDetector_01_watch_F', 'tf_microdagr']'";
		};

    class FCLA_Oxygen_Masks: Edit {
      tooltip = "Classnames de las máscaras compatibles.";
      typeName = "STRING";
      property = "FCLA_Oxygen_Masks";
      displayName = "Máscaras de oxígeno";
      defaultValue = "'['G_AirPurifyingRespirator_01_F', 'G_AirPurifyingRespirator_01_nofilter_F', 'G_AirPurifyingRespirator_02_sand_F', 'G_AirPurifyingRespirator_02_black_F', 'G_AirPurifyingRespirator_02_olive_F', 'G_RegulatorMask_F']'";
		};

    class FCLA_Backpacks_With_Oxygen: Edit {
      tooltip = "Classnames de las mochilas compatibles.";
      typeName = "STRING";
      property = "FCLA_Backpacks_With_Oxygen";
      displayName = "Mochilas con oxígeno";
      defaultValue = "'['B_CombinationUnitRespirator_01_F', 'B_SCBA_01_F']'";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Configura los equipamientos compatibles para poder utilizar las utilidades relacionadas al CBRN y poder acceder a las zonas contaminadas sin riesgo alguno."};
	};
};



/* --------------------------- ÁREA CONTAMINADA ---------------------------- */

class FCLA_Module_CBRN_Contaminated_Area: Module_F {
  author = "hozlucas28";
	displayName = "Área contaminada (CBRN)";
  icon = "\FCLA_Modules\3DEN\data\Contaminated_Area.paa";
  portrait = "\FCLA_Modules\3DEN\data\Contaminated_Area.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setCBRNContaminatedArea3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
	isGlobal = GLOBAL;
  canSetArea = HAS_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_SETTABLE_AREA_HEIGHT;
	isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Threat_Level: Combo {
      tooltip = "• Nivel 1: se necesita máscara de oxígeno.\n• Nivel 2: se necesita máscara y mochila con oxígeno.\n• Nivel 3: se necesita máscara, mochila con oxígeno y un traje NRBQ.\n• Nivel 4: no hay equipamiento que brinde protección alguna.";
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

	class ModuleDescription: ModuleDescription {
		description[] =	{"Crea áreas contaminadas donde se tendra que utilizar un equipamiento correcto, definido por el módulo: 'Configuración CBRN'. El efecto es total cuando te encuentras a menos de la mitad del tamaño definido.<br/><br/>• Se recomienda que los tamaños de la zona coincidan, si no se cumple se elegirá el que tenga mayor valor.<br/>• Si colocas -1, en los tamaños de la zona, todo el mapa se vera afectado por el jammer."};
	};

  class AttributeValues {
    size3[] = {50, 50, 50};
  };
};
