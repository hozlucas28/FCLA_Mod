
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica el equipamiento compatible para poder utilizar las utilidades
 * relacionadas al CBRN y poder acceder a las zonas contaminadas
 * sin riesgo alguno.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Configuracion CBRN", {
  _currentCompatibleOxygenMasks = if (isNil "FCLA_CBRN_Compatible_Oxygen_Masks") then {["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_RegulatorMask_F"];} else {FCLA_CBRN_Compatible_Oxygen_Masks;};
  _currentCompatibleNRBQUniforms = if (isNil "FCLA_CBRN_Compatible_NRBQ_Uniforms") then {["U_C_CBRN_Suit_01_Blue_F", "U_C_CBRN_Suit_01_White_F", "U_B_CBRN_Suit_01_Wdl_F", "U_B_CBRN_Suit_01_MTP_F", "U_B_CBRN_Suit_01_Tropic_F", "U_I_CBRN_Suit_01_AAF_F", "U_I_E_CBRN_Suit_01_EAF_F"];} else {FCLA_CBRN_Compatible_NRBQ_Uniforms;};
  _currentCompatibleChemicalDetectors = if (isNil "FCLA_CBRN_Compatible_Chemical_Detectors") then {["ChemicalDetector_01_watch_F", "tf_microdagr"];} else {FCLA_CBRN_Compatible_Chemical_Detectors;};
  _currentCompatibleBackpacksWithOxygen = if (isNil "FCLA_CBRN_Compatible_Backpacks_With_Oxygen") then {["B_CombinationUnitRespirator_01_F", "B_SCBA_01_F"];} else {FCLA_CBRN_Compatible_Backpacks_With_Oxygen;};


  ["CONFIGURACION CBRN",
	[
   ["EDIT", ["Uniformes NRBQ", "Classnames de los uniformes NRBQ compatibles para poder acceder a las zonas contaminadas con nivel de amenaza 3."],
	  [
	   str _currentCompatibleNRBQUniforms,
	   nil,
	   nil
	  ],
    true
	 ],
   ["EDIT", ["Detectores quimicos", "Classnames de los detectores quimicos compatibles.\n- Deben poder colocarse en el slot del reloj (inventario)."],
	  [
	   str _currentCompatibleChemicalDetectors,
	   nil,
	   nil
	  ],
    true
	 ],
   ["EDIT", ["Mascaras de oxigeno", "Classnames de las mascaras compatibles para poder acceder a las zonas contaminadas con nivel de amenaza 1, 2 y 3."],
	  [
	   str _currentCompatibleOxygenMasks,
	   nil,
	   nil
	  ],
    true
	 ],
   ["EDIT", ["Mochilas con oxigeno", "Classnames de las mochilas compatibles para poder acceder a las zonas contaminadas con nivel de amenaza 2 y 3."],
	  [
	   str _currentCompatibleBackpacksWithOxygen,
	   nil,
	   nil
	  ],
    true
	 ]
	],
  {
    (_this select 1) params ["_position", "_attachedObject"];
    (_this select 0) params ["_newCompatibleNRBQUniforms", "_newCompatibleChemicalDetectors", "_newCompatibleOxygenMasks", "_newCompatibleBackpacksWithOxygen"];
    _newCompatibleOxygenMasks = parseSimpleArray ([_newCompatibleOxygenMasks, """", "'"] call CBA_fnc_replace);
    _newCompatibleNRBQUniforms = parseSimpleArray ([_newCompatibleNRBQUniforms, """", "'"] call CBA_fnc_replace);
    _newCompatibleChemicalDetectors = parseSimpleArray ([_newCompatibleChemicalDetectors, """", "'"] call CBA_fnc_replace);
    _newCompatibleBackpacksWithOxygen = parseSimpleArray ([_newCompatibleBackpacksWithOxygen, """", "'"] call CBA_fnc_replace);

    ["FCLA_CBRN_Compatible_Oxygen_Masks", _newCompatibleOxygenMasks] call CBA_fnc_publicVariable;
    ["FCLA_CBRN_Compatible_NRBQ_Uniforms", _newCompatibleNRBQUniforms] call CBA_fnc_publicVariable;
    ["FCLA_CBRN_Compatible_Chemical_Detectors", _newCompatibleChemicalDetectors] call CBA_fnc_publicVariable;
    ["FCLA_CBRN_Compatible_Backpacks_With_Oxygen", _newCompatibleBackpacksWithOxygen] call CBA_fnc_publicVariable;
    ["NUEVA CONFIGURACION CBRN ESTABLECIDA CON EXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\CBRN.paa"] call ZEN_Custom_Modules_fnc_Register;
