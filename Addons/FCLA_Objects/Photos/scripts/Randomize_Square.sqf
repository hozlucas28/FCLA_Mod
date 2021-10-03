
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Objects\Photos\scripts\Randomize_Square.sqf"

Description:
    Coloca una textura random al cuadro enviado.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

if (isServer) then {
	_rnd1 = floor random 7;
	_this setVariable ["BIS_randomSeed1", _rnd1, TRUE];
};

waitUntil {!(isNil {_this getVariable "BIS_randomSeed1"})};
_randomSeed1 = _this getVariable "BIS_randomSeed1";

[_this, [0,
	[
		"\a3\Missions_F_AoW\Data\Img\Artwork\Masters\lost_masterwork_04_co.paa",
		"\a3\props_f_aow\civilian\gallery\data\galleryframe_02_square_picture_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Square\showcase_aow_picture_29_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Square\showcase_aow_picture_43_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Square\showcase_aow_picture_48_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Square\showcase_aow_picture_51_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Square\showcase_aow_picture_119_co.paa"
	] # _randomSeed1]
] remoteExec ["setObjectTexture", 0, true];
true
