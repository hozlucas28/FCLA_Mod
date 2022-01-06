
/***************************************************************************|
|                          VEHÍCULOS - "PIZARRAS"                           |
|***************************************************************************/

class Custom_Land_MapBoard_F: Land_MapBoard_F	{
  author = "hozlucas28";
	displayName = "Pizarra (personalizada)";
	editorPreview = "\FCLA_Objects\Boards\pictures\Custom_Land_MapBoard_F.jpg";
  hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"a3\missions_f_orange\data\img\showcase_lawsofwar\whiteboard_main_co.paa"};
  editorCategory = "EdCat_Furniture";
  editorSubcategory = "EdSubcat_Office";
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pizarra";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\missions_f_orange\data\img\showcase_lawsofwar\whiteboard_main_co.paa""";

    	class values {
        class Texture_1 {
        	name = "N° 1";
        	value = "\a3\missions_f_orange\data\img\showcase_lawsofwar\whiteboard_main_co.paa";
        };

        class Texture_2 {
        	name = "N° 2";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_activity_co.paa";
        };

        class Texture_3 {
        	name = "N° 3";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_aid_co.paa";
        };

        class Texture_4 {
        	name = "N° 4";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_air_co.paa";
        };

        class Texture_5 {
        	name = "N° 5";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_autonomous_co.paa";
        };

        class Texture_6 {
        	name = "N° 6";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_expo_co.paa";
        };

        class Texture_7 {
        	name = "N° 7";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_idap_co.paa";
        };

        class Texture_8 {
        	name = "N° 8";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_ihl_co.paa";
        };

        class Texture_9 {
        	name = "N° 9";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_kiosk_co.paa";
        };

        class Texture_10 {
        	name = "N° 10";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_land_co.paa";
        };

        class Texture_11 {
        	name = "N° 11";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_idap1_co.paa";
        };

        class Texture_12 {
        	name = "N° 12";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_idap2_co.paa";
        };

        class Texture_13 {
        	name = "N° 13";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_idap3_co.paa";
        };

        class Texture_14 {
        	name = "N° 14";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_idap4_co.paa";
        };

        class Texture_15 {
        	name = "N° 15";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_idap5_co.paa";
        };

        class Texture_16 {
        	name = "N° 16";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_idap6_co.paa";
        };

        class Texture_17 {
        	name = "N° 17";
        	value = "\a3\missions_f_orange\data\img\orange_compositions\a1\whiteboard_campsplendid_co.paa";
        };

        class Texture_18 {
        	name = "N° 18";
        	value = "\a3\missions_f_orange\data\img\orange_compositions\a1\whiteboard_campsplendid_postwar_co.paa";
        };

        class Texture_19 {
        	name = "N° 19";
        	value = "\a3\missions_f_oldman\data\img\whiteboards\csat_whtb_oumere_mosq_co.paa";
        };

        class Texture_20 {
        	name = "N° 20";
        	value = "\a3\missions_f_oldman\data\img\whiteboards\syn_whtb_cerebu_co.paa";
        };

        class Texture_21 {
        	name = "N° 21";
        	value = "\a3\structures_f_oldman\signs\boards\data\mapboard_tanoa_syndikat_co.paa";
        };

        class Texture_22 {
        	name = "N° 22";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_a_in_lz_co.paa";
        };

        class Texture_23 {
        	name = "N° 23";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_a_in_camp_co.paa";
        };

        class Texture_24 {
        	name = "N° 24";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_a_m01_co.paa";
        };

        class Texture_25 {
        	name = "N° 25";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_a_m02_co.paa";
        };

        class Texture_26 {
        	name = "N° 26";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_a_m03_co.paa";
        };

        class Texture_27 {
        	name = "N° 27";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_a_m04_co.paa";
        };

        class Texture_28 {
        	name = "N° 28";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_a_m05_co.paa";
        };

        class Texture_29 {
        	name = "N° 29";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_a_out_co.paa";
        };

        class Texture_30 {
        	name = "N° 30";
        	value = "\a3\missions_f_epa\data\img\whiteboards\mapboard_altis_c_in1_co.paa";
        };

        class Texture_31 {
        	name = "N° 31";
        	value = "\a3\missions_f_epa\data\img\papermaps\papermap_briefing_b_hub01_co.paa";
        };

        class Texture_32 {
        	name = "N° 32";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd01_co.paa";
        };

        class Texture_33 {
        	name = "N° 33";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd02_co.paa";
        };

        class Texture_34 {
        	name = "N° 34";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd03_co.paa";
        };

        class Texture_35 {
        	name = "N° 35";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd04_co.paa";
        };

        class Texture_36 {
        	name = "N° 36";
        	value = "\a3\missions_f_gamma\data\img\whiteboards\whiteboard_sp_fd05_co.paa";
        };

        class Texture_37 {
        	name = "N° 37";
        	value = "\a3\missions_f_gamma\data\img\whiteboards\whiteboard_sp_fd06_co.paa";
        };

        class Texture_38 {
        	name = "N° 38";
        	value = "\a3\missions_f_gamma\data\img\whiteboards\whiteboard_sp_fd07_co.paa";
        };

        class Texture_39 {
        	name = "N° 39";
        	value = "\a3\missions_f_gamma\data\img\whiteboards\whiteboard_sp_fd08_co.paa";
        };

        class Texture_40 {
        	name = "N° 40";
        	value = "\a3\missions_f_gamma\data\img\whiteboards\whiteboard_sp_fd09_co.paa";
        };

        class Texture_41 {
        	name = "N° 41";
        	value = "\a3\missions_f_gamma\data\img\whiteboards\whiteboard_sp_fd10_co.paa";
        };

        class Texture_42 {
        	name = "N° 42";
        	value = "\a3\missions_f_mark\data\img\whiteboards\whiteboard_sp_fd11_co.paa";
        };

        class Texture_43 {
        	name = "N° 43";
        	value = "\a3\missions_f_mark\data\img\whiteboards\whiteboard_sp_fd12_co.paa";
        };

        class Texture_44 {
        	name = "N° 44";
        	value = "\a3\missions_f_mark\data\img\whiteboards\whiteboard_sp_fd13_co.paa";
        };

        class Texture_45 {
        	name = "N° 45";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd14_a_co.paa";
        };

        class Texture_46 {
        	name = "N° 46";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd14_b_co.paa";
        };

        class Texture_47 {
        	name = "N° 47";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd14_c_co.paa";
        };
			};
		};
	};
};


