
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Objects\Photos\scripts\Randomize_1.sqf"

Description:
    Coloca una textura random al cuadro enviado.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

if (isServer) then {
	_rnd1 = floor random 78;
	_this setVariable ["BIS_randomSeed1", _rnd1, TRUE];
};

waitUntil {!(isNil {_this getVariable "BIS_randomSeed1"})};
_randomSeed1 = _this getVariable "BIS_randomSeed1";

[_this, [0,
	[
		"a3\Missions_F_AoW\Data\Img\Artwork\Portrait\showcase_aow_picture_55_co.paa",
		"a3\Missions_F_AoW\Data\Img\Artwork\Portrait\showcase_aow_picture_54_co.paa",
		"a3\Missions_F_AoW\Data\Img\Artwork\Portrait\showcase_aow_picture_08_co.paa",
		"\a3\props_f_aow\civilian\gallery\data\galleryframe_03_picture_co.paa",
		"\a3\props_f_aow\civilian\gallery\data\galleryframe_02_picture_co.paa",
		"\a3\props_f_aow\civilian\gallery\data\galleryframe_01_picture_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_96_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_97_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_99_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_100_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_101_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_102_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_103_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_105_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_107_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_110_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_112_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_114_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_115_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_116_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_117_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_02_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_03_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_05_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_06_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_07_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_11_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_15_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_17_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_19_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_21_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_24_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_25_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_26_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_28_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_33_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_34_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_35_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_36_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_37_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_38_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_39_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_42_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_44_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_45_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_49_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_50_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_52_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_53_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_57_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_69_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_71_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_73_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_74_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_77_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_78_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_81_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_82_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_83_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_84_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_85_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_86_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_88_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_89_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_90_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Standard\showcase_aow_picture_94_co.paa",
		"\A3\missions_f_aow\data\Img\Artwork\Portrait\showcase_aow_picture_23_co.paa",
		"\A3\missions_f_aow\data\Img\Artwork\Portrait\showcase_aow_picture_40_co.paa",
		"\A3\missions_f_aow\data\Img\Artwork\Portrait\showcase_aow_picture_56_co.paa",
		"\A3\missions_f_aow\data\Img\Artwork\Portrait\showcase_aow_picture_58_co.paa",
		"\A3\missions_f_aow\data\Img\Artwork\Portrait\showcase_aow_picture_61_co.paa",
		"\A3\missions_f_aow\data\Img\Artwork\Portrait\showcase_aow_picture_66_co.paa",
		"\A3\missions_f_aow\data\Img\Artwork\Portrait\showcase_aow_picture_79_co.paa",
		"\A3\missions_f_aow\data\Img\Artwork\Portrait\showcase_aow_picture_95_co.paa",
		"\A3\missions_f_aow\data\Img\Artwork\Portrait\showcase_aow_picture_113_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Masters\altis_masterwork_01_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Masters\lost_masterwork_01_co.paa",
		"\A3\Missions_F_AoW\Data\Img\Artwork\Masters\lost_masterwork_02_co.paa"
	] # _randomSeed1]
] remoteExec ["setObjectTexture", 0, true];
true
