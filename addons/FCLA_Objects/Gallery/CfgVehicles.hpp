
/***************************************************************************|
|                           VEHICULOS - "GALERIA"                           |
|***************************************************************************/

class Custom_GalleryFrame_01_large_portrait_F: GalleryFrame_01_large_portrait_F	{
  author = "hozlucas28";
	displayName = "Marco de galeri­a (grande, retrato personalizado)";
	editorPreview = "\FCLA_Objects\Gallery\pictures\Custom_GalleryFrame_01_large_portrait_F.jpg";
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3"};
	hiddenSelectionsTextures[] = {"a3\props_f_aow\civilian\gallery\data\galleryframe_01_large_portrait_picture_f_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_01_large_portrait_f_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_01_large_portrait_f_co.paa"};
  editorCategory = "EdCat_Furniture";
  editorSubcategory = "EdSubcat_Gallery";
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pintura";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\props_f_aow\civilian\gallery\data\galleryframe_01_large_portrait_picture_f_co.paa""";

    	class values {
        class Texture_1 {
        	name = "N° 1";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_01_large_portrait_picture_f_co.paa";
        };

        class Texture_2 {
        	name = "N° 2";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_08_co.paa";
        };

        class Texture_3 {
        	name = "N° 3";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_54_co.paa";
        };

        class Texture_4 {
        	name = "N° 4";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_55_co.paa";
        };
			};
		};
	};
};


class Custom_GalleryFrame_02_square_F: GalleryFrame_02_square_F	{
  author = "hozlucas28";
	displayName = "Marco de galeri­a (mediano, cuadrado personalizado)";
	editorPreview = "\FCLA_Objects\Gallery\pictures\Custom_GalleryFrame_02_square_F.jpg";
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3"};
	hiddenSelectionsTextures[] = {"a3\Missions_F_AoW\Data\Img\Artwork\Masters\lost_masterwork_04_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_02_square_f_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_02_square_f_co.paa"};
  editorCategory = "EdCat_Furniture";
  editorSubcategory = "EdSubcat_Gallery";
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pintura";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\Missions_F_AoW\Data\Img\Artwork\Masters\lost_masterwork_04_co.paa""";

    	class values {
        class Texture_1 {
        	name = "N° 1";
        	value = "\a3\Missions_F_AoW\Data\Img\Artwork\Masters\lost_masterwork_04_co.paa";
        };

        class Texture_2 {
        	name = "N° 2";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_02_square_picture_co.paa";
        };

        class Texture_3 {
        	name = "N° 3";
        	value = "\a3\missions_f_aow\data\img\artwork\square\showcase_aow_picture_29_co.paa";
        };

        class Texture_4 {
        	name = "N° 4";
        	value = "\a3\missions_f_aow\data\img\artwork\square\showcase_aow_picture_43_co.paa";
        };

        class Texture_5 {
        	name = "N° 5";
        	value = "\a3\missions_f_aow\data\img\artwork\square\showcase_aow_picture_48_co.paa";
        };

        class Texture_6 {
        	name = "N° 6";
        	value = "\a3\missions_f_aow\data\img\artwork\square\showcase_aow_picture_51_co.paa";
        };

        class Texture_7 {
        	name = "N° 7";
        	value = "\a3\missions_f_aow\data\img\artwork\square\showcase_aow_picture_119_co.paa";
        };
			};
		};
	};
};


class Custom_GalleryFrame_02_F: GalleryFrame_02_F	{
  author = "hozlucas28";
	displayName = "Marco de galeri­a (mediano, personalizado)";
	editorPreview = "\FCLA_Objects\Gallery\pictures\Custom_GalleryFrame_02_F.jpg";
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3"};
	hiddenSelectionsTextures[] = {"a3\props_f_aow\civilian\gallery\data\galleryframe_02_rectangle_picture_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_02_large_rectangle_f_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_02_large_rectangle_f_co.paa"};
  editorCategory = "EdCat_Furniture";
  editorSubcategory = "EdSubcat_Gallery";
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pintura";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\props_f_aow\civilian\gallery\data\galleryframe_02_rectangle_picture_co.paa""";

    	class values {
        class Texture_1 {
        	name = "N° 1";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_02_rectangle_picture_co.paa";
        };

        class Texture_2 {
        	name = "N° 2";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_02_rectangle_picture_alt_co.paa";
        };

        class Texture_3 {
        	name = "N° 3";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_63_co.paa";
        };

        class Texture_4 {
        	name = "N° 4";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_64_co.paa";
        };

