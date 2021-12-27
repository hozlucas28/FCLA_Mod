
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
_forceDeactivation = _module getVariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Verificar argumentos.
_allLogics = allMissionObjects "Logic";
_moreThanOne = ("FCLA_Module_CBRN_Configuration" countType _allLogics) > 1;
_compatibleOxygenMasks = _module getVariable ["FCLA_Oxygen_Masks", []];
_compatibleNRBQUniforms = _module getVariable ["FCLA_NRBQ_Uniforms", []];
_compatibleChemicalDetectors = _module getVariable ["FCLA_Chemical_Detectors", []];
_compatibleBackpacksWithOxygen = _module getVariable ["FCLA_Backpacks_With_Oxygen", []];
if (_moreThanOne) exitWith {["FCLA_Module_CBRN_Configuration", "• MÓDULO: CONFIGURACIÓN (CBRN)", "¡Error! Solo puede haber un módulo de este tipo. Los módulos 'Configuración (CBRN)' han sido desactivados."] spawn FCLA_Modules_fnc_reportError3DEN;};
if ((_compatibleOxygenMasks isEqualTo []) && (_compatibleNRBQUniforms isEqualTo []) && (_compatibleChemicalDetectors isEqualTo []) && (_compatibleBackpacksWithOxygen isEqualTo [])) exitWith {["¡Error! El/Un módulo 'Configuración (CBRN)' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Pasar variables locales al formato correcto.
_compatibleOxygenMasks = parseSimpleArray ([_compatibleOxygenMasks, """", "'"] call CBA_fnc_replace);
_compatibleNRBQUniforms = parseSimpleArray ([_compatibleNRBQUniforms, """", "'"] call CBA_fnc_replace);
_compatibleChemicalDetectors = parseSimpleArray ([_compatibleChemicalDetectors, """", "'"] call CBA_fnc_replace);
_compatibleBackpacksWithOxygen = parseSimpleArray ([_compatibleBackpacksWithOxygen, """", "'"] call CBA_fnc_replace);


//Establecer configuración.
missionNamespace setVariable ["FCLA_CBRN_Compatible_Oxygen_Masks", _compatibleOxygenMasks];
missionNamespace setVariable ["FCLA_CBRN_Compatible_NRBQ_Uniforms", _compatibleNRBQUniforms];
missionNamespace setVariable ["FCLA_CBRN_Compatible_Chemical_Detectors", _compatibleChemicalDetectors];
missionNamespace setVariable ["FCLA_CBRN_Compatible_Backpacks_With_Oxygen", _compatibleBackpacksWithOxygen];
