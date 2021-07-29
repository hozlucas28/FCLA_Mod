
/********************************************************************************|
|                             "FCLA - INTERACCIONES"                             |
|********************************************************************************/



/* -------------------------------- GENERAL -------------------------------- */

[
	"FCLA_Default_Patche", "LIST",
	["Parche (client-side)", "Determina el parche de escuadra que se te colocara al comienzo de la misión. ¡ESTA OPCIÓN FUNCIONA DE MANERA LOCAL!"],
	["FCLA Interacciones", "• General"],
	[
	 ["Patch_Unassigned", "Patch_FCLA", "Patch_Takana", "Patch_Jaguar", "Patch_Condor", "Patch_Salamandra", "Patch_Anaconda", "Patch_Quetzal"],
	 ["Sin asignar", "FCLA", "Takana", "Jaguar", "Condor", "Salamandra", "Anaconda", "Quetzal"], 0
	],
	LOCAL,
	{[player, _this, headgear player, uniform player, vest player, backpack player] spawn FCLA_Interactions_fnc_applyPatchesToLoadout;},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_ID_Card_Allowed", "CHECKBOX",
	["¿Permitir identificaciones?", "Al activar se podra ver la tarjeta de identificación propia, la de sus aliados y los enemigos/civiles arrestados/rendidos a travez del menú ACE 3D."],
	["FCLA Interacciones", "• General"],
	true,
	GLOBAL,
	{[format ["FCLA Interactions (addon options) - Is ID card allowed? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Plate_Number_Allowed", "CHECKBOX",
	["¿Se pueden ver las patentes?", "Si se activa se podra ver el número de placa/patente de los vehículos, a travez del menú ACE 3D."],
	["FCLA Interacciones", "• General"],
	true,
	GLOBAL,
	{[format ["FCLA Interactions (addon options) - Is plate number allowed? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Share_Map_Allowed","CHECKBOX",
	["¿Se puede compartir el mapa?", "Si se activar el jugador con mapa podra compartirlo con el resto a travez del menú ACE 3D en el mapa.\nEl jugador que quiera ver el mapa de otro debe usar el menú ACE 3D sobre el jugador que esta compartiendo su mapa."],
	["FCLA Interacciones", "• General"],
	true,
	GLOBAL,
	{[format ["FCLA Interactions (addon options) - Can a player share his map? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Blindfold_Allowed", "CHECKBOX",
	["¿Se puede vendar a los arrestados?", "Si se activa se podra vendar a un jugador ó IA que este arrestada/rendida a travez del menú ACE 3D, si resulta ser un jugador esté no podra ver nada.\n¡PARA PODER VENDAR A UN JUGADOR/IA SE DEBE DISPONER DE UNA VENDA NEGRA/BLANCA EN EL INVENTARIO!"],
	["FCLA Interacciones", "• General"],
	true,
	GLOBAL,
	{[format ["FCLA Interactions (addon options) - Can a player blind? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;



/* ----------------------------- SEÑAL DE HUMO ----------------------------- */

[
	"FCLA_Smoke_Signal_Allowed", "CHECKBOX",
	["¿Permitir?", "Si se activa con los proyectiles de humo de un lanzagranadas se podra enviar señales, para cambiar a este modo deben\nactivarlo manualmente mediante el menú ACE 3D en el apartado 'equipamiento'."],
	["FCLA Interacciones", "Señal de humo"],
	true,
	GLOBAL,
	{
		if (!_this) then {player setVariable ["FCLA_Smoke_Signal_Switch", false];};
		[format ["FCLA Interactions (addon options) - Is smoke signal allowed? = %1.", _this]] remoteExec ["diag_log", 2];
	},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Smoke_Signal_Time", "SLIDER",
	["Tiempo del humo", "Determina los segundos que durara el humo de la señal una vez que esta explota en el aire.\n¡PARA QUE FUNCIONE LA SEÑAL DE HUMO DEBE ESTAR PERMITIDA!"],
	["FCLA Interacciones", "Señal de humo"],
	[10, 30, 15, 0],
	GLOBAL,
	{[format ["FCLA Interactions (addon options) - Smoke signal time = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;



/* ---------------------------- VISIÓN NOCTURNA ---------------------------- */

[
	"FCLA_NVG_Require_Batteries","CHECKBOX",
	["¿NVGs requieren baterías?", "Al activar las visiones nocturnas requeriran de baterías para poder funcionar correctamente.\n¡SE PODRÁN RECARGAR A TRAVEZ DEL MENÚ ACE 3D, SI SE TIENE BATERÍAS NVG EN EL INVENTARIO!"],
	["FCLA Interacciones", "Visión nocturna"],
	true,
	GLOBAL,
	{[format ["FCLA Interactions (addon options) - NVG needs batteries? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_NVG_Initial_Battery", "SLIDER",
	["Batería inicial", "Determina el porcentaje de batería inicial con la que contaran las visiones nocturnas."],
	["FCLA Interacciones", "Visión nocturna"],
	[0, 100, 0, 0],
	GLOBAL,
	{[format ["FCLA Interactions (addon options) - NVG initial battery = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_NVG_Battery_Time", "SLIDER",
	["Duración de la batería", "Determina la duración de la batería en minutos."],
	["FCLA Interacciones", "Visión nocturna"],
	[5, 180, 30, 0],
	GLOBAL,
	{[format ["FCLA Interactions (addon options) - NVG battery life time = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;