        class Texture_5 {
        	name = "N° 5";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_65_co.paa";
        };

        class Texture_6 {
        	name = "N° 6";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_67_co.paa";
        };

        class Texture_7 {
        	name = "N° 7";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_68_co.paa";
        };

        class Texture_8 {
        	name = "N° 8";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_70_co.paa";
        };

        class Texture_9 {
        	name = "N° 9";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_72_co.paa";
        };

        class Texture_10 {
        	name = "N° 10";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_75_co.paa";
        };

        class Texture_11 {
        	name = "N° 11";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_76_co.paa";
        };

        class Texture_12 {
        	name = "N° 12";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_80_co.paa";
        };

        class Texture_13 {
        	name = "N° 13";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_87_co.paa";
        };

        class Texture_14 {
        	name = "N° 14";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_91_co.paa";
        };

        class Texture_15 {
        	name = "N° 15";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_92_co.paa";
        };

        class Texture_16 {
        	name = "N° 16";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_93_co.paa";
        };

        class Texture_17 {
        	name = "N° 17";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_98_co.paa";
        };

        class Texture_18 {
        	name = "N° 18";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_104_co.paa";
        };

        class Texture_19 {
        	name = "N° 19";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_106_co.paa";
        };

        class Texture_20 {
        	name = "N° 20";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_108_co.paa";
        };

        class Texture_21 {
        	name = "N° 21";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_109_co.paa";
        };

        class Texture_22 {
        	name = "N° 22";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_111_co.paa";
        };

        class Texture_23 {
        	name = "N° 23";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_118_co.paa";
        };

        class Texture_24 {
        	name = "N° 24";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_120_co.paa";
        };

        class Texture_25 {
        	name = "N° 25";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_121_co.paa";
        };

        class Texture_26 {
        	name = "N° 26";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_122_co.paa";
        };

        class Texture_27 {
        	name = "N° 27";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_123_co.paa";
        };

        class Texture_28 {
        	name = "N° 28";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_01_co.paa";
        };

        class Texture_29 {
        	name = "N° 29";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_04_co.paa";
        };

        class Texture_30 {
        	name = "N° 30";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_10_co.paa";
        };

        class Texture_31 {
        	name = "N° 31";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_13_co.paa";
        };

        class Texture_32 {
        	name = "N° 32";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_14_co.paa";
        };

        class Texture_33 {
        	name = "N° 33";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_16_co.paa";
        };

        class Texture_34 {
        	name = "N° 34";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_18_co.paa";
        };

        class Texture_35 {
        	name = "N° 35";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_20_co.paa";
        };

        class Texture_36 {
        	name = "N° 36";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_22_co.paa";
        };

        class Texture_37 {
        	name = "N° 37";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_27_co.paa";
        };

        class Texture_38 {
        	name = "N° 38";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_30_co.paa";
        };

        class Texture_39 {
        	name = "N° 39";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_31_co.paa";
        };

        class Texture_40 {
        	name = "N° 40";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_32_co.paa";
        };

        class Texture_41 {
        	name = "N° 41";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_41_co.paa";
        };

        class Texture_42 {
        	name = "N° 42";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_46_co.paa";
        };

        class Texture_43 {
        	name = "N° 43";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_47_co.paa";
        };

        class Texture_44 {
        	name = "N° 44";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_59_co.paa";
        };

        class Texture_45 {
        	name = "N° 45";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_60_co.paa";
        };

        class Texture_46 {
        	name = "N° 46";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_62_co.paa";
        };

        class Texture_47 {
        	name = "N° 47";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\lost_masterwork_03_co.paa";
        };

        class Texture_48 {
        	name = "N° 48";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\lost_masterwork_05_co.paa";
        };
			};
		};
	};
};


class Custom_GalleryFrame_02_large_rectangle_F: GalleryFrame_02_large_rectangle_F	{
  author = "hozlucas28";
	displayName = "Marco de galeri­a (grande, rectangular personalizado)";
	editorPreview = "\FCLA_Objects\Gallery\pictures\Custom_GalleryFrame_02_large_rectangle_F.jpg";
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3"};
	hiddenSelectionsTextures[] = {"a3\props_f_aow\civilian\gallery\data\galleryframe_02_rectangle_picture_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_02_large_rectangle_f_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_02_large_rectangle_f_co.paa"};
  editorCategory = "EdCat_Furniture";
  editorSubcategory = "EdSubcat_Gallery";
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pintura";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\props_f_aow\civilian\gallery\data\galleryframe_02_rectangle_picture_co.paa""";

