
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Objects\Electronic\scripts\Randomize.sqf"

Description:
    Coloca una textura random en la laptop enviada.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

if (isServer) then {
	_rnd1 = floor random 6;
	_this setVariable ["BIS_randomSeed1", _rnd1, TRUE];
};

waitUntil {!(isNil {_this getVariable "BIS_randomSeed1"})};
_randomSeed1 = _this getVariable "BIS_randomSeed1";

[_this, [1,
	[
		"\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen01_co.paa",
		"\A3\missions_f_oldman\Data\img\Screens\MillerNtbScreen02_co.paa",
		"\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background_co.paa",
		"\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_background2_co.paa",
		"\A3\missions_f_exp\data\Img\lobby\ui_campaign_lobby_restricted_ca.paa",
		"\A3\missions_f_exp\data\Img\exp_m01_monitor_ca.paa"
	] # _randomSeed1]
] remoteExec ["setObjectTexture", 0, true];
true