class Custom_Land_MapBoard_01_Wall_F: Land_MapBoard_01_Wall_F	{
  author = "hozlucas28";
	displayName = "Pizarra (pared, personalizada)";
	editorPreview = "\FCLA_Objects\Boards\pictures\Custom_Land_MapBoard_01_Wall_F.jpg";
  hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"a3\missions_f_orange\data\img\showcase_lawsofwar\whiteboard_main_co.paa"};
  editorCategory = "EdCat_Furniture";
  editorSubcategory = "EdSubcat_Office";
	scope = 2;
  scopeCurator = 2;

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Pizarra";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\a3\missions_f_orange\data\img\showcase_lawsofwar\whiteboard_main_co.paa""";

    	class values {
        class Texture_1 {
        	name = "N° 1";
        	value = "\a3\missions_f_orange\data\img\showcase_lawsofwar\whiteboard_main_co.paa";
        };

        class Texture_2 {
        	name = "N° 2";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_activity_co.paa";
        };

        class Texture_3 {
        	name = "N° 3";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_aid_co.paa";
        };

        class Texture_4 {
        	name = "N° 4";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_air_co.paa";
        };

        class Texture_5 {
        	name = "N° 5";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_autonomous_co.paa";
        };

        class Texture_6 {
        	name = "N° 6";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_expo_co.paa";
        };

        class Texture_7 {
        	name = "N° 7";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_idap_co.paa";
        };

        class Texture_8 {
        	name = "N° 8";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_ihl_co.paa";
        };

        class Texture_9 {
        	name = "N° 9";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_kiosk_co.paa";
        };

        class Texture_10 {
        	name = "N° 10";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_area_land_co.paa";
        };

        class Texture_11 {
        	name = "N° 11";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_idap1_co.paa";
        };

        class Texture_12 {
        	name = "N° 12";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_idap2_co.paa";
        };

        class Texture_13 {
        	name = "N° 13";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_idap3_co.paa";
        };

        class Texture_14 {
        	name = "N° 14";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_idap4_co.paa";
        };

        class Texture_15 {
        	name = "N° 15";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_idap5_co.paa";
        };

        class Texture_16 {
        	name = "N° 16";
        	value = "\a3\missions_f_orange\data\img\faction_idap\whiteboard_idap6_co.paa";
        };

        class Texture_17 {
        	name = "N° 17";
        	value = "\a3\missions_f_orange\data\img\orange_compositions\a1\whiteboard_campsplendid_co.paa";
        };

        class Texture_18 {
        	name = "N° 18";
        	value = "\a3\missions_f_orange\data\img\orange_compositions\a1\whiteboard_campsplendid_postwar_co.paa";
        };

        class Texture_19 {
        	name = "N° 19";
        	value = "\a3\missions_f_oldman\data\img\whiteboards\csat_whtb_oumere_mosq_co.paa";
        };

        class Texture_20 {
        	name = "N° 20";
        	value = "\a3\missions_f_oldman\data\img\whiteboards\syn_whtb_cerebu_co.paa";
        };

        class Texture_21 {
        	name = "N° 21";
        	value = "\a3\structures_f_oldman\signs\boards\data\mapboard_tanoa_syndikat_co.paa";
        };

        class Texture_22 {
        	name = "N° 22";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_a_in_lz_co.paa";
        };

        class Texture_23 {
        	name = "N° 23";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_a_in_camp_co.paa";
        };

        class Texture_24 {
        	name = "N° 24";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_a_m01_co.paa";
        };

        class Texture_25 {
        	name = "N° 25";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_a_m02_co.paa";
        };

        class Texture_26 {
        	name = "N° 26";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_a_m03_co.paa";
        };

        class Texture_27 {
        	name = "N° 27";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_a_m04_co.paa";
        };

        class Texture_28 {
        	name = "N° 28";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_a_m05_co.paa";
        };

        class Texture_29 {
        	name = "N° 29";
        	value = "\a3\missions_f_epa\data\img\whiteboards\whiteboard_briefing_a_out_co.paa";
        };

        class Texture_30 {
        	name = "N° 30";
        	value = "\a3\missions_f_epa\data\img\whiteboards\mapboard_altis_c_in1_co.paa";
        };

        class Texture_31 {
        	name = "N° 31";
        	value = "\a3\missions_f_epa\data\img\papermaps\papermap_briefing_b_hub01_co.paa";
        };

        class Texture_32 {
        	name = "N° 32";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd01_co.paa";
        };

        class Texture_33 {
        	name = "N° 33";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd02_co.paa";
        };

        class Texture_34 {
        	name = "N° 34";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd03_co.paa";
        };

        class Texture_35 {
        	name = "N° 35";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd04_co.paa";
        };

        class Texture_36 {
        	name = "N° 36";
        	value = "\a3\missions_f_gamma\data\img\whiteboards\whiteboard_sp_fd05_co.paa";
        };

        class Texture_37 {
        	name = "N° 37";
        	value = "\a3\missions_f_gamma\data\img\whiteboards\whiteboard_sp_fd06_co.paa";
        };

        class Texture_38 {
        	name = "N° 38";
        	value = "\a3\missions_f_gamma\data\img\whiteboards\whiteboard_sp_fd07_co.paa";
        };

        class Texture_39 {
        	name = "N° 39";
        	value = "\a3\missions_f_gamma\data\img\whiteboards\whiteboard_sp_fd08_co.paa";
        };

        class Texture_40 {
        	name = "N° 40";
        	value = "\a3\missions_f_gamma\data\img\whiteboards\whiteboard_sp_fd09_co.paa";
        };

        class Texture_41 {
        	name = "N° 41";
        	value = "\a3\missions_f_gamma\data\img\whiteboards\whiteboard_sp_fd10_co.paa";
        };

        class Texture_42 {
        	name = "N° 42";
        	value = "\a3\missions_f_mark\data\img\whiteboards\whiteboard_sp_fd11_co.paa";
        };

        class Texture_43 {
        	name = "N° 43";
        	value = "\a3\missions_f_mark\data\img\whiteboards\whiteboard_sp_fd12_co.paa";
        };

        class Texture_44 {
        	name = "N° 44";
        	value = "\a3\missions_f_mark\data\img\whiteboards\whiteboard_sp_fd13_co.paa";
        };

        class Texture_45 {
        	name = "N° 45";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd14_a_co.paa";
        };

        class Texture_46 {
        	name = "N° 46";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd14_b_co.paa";
        };

        class Texture_47 {
        	name = "N° 47";
        	value = "\a3\missions_f_beta\data\img\whiteboards\whiteboard_sp_fd14_c_co.paa";
        };
			};
		};
	};
};