    	class values {
        class Texture_1 {
        	name = "N° 1";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_02_rectangle_picture_co.paa";
        };

        class Texture_2 {
        	name = "N° 2";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_02_rectangle_picture_alt_co.paa";
        };

        class Texture_3 {
        	name = "N° 3";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_63_co.paa";
        };

        class Texture_4 {
        	name = "N° 4";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_64_co.paa";
        };

        class Texture_5 {
        	name = "N° 5";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_65_co.paa";
        };

        class Texture_6 {
        	name = "N° 6";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_67_co.paa";
        };

        class Texture_7 {
        	name = "N° 7";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_68_co.paa";
        };

        class Texture_8 {
        	name = "N° 8";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_70_co.paa";
        };

        class Texture_9 {
        	name = "N° 9";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_72_co.paa";
        };

        class Texture_10 {
        	name = "N° 10";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_75_co.paa";
        };

        class Texture_11 {
        	name = "N° 11";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_76_co.paa";
        };

        class Texture_12 {
        	name = "N° 12";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_80_co.paa";
        };

        class Texture_13 {
        	name = "N° 13";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_87_co.paa";
        };

        class Texture_14 {
        	name = "N° 14";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_91_co.paa";
        };

        class Texture_15 {
        	name = "N° 15";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_92_co.paa";
        };

        class Texture_16 {
        	name = "N° 16";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_93_co.paa";
        };

        class Texture_17 {
        	name = "N° 17";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_98_co.paa";
        };

        class Texture_18 {
        	name = "N° 18";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_104_co.paa";
        };

        class Texture_19 {
        	name = "N° 19";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_106_co.paa";
        };

        class Texture_20 {
        	name = "N° 20";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_108_co.paa";
        };

        class Texture_21 {
        	name = "N° 21";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_109_co.paa";
        };

        class Texture_22 {
        	name = "N° 22";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_111_co.paa";
        };

        class Texture_23 {
        	name = "N° 23";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_118_co.paa";
        };

        class Texture_24 {
        	name = "N° 24";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_120_co.paa";
        };

        class Texture_25 {
        	name = "N° 25";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_121_co.paa";
        };

        class Texture_26 {
        	name = "N° 26";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_122_co.paa";
        };

        class Texture_27 {
        	name = "N° 27";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_123_co.paa";
        };

        class Texture_28 {
        	name = "N° 28";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_01_co.paa";
        };

        class Texture_29 {
        	name = "N° 29";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_04_co.paa";
        };

        class Texture_30 {
        	name = "N° 30";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_10_co.paa";
        };

        class Texture_31 {
        	name = "N° 31";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_13_co.paa";
        };

        class Texture_32 {
        	name = "N° 32";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_14_co.paa";
        };

        class Texture_33 {
        	name = "N° 33";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_16_co.paa";
        };

        class Texture_34 {
        	name = "N° 34";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_18_co.paa";
        };

        class Texture_35 {
        	name = "N° 35";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_20_co.paa";
        };

        class Texture_36 {
        	name = "N° 36";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_22_co.paa";
        };

        class Texture_37 {
        	name = "N° 37";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_27_co.paa";
        };

        class Texture_38 {
        	name = "N° 38";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_30_co.paa";
        };

        class Texture_39 {
        	name = "N° 39";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_31_co.paa";
        };

        class Texture_40 {
        	name = "N° 40";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_32_co.paa";
        };

        class Texture_41 {
        	name = "N° 41";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_41_co.paa";
        };

        class Texture_42 {
        	name = "N° 42";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_46_co.paa";
        };

        class Texture_43 {
        	name = "N° 43";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_47_co.paa";
        };

        class Texture_44 {
        	name = "N° 44";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_59_co.paa";
        };

        class Texture_45 {
        	name = "N° 45";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_60_co.paa";
        };

        class Texture_46 {
        	name = "N° 46";
        	value = "\a3\missions_f_aow\data\img\artwork\landscape\showcase_aow_picture_62_co.paa";
        };

        class Texture_47 {
        	name = "N° 47";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\lost_masterwork_03_co.paa";
        };

        class Texture_48 {
        	name = "N° 48";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\lost_masterwork_05_co.paa";
        };
			};
		};
	};
};


