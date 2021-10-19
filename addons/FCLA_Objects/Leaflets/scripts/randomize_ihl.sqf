
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Objects\Leaflets\scripts\randomize_ihl.sqf"

Description:
    Coloca una textura random al panfleto enviado.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

if (isServer) then {
	_rnd1 = floor random 11;
	_this setVariable ["BIS_randomSeed1", _rnd1, TRUE];
};


waitUntil {!(isNil {_this getVariable "BIS_randomSeed1"})};
_randomSeed1 = _this getVariable "BIS_randomSeed1";

[_this, [0,
	[
		"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_distinction_CA.paa",
		"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_good_faith_CA.paa",
		"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_ihl_CA.paa",
		"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_military_necessity_CA.paa",
		"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_mine_hunt_CA.paa",
		"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_open_day_CA.paa",
		"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_precaution_CA.paa",
		"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_prisoners_CA.paa",
		"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_proportionality_CA.paa",
		"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_showcase_low_CA.paa",
		"\A3\missions_f_orange\Data\Img\Faction_IDAP\leaflet_unnecessary_suffering_CA.paa"
	] # _randomSeed1]
] remoteExec ["setObjectTexture", 0, true];
true
