
/********************************************************************************|
|                        "FCLA - CONFIGURACIÓN DE VIDEO"                         |
|********************************************************************************/

[
	"FCLA_View_Distance_Allowed", "CHECKBOX",
	["¿Permitir?", "Al activar los jugadores podrán utilizar la distancia de visión avanzada, y así romper la barrera (bug) de los 1500 metros de visión que hay en el multijugador."],
	["FCLA Configuración de video", "Distancia de visión"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_View_Distance_Client_Activated", "CHECKBOX",
	["Activar (client-side)", "Si se activa tendras acceso a la distancia de visión avanzada, si se quiere desactivar se debera reiniciar el servidor luego de haber efectuado el cambio.\n¡ESTA OPCIÓN FUNCIONA DE MANERA LOCAL!"],
	["FCLA Configuración de video", "Distancia de visión"],
	false,
	LOCAL,
	{
		if (!FCLA_View_Distance_Allowed) exitWith {};
		[format ["FCLA Interactions (addon options) - %1 tiene activado la distancia de visión avanzada.", name player]] call ACE_Common_fnc_serverLog;
	},
	false
] call CBA_fnc_addSetting;