class Custom_GalleryFrame_01_large_v1_F: GalleryFrame_01_large_v1_F	{
  author = "hozlucas28";
	displayName = "Marco de galeri­a (grande, personalizado v1)";
	editorPreview = "\FCLA_Objects\Gallery\pictures\Custom_GalleryFrame_01_large_v1_F.jpg";
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3"};
	hiddenSelectionsTextures[] = {"a3\Missions_F_AoW\Data\Img\Artwork\Portrait\showcase_aow_picture_55_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_01_large_f_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_01_large_f_co.paa"};
  editorCategory = "EdCat_Furniture";
  editorSubcategory = "EdSubcat_Gallery";
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pintura";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\Missions_F_AoW\Data\Img\Artwork\Portrait\showcase_aow_picture_55_co.paa""";

    	class values {
        class Texture_1 {
        	name = "N° 1";
        	value = "\a3\Missions_F_AoW\Data\Img\Artwork\Portrait\showcase_aow_picture_55_co.paa";
        };

        class Texture_2 {
        	name = "N° 2";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_54_co.paa";
        };

        class Texture_3 {
        	name = "N° 3";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_08_co.paa";
        };

        class Texture_4 {
        	name = "N° 4";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_03_picture_co.paa";
        };

        class Texture_5 {
        	name = "N° 5";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_02_picture_co.paa";
        };

        class Texture_6 {
        	name = "N° 6";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_01_picture_co.paa";
        };

        class Texture_7 {
        	name = "N° 7";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_96_co.paa";
        };

        class Texture_8 {
        	name = "N° 8";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_97_co.paa";
        };

        class Texture_9 {
        	name = "N° 9";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_99_co.paa";
        };

        class Texture_10 {
        	name = "N° 10";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_100_co.paa";
        };

        class Texture_11 {
        	name = "N° 11";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_101_co.paa";
        };

        class Texture_12 {
        	name = "N° 12";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_102_co.paa";
        };

        class Texture_13 {
        	name = "N° 13";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_103_co.paa";
        };

        class Texture_14 {
        	name = "N° 14";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_105_co.paa";
        };

        class Texture_15 {
        	name = "N° 15";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_107_co.paa";
        };

        class Texture_16 {
        	name = "N° 16";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_110_co.paa";
        };

        class Texture_17 {
        	name = "N° 17";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_112_co.paa";
        };

        class Texture_18 {
        	name = "N° 18";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_114_co.paa";
        };

        class Texture_19 {
        	name = "N° 19";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_115_co.paa";
        };

        class Texture_20 {
        	name = "N° 20";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_116_co.paa";
        };

        class Texture_21 {
        	name = "N° 21";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_117_co.paa";
        };

        class Texture_22 {
        	name = "N° 22";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_02_co.paa";
        };

        class Texture_23 {
        	name = "N° 23";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_03_co.paa";
        };

        class Texture_24 {
        	name = "N° 24";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_05_co.paa";
        };

        class Texture_25 {
        	name = "N° 25";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_06_co.paa";
        };

        class Texture_26 {
        	name = "N° 26";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_07_co.paa";
        };

        class Texture_27 {
        	name = "N° 27";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_11_co.paa";
        };

        class Texture_28 {
        	name = "N° 28";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_15_co.paa";
        };

        class Texture_29 {
        	name = "N° 29";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_17_co.paa";
        };

        class Texture_30 {
        	name = "N° 30";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_19_co.paa";
        };

        class Texture_31 {
        	name = "N° 31";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_21_co.paa";
        };

        class Texture_32 {
        	name = "N° 32";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_24_co.paa";
        };

        class Texture_33 {
        	name = "N° 33";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_25_co.paa";
        };

        class Texture_34 {
        	name = "N° 34";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_26_co.paa";
        };

        class Texture_35 {
        	name = "N° 35";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_28_co.paa";
        };

        class Texture_36 {
        	name = "N° 36";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_33_co.paa";
        };

        class Texture_37 {
        	name = "N° 37";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_34_co.paa";
        };

        class Texture_38 {
        	name = "N° 38";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_35_co.paa";
        };

        class Texture_39 {
        	name = "N° 39";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_36_co.paa";
        };

        class Texture_40 {
        	name = "N° 40";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_37_co.paa";
        };

        class Texture_41 {
        	name = "N° 41";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_38_co.paa";
        };

        class Texture_42 {
        	name = "N° 42";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_39_co.paa";
        };

        class Texture_43 {
        	name = "N° 43";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_42_co.paa";
        };

        class Texture_44 {
        	name = "N° 44";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_44_co.paa";
        };

        class Texture_45 {
        	name = "N° 45";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_45_co.paa";
        };

        class Texture_46 {
        	name = "N° 46";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_49_co.paa";
        };

        class Texture_47 {
        	name = "N° 47";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_50_co.paa";
        };

