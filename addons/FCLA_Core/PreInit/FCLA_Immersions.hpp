
/********************************************************************************|
|                               "FCLA INMERSIONES"                               |
|********************************************************************************/



/* -------------------------------- GENERAL -------------------------------- */

[
	"FCLA_Gun_Colission", "CHECKBOX",
	["Colisión de arma", "Al activar las armas colisionaran con las entidades cercanas, dependiendo el largo de la misma."],
	["FCLA Inmersiones", "• General"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;



/* -------------------------------- PUERTAS --------------------------------- */

[
	"FCLA_Kick_Door_Allowed", "CHECKBOX",
	["¿Se pueden patear?", "Al activar se podrán realizar patadas para abrir puertas cerradas."],
	["FCLA Inmersiones", "Puertas"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Kick_Door_Success_Rate", "SLIDER",
	["Probabilidad de éxito", "Determina el porcentaje de éxito para que se abra la puerta con una patada."],
	["FCLA Inmersiones", "Puertas"],
	[25, 100, 33, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;



/* -------------------------------- RADIOS --------------------------------- */

[
	"FCLA_Radio_Animations", "CHECKBOX",
	["Activar", "Si se activa al transmitir por radio se realizara una animación."],
	["FCLA Inmersiones", "Radios"],
	true,
	GLOBAL,
	{},
	false
] call CBA_Settings_fnc_init;


[
	"FCLA_Hand_Radio_Animation", "CHECKBOX",
	["Radio en mano", "Al activar si se transmite por radio de onda larga o no se posee un auricular/chaleco con radio, se realizara\nuna animación en donde la unidad tendra una radio en mano."],
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
	#include "\FCLA_Core\PreInit\includes\Headgears_and_Headsets.hpp",
	GLOBAL,
	{FCLA_Radio_Animations_Headgears_Headsets = parseSimpleArray ([_this, """", "'"] call CBA_fnc_replace);},
	false
] call CBA_Settings_fnc_init;


[
	"FCLA_Radio_Animations_Vests", "EDITBOX",
	["Chalecos con radio", "Determina los classnames de chalecos para así hacer uso de la animación 'Chaleco' al momento de transmitir.\nColoca '[vest player]' para permitir todos los tipos de chalecos."],
	["FCLA Inmersiones", "Radios"],
	#include "\FCLA_Core\PreInit\includes\Vests_with_Radios.hpp",
	GLOBAL,
	{FCLA_Radio_Animations_Vests = parseSimpleArray ([_this, """", "'"] call CBA_fnc_replace);},
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
