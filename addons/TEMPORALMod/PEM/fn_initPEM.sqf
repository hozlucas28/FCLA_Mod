
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_initPEM

Description:
		Llama al script que inicializa un pulso PEM.
    Función llamada desde el módulo 'PEM'.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module","_synchronizedUnits","_isActivated"];
if (!(_isActivated)) exitWith {};



_range = _module getVariable "PEM_Range";
_isVisible = _module getVariable "PEM_isVisible";
_isVisionAffected = _module getVariable "PEM_isVision_Affected";
null = [_module, _range, _isVisible, _isVisionAffected] execVM "\FCLA_Modules\PEM\scripts\Init.sqf";