        class Texture_48 {
        	name = "N° 48";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_52_co.paa";
        };

        class Texture_49 {
        	name = "N° 49";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_53_co.paa";
        };

        class Texture_50 {
        	name = "N° 50";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_57_co.paa";
        };

        class Texture_51 {
        	name = "N° 51";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_69_co.paa";
        };

        class Texture_52 {
        	name = "N° 52";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_71_co.paa";
        };

        class Texture_53 {
        	name = "N° 53";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_73_co.paa";
        };

        class Texture_54 {
        	name = "N° 54";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_74_co.paa";
        };

        class Texture_55 {
        	name = "N° 55";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_77_co.paa";
        };

        class Texture_56 {
        	name = "N° 56";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_78_co.paa";
        };

        class Texture_57 {
        	name = "N° 57";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_81_co.paa";
        };

        class Texture_58 {
        	name = "N° 58";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_82_co.paa";
        };

        class Texture_59 {
        	name = "N° 59";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_83_co.paa";
        };

        class Texture_60 {
        	name = "N° 60";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_84_co.paa";
        };

        class Texture_61 {
        	name = "N° 61";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_85_co.paa";
        };

        class Texture_62 {
        	name = "N° 62";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_86_co.paa";
        };

        class Texture_63 {
        	name = "N° 63";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_88_co.paa";
        };

        class Texture_64 {
        	name = "N° 64";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_89_co.paa";
        };

        class Texture_65 {
        	name = "N° 65";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_90_co.paa";
        };

        class Texture_66 {
        	name = "N° 66";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_94_co.paa";
        };

        class Texture_67 {
        	name = "N° 67";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_23_co.paa";
        };

        class Texture_68 {
        	name = "N° 68";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_40_co.paa";
        };

        class Texture_69 {
        	name = "N° 69";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_56_co.paa";
        };

        class Texture_70 {
        	name = "N° 70";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_58_co.paa";
        };

        class Texture_71 {
        	name = "N° 71";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_61_co.paa";
        };

        class Texture_72 {
        	name = "N° 72";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_66_co.paa";
        };

        class Texture_73 {
        	name = "N° 73";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_79_co.paa";
        };

        class Texture_74 {
        	name = "N° 74";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_95_co.paa";
        };

        class Texture_75 {
        	name = "N° 75";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_113_co.paa";
        };

        class Texture_76 {
        	name = "N° 76";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\altis_masterwork_01_co.paa";
        };

        class Texture_77 {
        	name = "N° 77";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\lost_masterwork_01_co.paa";
        };

        class Texture_78 {
        	name = "N° 78";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\lost_masterwork_02_co.paa";
        };
			};
		};
	};
};


class Custom_GalleryFrame_01_large_v2_F: GalleryFrame_01_large_v2_F	{
  author = "hozlucas28";
	displayName = "Marco de galeria (grande, personalizado v2)";
	editorPreview = "\FCLA_Objects\Gallery\pictures\Custom_GalleryFrame_01_large_v2_F.jpg";
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3"};
	hiddenSelectionsTextures[] = {"a3\Missions_F_AoW\Data\Img\Artwork\Portrait\showcase_aow_picture_55_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_02_large_f_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_02_large_f_co.paa"};
  editorCategory = "EdCat_Furniture";
  editorSubcategory = "EdSubcat_Gallery";
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pintura";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\Missions_F_AoW\Data\Img\Artwork\Portrait\showcase_aow_picture_55_co.paa""";

    	class values {
        class Texture_1 {
        	name = "N° 1";
        	value = "\a3\Missions_F_AoW\Data\Img\Artwork\Portrait\showcase_aow_picture_55_co.paa";
        };

        class Texture_2 {
        	name = "N° 2";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_54_co.paa";
        };

        class Texture_3 {
        	name = "N° 3";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_08_co.paa";
        };

        class Texture_4 {
        	name = "N° 4";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_03_picture_co.paa";
        };

        class Texture_5 {
        	name = "N° 5";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_02_picture_co.paa";
        };

        class Texture_6 {
        	name = "N° 6";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_01_picture_co.paa";
        };

        class Texture_7 {
        	name = "N° 7";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_96_co.paa";
        };

        class Texture_8 {
        	name = "N° 8";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_97_co.paa";
        };

        class Texture_9 {
        	name = "N° 9";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_99_co.paa";
        };

        class Texture_10 {
        	name = "N° 10";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_100_co.paa";
        };

        class Texture_11 {
        	name = "N° 11";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_101_co.paa";
        };

        class Texture_12 {
        	name = "N° 12";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_102_co.paa";
        };

