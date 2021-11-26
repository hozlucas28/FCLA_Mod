
/********************************************************************************|
|                              "FCLA - INMERSIONES"                              |
|********************************************************************************/



/* -------------------------------- GENERAL -------------------------------- */

[
	"FCLA_Kick_Door_Allowed", "CHECKBOX",
	["¿Permitir patear puertas?", "Al activar se podrán realizar patadas para abrir puertas cerradas."],
	["FCLA Inmersiones", "• General"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Kick_Door_Success_Rate", "SLIDER",
	["Probabilidad de éxito (patadas)", "Determina el porcentaje de éxito para que se abra la puerta con una patada."],
	["FCLA Inmersiones", "• General"],
	[25, 100, 33, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;



/* -------------------------------- RADIOS --------------------------------- */

[
	"FCLA_Radio_Animations", "CHECKBOX",
	["¿Animación al transmitir?", "Al activar si se transmite por radio se realizara una animación."],
	["FCLA Inmersiones", "Radios"],
	true,
	GLOBAL,
	{},
	false
] call CBA_Settings_fnc_init;


[
	"FCLA_Radio_Animation_Preference", "LIST",
	["Animación de preferencia", "Determina la animacion que se eligira si se tiene casco/anteojo y chaleco compatibles (definidos en 'Auriculares' y 'Chalecos con radio'). ¡ESTA OPCIÓN FUNCIONA DE MANERA LOCAL!"],
	["FCLA Inmersiones", "Radios"],
	[
	 ["_vest", "_headset"],
	 ["Chaleco", "Auricular"], 0
	],
	LOCAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Radio_Animations_Headgears_Headsets", "EDITBOX",
	["Auriculares", "Determina los classnames de cascos/anteojos para así hacer uso de la animación 'Auricular' al momento de transmitir.\nColoca '[headgear player, goggles player]' para permitir todos los tipos de cascos y anteojos."],
	["FCLA Inmersiones", "Radios"],
	#include "\FCLA_Core\PreInit\Addon_Options\includes\Headgears_and_Headsets.hpp",
	GLOBAL,
	{FCLA_Radio_Animations_Headgears_Headsets = parseSimpleArray _this;},
	false
] call CBA_Settings_fnc_init;


[
	"FCLA_Radio_Animations_Vests", "EDITBOX",
	["Chalecos con radio", "Determina los classnames de chalecos para así hacer uso de la animación 'Chaleco' al momento de transmitir.\nColoca '[vest player]' para permitir todos los tipos de chalecos."],
	["FCLA Inmersiones", "Radios"],
	#include "\FCLA_Core\PreInit\Addon_Options\includes\Vests_with_Radios.hpp",
	GLOBAL,
	{FCLA_Radio_Animations_Vests = parseSimpleArray _this;},
	false
] call CBA_Settings_fnc_init;



/* ----------------------------- TURBULENCIAS ------------------------------ */

[
	"FCLA_Aircraft_Turbulence", "CHECKBOX",
	["Activar", "Al activar las aeronaves sufriran turbulencias, aún usando el auto-hover. ¡SI SE QUIERE DESACTIVAR SE DEBERA SALIR DE LA AERONAVE UNA VEZ EFECTUADO EL CAMBIO PARA QUE SE APLIQUE!"],
	["FCLA Inmersiones", "Turbulencias"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Aircraft_Turbulence_Weather_Effects", "CHECKBOX",
	["¿El clima influye?", "Si se activa el clima afectara las turbulencias que reciba la aeronave, tomando valores entre la turbulencia minima y maxima según el clima.\n¡AL DESACTIVAR ÚNICAMENTE ACTUARÁ LA TURBULENCIA MÍNIMA!"],
	["FCLA Inmersiones", "Turbulencias"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Aircraft_Turbulence_Minimum", "SLIDER",
	["Turbulencia mínima", "Determina el valor de la turbulencia mínima."],
	["FCLA Inmersiones", "Turbulencias"],
	[0, 10, 10, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Aircraft_Turbulence_Maximum", "SLIDER",
	["Turbulencia máxima", "Determina el valor de la turbulencia máxima."],
	["FCLA Inmersiones", "Turbulencias"],
	[10, 40, 25, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;
