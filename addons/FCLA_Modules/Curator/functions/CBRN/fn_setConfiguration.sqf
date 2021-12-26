
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo que modifica el equipamiento compatible para poder utilizar
 * las utilidades relacionadas al CBRN y poder acceder a las zonas contaminadas
 * sin riesgo alguno.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Configuración CBRN", {
  _oldCompatibleOxygenMasks = missionNamespace getVariable ["FCLA_CBRN_Compatible_Oxygen_Masks", ["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_RegulatorMask_F"]];
  _oldCompatibleNRBQUniforms = missionNamespace getVariable ["FCLA_CBRN_Compatible_NRBQ_Uniforms", ["U_C_CBRN_Suit_01_Blue_F", "U_C_CBRN_Suit_01_White_F", "U_B_CBRN_Suit_01_Wdl_F", "U_B_CBRN_Suit_01_MTP_F", "U_B_CBRN_Suit_01_Tropic_F", "U_I_CBRN_Suit_01_AAF_F", "U_I_E_CBRN_Suit_01_EAF_F"]];
  _oldCompatibleChemicalDetectors = missionNamespace getVariable ["FCLA_CBRN_Compatible_Chemical_Detectors", ["ChemicalDetector_01_watch_F", "tf_microdagr"]];
  _oldCompatibleBackpacksWithOxygen = missionNamespace getVariable ["FCLA_CBRN_Compatible_Backpacks_With_Oxygen", ["B_CombinationUnitRespirator_01_F", "B_SCBA_01_F"]];


  ["CONFIGURACIÓN CBRN",
	[
   ["EDIT", ["Uniformes NRBQ", "Classnames de los uniformes NRBQ compatibles para poder acceder a las zonas contaminadas con nivel de amenaza 3."],
	  [
	   str _oldCompatibleNRBQUniforms,
	   nil,
	   nil
	  ],
    true
	 ],
   ["EDIT", ["Detectores químicos", "Classnames de los detectores químicos compatibles.\n• Deben poder colocarse en el slot del reloj (inventario)."],
	  [
	   str _oldCompatibleChemicalDetectors,
	   nil,
	   nil
	  ],
    true
	 ],
   ["EDIT", ["Máscaras de oxígeno", "Classnames de las máscaras compatibles para poder acceder a las zonas contaminadas con nivel de amenaza 1, 2 y 3."],
	  [
	   str _oldCompatibleOxygenMasks,
	   nil,
	   nil
	  ],
    true
	 ],
   ["EDIT", ["Mochilas con oxígeno", "Classnames de las mochilas compatibles para poder acceder a las zonas contaminadas con nivel de amenaza 2 y 3."],
	  [
	   str _oldCompatibleBackpacksWithOxygen,
	   nil,
	   nil
	  ],
    true
	 ]
	],
  {
    (_this select 0) params ["_newCompatibleNRBQUniforms", "_newCompatibleChemicalDetectors", "_newCompatibleOxygenMasks", "_newCompatibleBackpacksWithOxygen"];

    _newCompatibleOxygenMasks = parseSimpleArray ([_newCompatibleOxygenMasks, """", "'"] call CBA_fnc_replace);
    _newCompatibleNRBQUniforms = parseSimpleArray ([_newCompatibleNRBQUniforms, """", "'"] call CBA_fnc_replace);
    _newCompatibleChemicalDetectors = parseSimpleArray ([_newCompatibleChemicalDetectors, """", "'"] call CBA_fnc_replace);
    _newCompatibleBackpacksWithOxygen = parseSimpleArray ([_newCompatibleBackpacksWithOxygen, """", "'"] call CBA_fnc_replace);
    missionNamespace setVariable ["FCLA_CBRN", true];
    missionNamespace setVariable ["FCLA_CBRN_Compatible_Oxygen_Masks", _newCompatibleOxygenMasks];
    missionNamespace setVariable ["FCLA_CBRN_Compatible_NRBQ_Uniforms", _newCompatibleNRBQUniforms];
    missionNamespace setVariable ["FCLA_CBRN_Compatible_Chemical_Detectors", _newCompatibleChemicalDetectors];
    missionNamespace setVariable ["FCLA_CBRN_Compatible_Backpacks_With_Oxygen", _newCompatibleBackpacksWithOxygen];
    ["NUEVA CONFIGURACIÓN CBRN ESTABLECIDA CON ÉXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, []] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\CBRN.paa"] call ZEN_Custom_Modules_fnc_Register;
