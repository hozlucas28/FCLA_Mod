
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Objects\Leaflets\scripts\randomize_announcements.sqf"

Description:
    Coloca una textura random al panfleto enviado.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

if (isServer) then {
	_rnd1 = floor random 3;
	_this setVariable ["BIS_randomSeed1", _rnd1, TRUE];
};


waitUntil {!(isNil {_this getVariable "BIS_randomSeed1"})};
_randomSeed1 = _this getVariable "BIS_randomSeed1";

[_this, [0,
	[
		"\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_01_co.paa",
		"\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_02_co.paa",
		"\A3\missions_f_orange\data\img\orange_compositions\tree\treenote_03_co.paa"
	] # _randomSeed1]
] remoteExec ["setObjectTexture", 0, true];
true
