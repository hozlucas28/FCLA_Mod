
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_initConfigurationCBRN

Description:
		Asigna la configuración general del CBRN según los atributos almacenados
    en el módulo. Función llamada desde el módulo 'Configuración (CBRN)'.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module","_synchronizedUnits","_isActivated"];
if (!(_isActivated) || !(isNil "FCLA_CBRN_Configuration_Activated")) exitWith {};



//Obtener valores.
FCLA_CBRN_Configuration_Activated = true;
FCLA_CBRN_Maximum_Damage = _module getVariable "CBRN_Config_maxDamage";
FCLA_CBRN_Oxygen_Time = (round (_module getVariable "CBRN_Config_maxOxygenTime"))*60;
FCLA_CBRN_Compatible_Masks = (_module getVariable "CBRN_Config_APRs") splitString ", ";
FCLA_CBRN_Uniforms = (_module getVariable "CBRN_Config_Uniforms") splitString ", ";
FCLA_CBRN_Compatible_Backpacks = (_module getVariable "CBRN_Config_Backpacks") splitString ", ";

//Hacer valores públicos.
publicVariable "FCLA_CBRN_Configuration_Activated";
publicVariable "FCLA_CBRN_Maximum_Damage";
publicVariable "FCLA_CBRN_Oxygen_Time";
publicVariable "FCLA_CBRN_Compatible_Masks";
publicVariable "FCLA_CBRN_Uniforms";
publicVariable "FCLA_CBRN_Compatible_Backpacks";
