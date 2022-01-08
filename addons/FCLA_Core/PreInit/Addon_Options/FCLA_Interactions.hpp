
/********************************************************************************|
|                             "FCLA - INTERACCIONES"                             |
|********************************************************************************/



/* -------------------------------- GENERAL -------------------------------- */

[
	"FCLA_Default_Patche", "LIST",
	["Insignia", "Determina el parche del pelotón que se te colocara al comienzo de la misión. ¡ESTA OPCIÓN FUNCIONA DE MANERA LOCAL!"],
	["FCLA Interacciones", "• General"],
	[
	 ["FCLA_Unassigned", "FCLA_Common", "FCLA_Takana", "FCLA_Jaguar", "FCLA_Condor", "FCLA_Salamandra", "FCLA_Anaconda", "FCLA_Quetzal"],
	 ["Sin asignar", "FCLA", "Takana", "Jaguar", "Condor", "Salamandra", "Anaconda", "Quetzal"], 0
	],
	LOCAL,
	{[player, _this] spawn FCLA_Interactions_fnc_statementSelfInsignias;},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_ID_Card_Allowed", "CHECKBOX",
	["¿Permitir identificaciones?", "Al activar se podra ver la tarjeta de identificación propia, la de sus aliados y los enemigos/civiles arrestados/rendidos a travez del menú ACE 3D."],
	["FCLA Interacciones", "• General"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Plate_Number_Allowed", "CHECKBOX",
	["¿Se pueden ver las matrículas?", "Si se activa se podra ver el número de matrícula de los vehículos, a travez del menú ACE 3D."],
	["FCLA Interacciones", "• General"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Blindfold_Allowed", "CHECKBOX",
	["¿Se puede vendar a los prisioneros?", "Si se activa se podra vendar a las unidades que esten arrestadas/rendidas.\n¡PARA PODER VENDAR A UNA UNIDAD SE DEBE DISPONER DE UNA VENDA NEGRA/BLANCA EN EL INVENTARIO!"],
	["FCLA Interacciones", "• General"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;



/* ----------------------------- SEÑAL DE HUMO ----------------------------- */

[
	"FCLA_Smoke_Signal_Allowed", "CHECKBOX",
	["Activar", "Si se activa con los proyectiles de humo de un lanzagranadas se podra enviar señales, para cambiar a este modo deben\nactivarlo manualmente mediante el menú ACE 3D en el apartado 'equipamiento'."],
	["FCLA Interacciones", "Señal de humo"],
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
	["Tiempo del humo", "Determina los segundos que durara el humo de la señal una vez que esta explota en el aire.\n¡PARA QUE FUNCIONE LA SEÑAL DE HUMO DEBE ESTAR PERMITIDA!"],
	["FCLA Interacciones", "Señal de humo"],
	[10, 30, 15, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;



/* --------------------------------- CBRN ---------------------------------- */

[
	"FCLA_CBRN_Initial_Backpack_Oxygen", "SLIDER",
	["Oxígeno inicial", "Determina el nivel de oxígeno inicial con la que contaran las mochilas CBRN."],
	["FCLA Interacciones", "CBRN"],
	[0, 100, 100, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_CBRN_Backpack_Oxygen_Life_Time", "SLIDER",
	["Duración del oxígeno", "Determina la duración del oxígeno, que tiene la mochila CBRN, en minutos."],
	["FCLA Interacciones", "CBRN"],
	[5, 180, 30, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;



/* ---------------------------- VISIÓN NOCTURNA ---------------------------- */

[
	"FCLA_NVG_Require_Battery", "CHECKBOX",
	["¿NVGs requieren baterías?", "Al activar las gafas de visión nocturna requeriran de baterías para poder funcionar correctamente.\n¡SE PODRÁN RECARGAR A TRAVEZ DEL MENÚ ACE 3D, SI SE TIENE BATERÍAS NVG EN EL INVENTARIO!"],
	["FCLA Interacciones", "Visión nocturna (SIN TERMINAR)"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_NVG_Initial_Battery", "SLIDER",
	["Batería inicial", "Determina el porcentaje de batería inicial con la que contaran las visiones nocturnas."],
	["FCLA Interacciones", "Visión nocturna (SIN TERMINAR)"],
	[0, 100, 0, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_NVG_Battery_Life_Time", "SLIDER",
	["Duración de la batería", "Determina la duración de la batería en minutos."],
	["FCLA Interacciones", "Visión nocturna (SIN TERMINAR)"],
	[5, 180, 30, 0],
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;
