
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Objects\Electronic\scripts\AAN_Article.sqf"

Description:
    Muestra un artículo de AAN News.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

disableSerialization;

[
	[
		[
			"title",
			"Paz para nuestro tiempo"
		],
		[
			"meta",
			[
				"Mark Cole",
				[2034,5,16,14,42],
				localize "STR_A3_rscdisplayaanarticle_timezonecet"
			]
		],
		[
			"textbold",
			"La Guerra Civil en Altis se acerca a su fin, ya que ambas facciones buscan la paz."
		],
		[
			"image",
			[
				"\A3\Missions_F_Bootcamp\Data\Img\Bootcamp_overview_CA.paa",
				"El personal de paz de la OTAN entrena a las fuerzas de los gobiernos locales"
			]
		],
		[
			"box",
			[
				"\FCLA_Objects\Electronic\data\AAN_News_Mark_Reynolds.paa",
				"¿Quién era Mark Reynolds?"
			]
		],
		[
			"text",
			"Los esfuerzos de mantener la paz continúan en la República de Altis y Stratis después de la Guerra Civil. Aunque se han logrado algunos avances, el gobierno recién establecido todavía enfrenta serios obstáculos, a saber, la inexperiencia de las Fuerzas Armadas Altis, o AAF para abreviar."
		],
		[
			"text",
			"Oficialmente, el personal de paz de la OTAN, principalmente estaciones en Stratis, ha sido adscritos a Altis para cooperar y consultar con la AAF. Extraoficialmente, han estado ayudando a capacitar a miembros de AAF con el fin de garantizar su capacidad para mantener la seguridad dentro de la República. Recientemente, sin embargo, los estados miembros de CSAT han expresado interés en la República..."
		],
		[
			"author",
			[
				"\a3\ui_f\data\IGUI\RscTitles\AAN\AAN_logo_corner_ca.paa",
				localize "STR_A3_exp_m02_b01_tanoasituation_aan_1"
			]
		],
		[
			"draft"
		]
	],
	nil,
	true
] call bis_fnc_showAANArticle;

playSound "Orange_Read_Article";
