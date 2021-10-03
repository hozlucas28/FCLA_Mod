
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Objects\Photos\scripts\Randomize_2.sqf"

Description:
    Coloca una textura random al cuadro enviado.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

if (isServer) then {
	_rnd1 = floor random 48;
	_this setVariable ["BIS_randomSeed1", _rnd1, TRUE];
};

waitUntil {!(isNil {_this getVariable "BIS_randomSeed1"})};
_randomSeed1 = _this getVariable "BIS_randomSeed1";

[_this, [0,
	[
		"\a3\props_f_aow\civilian\gallery\data\galleryframe_02_rectangle_picture_co.paa",
		"\a3\props_f_aow\civilian\gallery\data\galleryFrame_02_rectangle_picture_alt_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_63_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_64_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_65_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_67_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_68_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_70_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_72_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_75_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_76_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_80_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_87_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_91_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_92_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_93_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_98_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_104_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_106_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_108_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_109_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_111_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_118_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_120_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_121_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_122_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_123_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_01_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_04_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_10_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_13_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_14_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_16_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_18_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_20_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_22_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_27_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_30_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_31_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_32_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_41_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_46_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_47_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_59_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_60_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Landscape\showcase_aow_picture_62_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Masters\lost_masterwork_03_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Masters\lost_masterwork_05_co.paa"
	] # _randomSeed1]
] remoteExec ["setObjectTexture", 0, true];

true
