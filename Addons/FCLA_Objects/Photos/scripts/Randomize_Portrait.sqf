
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Objects\Photos\scripts\Randomize_Portrait.sqf"

Description:
    Coloca una textura random al cuadro enviado.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

if (isServer) then {
	_rnd1 = floor random 4;
	_this setVariable ["BIS_randomSeed1", _rnd1, TRUE];
};

waitUntil {!(isNil {_this getVariable "BIS_randomSeed1"})};
_randomSeed1 = _this getVariable "BIS_randomSeed1";

[_this, [0,
	[
		"\a3\props_f_aow\civilian\gallery\data\galleryframe_01_large_portrait_picture_f_co.paa",
		"\A3\missions_f_aow\data\Img\Artwork\Portrait\showcase_aow_picture_08_co.paa",
		"\A3\missions_f_aow\data\Img\Artwork\Portrait\showcase_aow_picture_54_co.paa",
		"\A3\missions_f_aow\data\Img\Artwork\Portrait\showcase_aow_picture_55_co.paa"
	] # _randomSeed1]
] remoteExec ["setObjectTexture", 0, true];
true