        class Texture_13 {
        	name = "N° 13";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_103_co.paa";
        };

        class Texture_14 {
        	name = "N° 14";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_105_co.paa";
        };

        class Texture_15 {
        	name = "N° 15";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_107_co.paa";
        };

        class Texture_16 {
        	name = "N° 16";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_110_co.paa";
        };

        class Texture_17 {
        	name = "N° 17";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_112_co.paa";
        };

        class Texture_18 {
        	name = "N° 18";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_114_co.paa";
        };

        class Texture_19 {
        	name = "N° 19";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_115_co.paa";
        };

        class Texture_20 {
        	name = "N° 20";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_116_co.paa";
        };

        class Texture_21 {
        	name = "N° 21";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_117_co.paa";
        };

        class Texture_22 {
        	name = "N° 22";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_02_co.paa";
        };

        class Texture_23 {
        	name = "N° 23";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_03_co.paa";
        };

        class Texture_24 {
        	name = "N° 24";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_05_co.paa";
        };

        class Texture_25 {
        	name = "N° 25";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_06_co.paa";
        };

        class Texture_26 {
        	name = "N° 26";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_07_co.paa";
        };

        class Texture_27 {
        	name = "N° 27";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_11_co.paa";
        };

        class Texture_28 {
        	name = "N° 28";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_15_co.paa";
        };

        class Texture_29 {
        	name = "N° 29";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_17_co.paa";
        };

        class Texture_30 {
        	name = "N° 30";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_19_co.paa";
        };

        class Texture_31 {
        	name = "N° 31";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_21_co.paa";
        };

        class Texture_32 {
        	name = "N° 32";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_24_co.paa";
        };

        class Texture_33 {
        	name = "N° 33";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_25_co.paa";
        };

        class Texture_34 {
        	name = "N° 34";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_26_co.paa";
        };

        class Texture_35 {
        	name = "N° 35";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_28_co.paa";
        };

        class Texture_36 {
        	name = "N° 36";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_33_co.paa";
        };

        class Texture_37 {
        	name = "N° 37";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_34_co.paa";
        };

        class Texture_38 {
        	name = "N° 38";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_35_co.paa";
        };

        class Texture_39 {
        	name = "N° 39";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_36_co.paa";
        };

        class Texture_40 {
        	name = "N° 40";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_37_co.paa";
        };

        class Texture_41 {
        	name = "N° 41";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_38_co.paa";
        };

        class Texture_42 {
        	name = "N° 42";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_39_co.paa";
        };

        class Texture_43 {
        	name = "N° 43";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_42_co.paa";
        };

        class Texture_44 {
        	name = "N° 44";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_44_co.paa";
        };

        class Texture_45 {
        	name = "N° 45";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_45_co.paa";
        };

        class Texture_46 {
        	name = "N° 46";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_49_co.paa";
        };

        class Texture_47 {
        	name = "N° 47";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_50_co.paa";
        };

        class Texture_48 {
        	name = "N° 48";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_52_co.paa";
        };

        class Texture_49 {
        	name = "N° 49";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_53_co.paa";
        };

        class Texture_50 {
        	name = "N° 50";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_57_co.paa";
        };

        class Texture_51 {
        	name = "N° 51";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_69_co.paa";
        };

        class Texture_52 {
        	name = "N° 52";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_71_co.paa";
        };

        class Texture_53 {
        	name = "N° 53";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_73_co.paa";
        };

        class Texture_54 {
        	name = "N° 54";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_74_co.paa";
        };

        class Texture_55 {
        	name = "N° 55";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_77_co.paa";
        };

        class Texture_56 {
        	name = "N° 56";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_78_co.paa";
        };

        class Texture_57 {
        	name = "N° 57";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_81_co.paa";
        };

        class Texture_58 {
        	name = "N° 58";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_82_co.paa";
        };

        class Texture_59 {
        	name = "N° 59";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_83_co.paa";
        };

        class Texture_60 {
        	name = "N° 60";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_84_co.paa";
        };

        class Texture_61 {
        	name = "N° 61";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_85_co.paa";
        };

        class Texture_62 {
        	name = "N° 62";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_86_co.paa";
        };

        class Texture_63 {
        	name = "N° 63";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_88_co.paa";
        };

        class Texture_64 {
        	name = "N° 64";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_89_co.paa";
        };

        class Texture_65 {
        	name = "N° 65";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_90_co.paa";
        };

        class Texture_66 {
        	name = "N° 66";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_94_co.paa";
        };

