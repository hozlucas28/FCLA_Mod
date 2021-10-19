
/********************************************************************************|
|                                "FCLA - EFECTOS"                                |
|********************************************************************************/



/* -------------------------------- AVIONES -------------------------------- */

[
	"FCLA_Planes_camShake", "CHECKBOX",
	["Temblor de cámara", "Si se activa se producira un temblor de cámara cuando un avión vuele cerca, a menos de 150 metros y con una velocidad de 300km."],
	["FCLA Efectos", "Aviones"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;

[
	"FCLA_Planes_Ground_Smoke", "CHECKBOX",
	["¿Levantar polvo?", "Si se activa los aviones levantaran una estela de polvo si vuelan a menos de 50 metros y con una velocidad de 150km."],
	["FCLA Efectos", "Aviones"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;



/* ------------------------ SONIDOS PERSONALIZADOS ------------------------- */

[
	"FCLA_Killed_Sounds", "CHECKBOX",
	["¿Al morir?", "Si se activa se reproducira una serie de sonidos cuando una unida muera."],
	["FCLA Efectos", "Sonidos personalizados"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;

[
	"FCLA_putTake_Sounds", "CHECKBOX",
	["¿Al mover/agarrar items?", "Si se activa se reproducira un sonido cuando se mueva/agarre un item dentro de un contenedor."],
	["FCLA Efectos", "Sonidos personalizados"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;

[
	"FCLA_Inventory_Sounds", "CHECKBOX",
	["¿Al abrir/cerrar inventario?", "Si se activa se reproducira un sonido cuando ser abra/cierre el inventario."],
	["FCLA Efectos", "Sonidos personalizados"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;

[
	"FCLA_visionMode_Sounds", "CHECKBOX",
	["¿Al cambiar el modo de visión?", "Si se activa se reproducira un sonido cuando se cambia a la visión nocturna/térmica."],
	["FCLA Efectos", "Sonidos personalizados"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;

[
	"FCLA_Helmet_Hit_Sounds", "CHECKBOX",
	["¿Al recibir un impacto en el casco?", "Si se activa se reproducira un sonido cuando la unidad reciba un impacto en su casco."],
	["FCLA Efectos", "Sonidos personalizados"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;

[
	"FCLA_Aim_Sounds", "CHECKBOX",
	["¿Al apuntar con la mira del arma?", "Si se activa se reproducira una serie de sonidos cuando se apunte con el arma."],
	["FCLA Efectos", "Sonidos personalizados"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;
