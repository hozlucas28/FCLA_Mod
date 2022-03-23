
/********************************************************************************|
|                              "FCLA INTERACCIONES"                              |
|********************************************************************************/



/* -------------------------------- GENERAL -------------------------------- */

[
	"FCLA_Default_Insignia", "LIST",
	["Insignia", "Determina el parche del peloton que se te colocara al comienzo de la mision. ¡ESTA OPCION FUNCIONA DE MANERA LOCAL!"],
	["FCLA Interacciones", "[ x ] General"],
	[
	 ["FCLA_Unassigned", "FCLA_Common", "FCLA_Takana", "FCLA_Jaguar", "FCLA_Condor", "FCLA_Salamandra", "FCLA_Anaconda", "FCLA_Quetzal"],
	 ["Sin asignar", "FCLA", "Takana", "Jaguar", "Condor", "Salamandra", "Anaconda", "Quetzal"], 0
	],
	LOCAL,
	{[player, _this] call FCLA_Interactions_fnc_statementInsignias;},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Plate_Number_Allowed", "CHECKBOX",
	["Matriculas", "Si se activa se podra ver el numero de matricula de los vehiculos, a travez del menu ACE 3D."],
	["FCLA Interacciones", "[ x ] General"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_ID_Card_Allowed", "CHECKBOX",
	["Identificaciones", "Al activar se podra ver la tarjeta de identificacion propia, la de sus aliados y los enemigos/civiles arrestados/rendidos a travez del menu ACE 3D."],
	["FCLA Interacciones", "[ x ] General"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Blindfold_Allowed", "CHECKBOX",
	["Los prisioneros pueden ser vendados", "Si se activa se podra vendar a las unidades que esten arrestadas/rendidas.\n¡PARA PODER VENDAR A UNA UNIDAD SE DEBE DISPONER DE UNA VENDA NEGRA/BLANCA EN EL INVENTARIO!"],
	["FCLA Interacciones", "[ x ] General"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;



/* ----------------------------- SENAL DE HUMO ----------------------------- */

[
	"FCLA_Smoke_Signal_Allowed", "CHECKBOX",
	["Activar", "Si se activa con los proyectiles de humo de un lanzagranadas se podra enviar senales, para cambiar a este modo deben\nactivarlo manualmente mediante el menu ACE 3D en el apartado 'equipamiento'."],
	["FCLA Interacciones", "Senal de humo"],
	true,
	GLOBAL,
	{
		_unit = call CBA_fnc_currentUnit;
		if (!_this) then {_unit setVariable ["FCLA_Smoke_Signal_Switch", false, true];};
	},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Smoke_Signal_Time", "SLIDER",
	["Tiempo del humo", "Determina los segundos que durara el humo de la senal una vez que esta explota en el aire.\n¡PARA QUE FUNCIONE LA SENAL DE HUMO DEBE ESTAR PERMITIDA!"],
	["FCLA Interacciones", "Senal de humo"],
	[10, 30, 15, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;



/* --------------------------------- CBRN ---------------------------------- */

[
	"FCLA_CBRN_Initial_Backpack_Oxygen", "SLIDER",
	["Oxigeno inicial", "Determina el nivel de oxigeno inicial con la que contaran las mochilas CBRN."],
	["FCLA Interacciones", "CBRN"],
	[0, 100, 100, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_CBRN_Backpack_Oxygen_Life_Time", "SLIDER",
	["Duracion del oxigeno", "Determina la duracion del oxigeno, que tiene la mochila CBRN, en minutos."],
	["FCLA Interacciones", "CBRN"],
	[5, 180, 30, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;



/* ---------------------------- VISION NOCTURNA ---------------------------- */

[
	"FCLA_NVG_Require_Battery", "CHECKBOX",
	["NVGs requieren baterias", "Al activar las gafas de vision nocturna requeriran de baterias para poder funcionar correctamente.\n¡SE PODRAN RECARGAR A TRAVEZ DEL MENU ACE 3D, SI SE TIENE BATERIAS NVG EN EL INVENTARIO!"],
	["FCLA Interacciones", "Vision nocturna (SIN TERMINAR)"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_NVG_Initial_Battery", "SLIDER",
	["Bateria inicial", "Determina el porcentaje de bateria inicial con la que contaran las visiones nocturnas."],
	["FCLA Interacciones", "Vision nocturna (SIN TERMINAR)"],
	[0, 100, 0, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_NVG_Battery_Life_Time", "SLIDER",
	["Duracion de la bateria", "Determina la duracion de la bateria en minutos."],
	["FCLA Interacciones", "Vision nocturna (SIN TERMINAR)"],
	[5, 180, 30, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;