        class Texture_67 {
        	name = "N° 67";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_23_co.paa";
        };

        class Texture_68 {
        	name = "N° 68";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_40_co.paa";
        };

        class Texture_69 {
        	name = "N° 69";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_56_co.paa";
        };

        class Texture_70 {
        	name = "N° 70";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_58_co.paa";
        };

        class Texture_71 {
        	name = "N° 71";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_61_co.paa";
        };

        class Texture_72 {
        	name = "N° 72";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_66_co.paa";
        };

        class Texture_73 {
        	name = "N° 73";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_79_co.paa";
        };

        class Texture_74 {
        	name = "N° 74";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_95_co.paa";
        };

        class Texture_75 {
        	name = "N° 75";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_113_co.paa";
        };

        class Texture_76 {
        	name = "N° 76";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\altis_masterwork_01_co.paa";
        };

        class Texture_77 {
        	name = "N° 77";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\lost_masterwork_01_co.paa";
        };

        class Texture_78 {
        	name = "N° 78";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\lost_masterwork_02_co.paa";
        };
			};
		};
	};
};


class Custom_GalleryFrame_01_large_v3_F: GalleryFrame_01_large_v3_F	{
  author = "hozlucas28";
	displayName = "Marco de galeri­a (grande, personalizado v3)";
	editorPreview = "\FCLA_Objects\Gallery\pictures\Custom_GalleryFrame_01_large_v3_F.jpg";
  hiddenSelections[] = {"Camo_1", "Camo_2", "Camo_3"};
	hiddenSelectionsTextures[] = {"a3\Missions_F_AoW\Data\Img\Artwork\Portrait\showcase_aow_picture_55_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_03_large_f_co.paa", "a3\props_f_aow\civilian\gallery\data\galleryframe_03_large_f_co.paa"};
  editorCategory = "EdCat_Furniture";
  editorSubcategory = "EdSubcat_Gallery";
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pintura";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\Missions_F_AoW\Data\Img\Artwork\Portrait\showcase_aow_picture_55_co.paa""";

    	class values {
        class Texture_1 {
        	name = "N° 1";
        	value = "\a3\Missions_F_AoW\Data\Img\Artwork\Portrait\showcase_aow_picture_55_co.paa";
        };

        class Texture_2 {
        	name = "N° 2";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_54_co.paa";
        };

        class Texture_3 {
        	name = "N° 3";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_08_co.paa";
        };

        class Texture_4 {
        	name = "N° 4";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_03_picture_co.paa";
        };

        class Texture_5 {
        	name = "N° 5";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_02_picture_co.paa";
        };

        class Texture_6 {
        	name = "N° 6";
        	value = "\a3\props_f_aow\civilian\gallery\data\galleryframe_01_picture_co.paa";
        };

        class Texture_7 {
        	name = "N° 7";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_96_co.paa";
        };

        class Texture_8 {
        	name = "N° 8";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_97_co.paa";
        };

        class Texture_9 {
        	name = "N° 9";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_99_co.paa";
        };

        class Texture_10 {
        	name = "N° 10";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_100_co.paa";
        };

        class Texture_11 {
        	name = "N° 11";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_101_co.paa";
        };

        class Texture_12 {
        	name = "N° 12";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_102_co.paa";
        };

        class Texture_13 {
        	name = "N° 13";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_103_co.paa";
        };

        class Texture_14 {
        	name = "N° 14";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_105_co.paa";
        };

        class Texture_15 {
        	name = "N° 15";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_107_co.paa";
        };

        class Texture_16 {
        	name = "N° 16";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_110_co.paa";
        };

        class Texture_17 {
        	name = "N° 17";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_112_co.paa";
        };

        class Texture_18 {
        	name = "N° 18";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_114_co.paa";
        };

        class Texture_19 {
        	name = "N° 19";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_115_co.paa";
        };

        class Texture_20 {
        	name = "N° 20";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_116_co.paa";
        };

        class Texture_21 {
        	name = "N° 21";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_117_co.paa";
        };

        class Texture_22 {
        	name = "N° 22";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_02_co.paa";
        };

        class Texture_23 {
        	name = "N° 23";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_03_co.paa";
        };

        class Texture_24 {
        	name = "N° 24";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_05_co.paa";
        };

        class Texture_25 {
        	name = "N° 25";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_06_co.paa";
        };

        class Texture_26 {
        	name = "N° 26";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_07_co.paa";
        };

        class Texture_27 {
        	name = "N° 27";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_11_co.paa";
        };

        class Texture_28 {
        	name = "N° 28";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_15_co.paa";
        };

