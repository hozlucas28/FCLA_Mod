
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Configura los equipamientos compatibles para poder utilizar las utilidades
 * relacionadas al CBRN y poder acceder a las zonas contaminadas sin riesgo
 * alguno.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_CBRN_Configuration: Module_F {
  author = "hozlucas28";
	displayName = "Configuración (CBRN)";
  icon = "\FCLA_Modules\3DEN\data\CBRN.paa";
  portrait = "\FCLA_Modules\3DEN\data\CBRN.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setCBRNConfiguration3DEN";
	isGlobal = 1;
  isDisposable = 1;
	isTriggerActivated = 0;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_NRBQ_Uniforms: Edit {
      tooltip = "Classnames de los uniformes NRBQ compatibles para poder acceder a las zonas contaminadas con nivel de amenaza 3.";
      typeName = "STRING";
      property = "FCLA_NRBQ_Uniforms";
      displayName = "Uniformes NRBQ";
      defaultValue = "['U_C_CBRN_Suit_01_Blue_F', 'U_C_CBRN_Suit_01_White_F', 'U_B_CBRN_Suit_01_Wdl_F', 'U_B_CBRN_Suit_01_MTP_F', 'U_B_CBRN_Suit_01_Tropic_F', 'U_I_CBRN_Suit_01_AAF_F', 'U_I_E_CBRN_Suit_01_EAF_F']";
		};

    class FCLA_Chemical_Detectors: Edit {
      tooltip = "Classnames de los detectores químicos compatibles.\n• Deben poder colocarse en el slot del reloj (inventario).";
      typeName = "STRING";
      property = "FCLA_Chemical_Detectors";
      displayName = "Detectores químicos";
      defaultValue = "['ChemicalDetector_01_watch_F', 'tf_microdagr']";
		};

    class FCLA_Oxygen_Masks: Edit {
      tooltip = "Classnames de las máscaras compatibles para poder acceder a las zonas contaminadas con nivel de amenaza 1, 2 y 3.";
      typeName = "STRING";
      property = "FCLA_Oxygen_Masks";
      displayName = "Máscaras de oxígeno";
      defaultValue = "['G_AirPurifyingRespirator_01_F', 'G_AirPurifyingRespirator_01_nofilter_F', 'G_AirPurifyingRespirator_02_sand_F', 'G_AirPurifyingRespirator_02_black_F', 'G_AirPurifyingRespirator_02_olive_F', 'G_RegulatorMask_F']";
		};

    class FCLA_Backpacks_With_Oxygen: Edit {
      tooltip = "Classnames de las mochilas compatibles para poder acceder a las zonas contaminadas con nivel de amenaza 2 y 3.";
      typeName = "STRING";
      property = "FCLA_Backpacks_With_Oxygen";
      displayName = "Mochilas con oxígeno";
      defaultValue = "['B_CombinationUnitRespirator_01_F', 'B_SCBA_01_F']";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{"Configura los equipamientos compatibles para poder utilizar las utilidades relacionadas al CBRN y poder acceder a las zonas contaminadas sin riesgo alguno."};
	};
};
