
/********************************************************************************|
|                             "FCLA - INMSERSIONES"                              |
|********************************************************************************/



/* -------------------------------- GENERAL -------------------------------- */

[
	"FCLA_Kick_Door_Allowed", "CHECKBOX",
	["¿Permitir patadas?", "Al activar los jugadores podrán realizar patadas para abrir puertas cerradas."],
	["FCLA Inmersiones", "• General"],
	true,
	GLOBAL,
	{[format ["FCLA Immersions (addon options) - Players can kick doors? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Kick_Door_Success_Rate", "SLIDER",
	["Probabilidad de éxito (patadas)", "Determina el porcentaje de éxito para que se abra la puerta con una patada."],
	["FCLA Inmersiones", "• General"],
	[25, 100, 33, 0],
	GLOBAL,
	{[format ["FCLA Immersions (addon options) - Kick door success rate = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;



/* -------------------- AERONAVES DERRIBADAS NO REBOTAN -------------------- */

[
	"FCLA_NAB_Class_Exclusions", "EDITBOX",
	["Excluir clases", "Determina los classnames de las aeronaves que no deben ser afectadas por este efecto, VANTs (pequeños) vanilla ya incluidos.\n¡LOS CLASSNAMES DEBEN ESTAR SEPARADAS POR COMAS!"],
	["FCLA Inmersiones", "Aeronaves derribadas no rebotan"],
	#include "\FCLA_Core\PreInit\Addon_Options\includes\VANTs.hpp",
	GLOBAL,
	{FCLA_NAB_classExclusions = ((_this splitString ",") apply {toLower _x}) + (uiNamespace getVariable ["FCLA_NAB_classExclusions",[]]);},
	true
] call CBA_fnc_addSetting;


[
	"FCLA_NAB_Fx_Helicopters", "CHECKBOX",
	["¿Partículas extra para helicópteros?", "Al activar se generaran partículas extras cuando un helicóptero destruido impacte contra el suelo."],
	["FCLA Inmersiones", "Aeronaves derribadas no rebotan"],
	true,
	GLOBAL,
	{[format ["FCLA Immersions (addon options) - Fx helicopters? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_NAB_Fx_Planes", "CHECKBOX",
	["¿Partículas extra para aviones?", "Al activar se generaran partículas extras cuando un avión destruido impacte contra el suelo."],
	["FCLA Inmersiones", "Aeronaves derribadas no rebotan"],
	true,
	GLOBAL,
	{[format ["FCLA Immersions (addon options) - Fx planes? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;



/* -------------------------------- RADIOS --------------------------------- */

[
	"FCLA_Radio_Animations", "CHECKBOX",
	["¿Animación al transmitir?", "Al activar si se transmite por radio se realizara una animación."],
	["FCLA Inmersiones", "Radios"],
	true,
	GLOBAL,
	{[format ["FCLA Immersions (addon options) - Radio animations? = %1.", _this]] remoteExec ["diag_log", 2];},
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
	{},
	false
] call CBA_Settings_fnc_init;


[
	"FCLA_Radio_Animations_Vests", "EDITBOX",
	["Chalecos con radio", "Determina los classnames de chalecos para así hacer uso de la animación 'Chaleco' al momento de transmitir.\nColoca '[vest player]' para permitir todos los tipos de chalecos."],
	["FCLA Inmersiones", "Radios"],
	#include "\FCLA_Core\PreInit\Addon_Options\includes\Vests_with_Radios.hpp",
	GLOBAL,
	{},
	false
] call CBA_Settings_fnc_init;



/* ----------------------------- TURBULENCIAS ------------------------------ */

[
	"FCLA_Aircraft_Turbulence", "CHECKBOX",
	["Activar", "Al activar las aeronaves sufriran turbulencias, aún usando el auto-hover. ¡SI SE QUIERE DESACTIVAR SE DEBERA SALIR DE LA AERONAVE UNA VEZ EFECTUADO EL CAMBIO PARA QUE SE APLIQUE!"],
	["FCLA Inmersiones", "Turbulencias"],
	true,
	GLOBAL,
	{[format ["FCLA Immersions (addon options) - Aircraft turbulence? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Aircraft_Turbulence_Weather_Effects", "CHECKBOX",
	["¿El clima afecta?", "Si se activa el clima afectara las turbulencias que reciba la aeronave, tomando valores entre la turbulencia minima y maxima según el clima.\n¡AL DESACTIVAR ÚNICAMENTE ACTUARÁ LA TURBULENCIA MÍNIMA!"],
	["FCLA Inmersiones", "Turbulencias"],
	true,
	GLOBAL,
	{[format ["FCLA Immersions (addon options) - Weather effects aircraft turbulence? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Aircraft_Turbulence_Minimum", "SLIDER",
	["Turbulencia mínima", "Determina el valor de la turbulencia mínima."],
	["FCLA Inmersiones", "Turbulencias"],
	[0, 10, 10, 0],
	GLOBAL,
	{[format ["FCLA Immersions (addon options) - Aircraft minimum turbulence? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Aircraft_Turbulence_Maximum", "SLIDER",
	["Turbulencia máxima", "Determina el valor de la turbulencia máxima."],
	["FCLA Inmersiones", "Turbulencias"],
	[10, 40, 25, 0],
	GLOBAL,
	{[format ["FCLA Immersions (addon options) - Aircraft maximum turbulence? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;
