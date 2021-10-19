
/* ----------------------------------------------------------------------------
Function: FCLA_Objects_fnc_showAANArticle1Electronic

Description:
    Genera un "Hold" acción, en la pantalla enviada, que mostrara un artículo de AAN News.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

params ["_object"];

[
	_object,
	"Leer artículo de la AAN",
	"\a3\Missions_F_Orange\Data\Img\Showcase_LawsOfWar\action_view_article_ca.paa",
	"\a3\Missions_F_Orange\Data\Img\Showcase_LawsOfWar\action_view_article_ca.paa",
	"([_this, _target] call CBA_fnc_getDistance) < 1.5",
	"([_this, _target] call CBA_fnc_getDistance) < 1.5",
	nil,
	{},
	{_articleAAN01 = execVM "\FCLA_Objects\Electronic\scripts\AAN_Article.sqf";},
	{},
	[],
	0.5,
	0,
	false,
	false
] call bis_fnc_holdActionAdd;
