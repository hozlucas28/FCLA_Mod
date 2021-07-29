
/********************************************************************************|
|                                "FCLA - EFECTOS"                                |
|********************************************************************************/



/* -------------------------------- GENERAL -------------------------------- */

[
	"FCLA_Custom_Sounds", "CHECKBOX",
	["¿Sonidos personalizados?", "Si se activa se agregaran sonidos personalizados al abrir el inventario, al morir, al recibir un disparo, etc."],
	["FCLA Efectos", "• General"],
	true,
	GLOBAL,
	{[format ["FCLA Effects (addon options) - Custom sounds? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;



/* -------------------------------- AERONAVES -------------------------------- */

[
	"FCLA_Aircraft_Raise_Dust", "CHECKBOX",
	["¿Levantar polvo?", "Al activar si un avión pasa a menos de 5 metros de altura, respecto al suelo, este hará que se eleve polvo."],
	["FCLA Efectos", "Aeronaves"],
	true,
	GLOBAL,
	{[format ["FCLA Effects (addon options) - Aircraft raise dust? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Aircraft_Vapor", "CHECKBOX",
	["¿Generar rastro de vapor?", "Si se activa aquel avión que vuele a la altura indicada debajo generara un trazo de humo detrás de el.\n¡ESTE EFECTO IMPACTARA NEGATIVAMENTE EN LOS FPS!"],
	["FCLA Efectos", "Aeronaves"],
	false,
	GLOBAL,
	{[format ["FCLA Effects (addon options) - Aircraft vapor? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Aircraft_Vapor_Altitude", "SLIDER",
	["Altitud del vapor", "Determina la altitud del rastro de vapor. ¡PARA QUE FUNCIONE EL RASTRO DE VAPOR DEBE ESTAR ACTIVADO!"],
	["FCLA Efectos", "Aeronaves"],
	[500, 10000, 1000, 0],
	GLOBAL,
	{[format ["FCLA Effects (addon options) - Aircraft vapor altitude? = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;