        class Texture_29 {
        	name = "N° 29";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_17_co.paa";
        };

        class Texture_30 {
        	name = "N° 30";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_19_co.paa";
        };

        class Texture_31 {
        	name = "N° 31";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_21_co.paa";
        };

        class Texture_32 {
        	name = "N° 32";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_24_co.paa";
        };

        class Texture_33 {
        	name = "N° 33";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_25_co.paa";
        };

        class Texture_34 {
        	name = "N° 34";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_26_co.paa";
        };

        class Texture_35 {
        	name = "N° 35";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_28_co.paa";
        };

        class Texture_36 {
        	name = "N° 36";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_33_co.paa";
        };

        class Texture_37 {
        	name = "N° 37";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_34_co.paa";
        };

        class Texture_38 {
        	name = "N° 38";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_35_co.paa";
        };

        class Texture_39 {
        	name = "N° 39";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_36_co.paa";
        };

        class Texture_40 {
        	name = "N° 40";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_37_co.paa";
        };

        class Texture_41 {
        	name = "N° 41";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_38_co.paa";
        };

        class Texture_42 {
        	name = "N° 42";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_39_co.paa";
        };

        class Texture_43 {
        	name = "N° 43";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_42_co.paa";
        };

        class Texture_44 {
        	name = "N° 44";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_44_co.paa";
        };

        class Texture_45 {
        	name = "N° 45";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_45_co.paa";
        };

        class Texture_46 {
        	name = "N° 46";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_49_co.paa";
        };

        class Texture_47 {
        	name = "N° 47";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_50_co.paa";
        };

        class Texture_48 {
        	name = "N° 48";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_52_co.paa";
        };

        class Texture_49 {
        	name = "N° 49";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_53_co.paa";
        };

        class Texture_50 {
        	name = "N° 50";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_57_co.paa";
        };

        class Texture_51 {
        	name = "N° 51";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_69_co.paa";
        };

        class Texture_52 {
        	name = "N° 52";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_71_co.paa";
        };

        class Texture_53 {
        	name = "N° 53";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_73_co.paa";
        };

        class Texture_54 {
        	name = "N° 54";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_74_co.paa";
        };

        class Texture_55 {
        	name = "N° 55";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_77_co.paa";
        };

        class Texture_56 {
        	name = "N° 56";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_78_co.paa";
        };

        class Texture_57 {
        	name = "N° 57";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_81_co.paa";
        };

        class Texture_58 {
        	name = "N° 58";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_82_co.paa";
        };

        class Texture_59 {
        	name = "N° 59";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_83_co.paa";
        };

        class Texture_60 {
        	name = "N° 60";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_84_co.paa";
        };

        class Texture_61 {
        	name = "N° 61";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_85_co.paa";
        };

        class Texture_62 {
        	name = "N° 62";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_86_co.paa";
        };

        class Texture_63 {
        	name = "N° 63";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_88_co.paa";
        };

        class Texture_64 {
        	name = "N° 64";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_89_co.paa";
        };

        class Texture_65 {
        	name = "N° 65";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_90_co.paa";
        };

        class Texture_66 {
        	name = "N° 66";
        	value = "\a3\missions_f_aow\data\img\artwork\standard\showcase_aow_picture_94_co.paa";
        };

        class Texture_67 {
        	name = "N° 67";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_23_co.paa";
        };

        class Texture_68 {
        	name = "N° 68";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_40_co.paa";
        };

        class Texture_69 {
        	name = "N° 69";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_56_co.paa";
        };

        class Texture_70 {
        	name = "N° 70";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_58_co.paa";
        };

        class Texture_71 {
        	name = "N° 71";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_61_co.paa";
        };

        class Texture_72 {
        	name = "N° 72";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_66_co.paa";
        };

        class Texture_73 {
        	name = "N° 73";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_79_co.paa";
        };

        class Texture_74 {
        	name = "N° 74";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_95_co.paa";
        };

        class Texture_75 {
        	name = "N° 75";
        	value = "\a3\missions_f_aow\data\img\artwork\portrait\showcase_aow_picture_113_co.paa";
        };

        class Texture_76 {
        	name = "N° 76";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\altis_masterwork_01_co.paa";
        };

        class Texture_77 {
        	name = "N° 77";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\lost_masterwork_01_co.paa";
        };

        class Texture_78 {
        	name = "N° 78";
        	value = "\a3\missions_f_aow\data\img\artwork\masters\lost_masterwork_02_co.paa";
        };
			};
		};
	};
};
