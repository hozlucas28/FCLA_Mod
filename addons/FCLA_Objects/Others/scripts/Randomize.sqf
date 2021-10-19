
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Objects\Others\scripts\Randomize.sqf"

Description:
    Coloca una textura random.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

if (isServer) then {
	_rnd1 = floor random 18;
	_this setVariable ["BIS_randomSeed1", _rnd1, TRUE];
};

waitUntil {!(isNil {_this getVariable "BIS_randomSeed1"})};
_randomSeed1 = _this getVariable "BIS_randomSeed1";

[_this, [0,
	[
		"\a3\missions_f_orange\Data\Img\Showcase_LawsOfWar\whiteboard_main_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_activity_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_aid_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_air_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_autonomous_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_expo_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_idap_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_ihl_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_kiosk_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_area_land_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap1_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap2_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap3_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap4_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap5_CO.paa",
		"\a3\missions_f_orange\Data\Img\Faction_IDAP\whiteboard_idap6_CO.paa",
		"\a3\missions_f_orange\Data\Img\Orange_Compositions\A1\Whiteboard_CampSplendid_CO.paa",
		"\a3\missions_f_orange\Data\Img\Orange_Compositions\A1\Whiteboard_CampSplendid_PostWar_CO.paa"
	] # _randomSeed1]
] remoteExec ["setObjectTexture", 0, true];
true
