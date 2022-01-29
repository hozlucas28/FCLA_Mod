
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

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_allLogics = allMissionObjects "Logic";
_moreThanOne = ("FCLA_Module_CBRN_Configuration" countType _allLogics) > 1;
_compatibleOxygenMasks = _module getVariable ["FCLA_Oxygen_Masks", []];
_compatibleNRBQUniforms = _module getVariable ["FCLA_NRBQ_Uniforms", []];
_compatibleChemicalDetectors = _module getVariable ["FCLA_Chemical_Detectors", []];
_compatibleBackpacksWithOxygen = _module getVariable ["FCLA_Backpacks_With_Oxygen", []];
if (_moreThanOne) exitWith {["FCLA_Module_CBRN_Configuration", "• MÓDULO: CONFIGURACIÓN (CBRN)", "¡Error! Solo puede haber un módulo de este tipo. Los módulos 'Configuración (CBRN)' han sido desactivados."] call FCLA_Common_fnc_errorMessage;};
if ((_compatibleOxygenMasks isEqualTo []) && (_compatibleNRBQUniforms isEqualTo []) && (_compatibleChemicalDetectors isEqualTo []) && (_compatibleBackpacksWithOxygen isEqualTo [])) exitWith {["FCLA_Module_CBRN_Configuration", "• MÓDULO: CONFIGURACIÓN (CBRN)", "¡Error! El/Un módulo 'Configuración (CBRN)' no se pudo inicializar con éxito."] call FCLA_Common_fnc_errorMessage;};



//Pasar variables locales al formato correcto.
_compatibleOxygenMasks = parseSimpleArray ([_compatibleOxygenMasks, """", "'"] call CBA_fnc_replace);
_compatibleNRBQUniforms = parseSimpleArray ([_compatibleNRBQUniforms, """", "'"] call CBA_fnc_replace);
_compatibleChemicalDetectors = parseSimpleArray ([_compatibleChemicalDetectors, """", "'"] call CBA_fnc_replace);
_compatibleBackpacksWithOxygen = parseSimpleArray ([_compatibleBackpacksWithOxygen, """", "'"] call CBA_fnc_replace);


//Establecer configuración.
[{time > 0}, {
  ["FCLA_CBRN_Compatible_Oxygen_Masks", _this select 1] call CBA_fnc_publicVariable;
  ["FCLA_CBRN_Compatible_NRBQ_Uniforms", _this select 2] call CBA_fnc_publicVariable;
  ["FCLA_CBRN_Compatible_Chemical_Detectors", _this select 3] call CBA_fnc_publicVariable;
  ["FCLA_CBRN_Compatible_Backpacks_With_Oxygen", _this select 4] call CBA_fnc_publicVariable;
  deleteVehicle (_this select 0);
}, [_module, _compatibleOxygenMasks, _compatibleNRBQUniforms, _compatibleChemicalDetectors, _compatibleBackpacksWithOxygen]] call CBA_fnc_waitUntilAndExecute;
