
/***************************************************************************|
|                            VEHICULOS - "FOTOS"                            |
|***************************************************************************/



/* --------------------------------- MARCO --------------------------------- */

class Land_Photoframe_02_Eddie_F: Land_Photoframe_02_F {
  displayName = "Marco con foto (retrato, Eddie)";
  editorPreview = "\FCLA_Objects\Photos\data\pictures\Land_Photoframe_02_Eddie_F.jpg";
  hiddenSelectionsTextures[] = {"a3\missions_f_aow\data\img\showcase_aow_eddie_co.paa", "a3\props_f_aow\items\decorative\data\photoframe_02_f_co.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Office";
  scope = 2;
  scopeCurator = 2;
};



/* --------------------------------- FOTO ---------------------------------- */

class Custom_Land_Photos_V1_F: Land_Photos_V1_F {
  displayName = "Fotos (meme)";
  editorPreview = "\FCLA_Objects\Photos\data\pictures\Custom_Land_Photos_V1_F.jpg";
  hiddenSelectionsTextures[] = {"\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_1.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Office";
  scope = 2;
  scopeCurator = 2;

  class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Foto";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_1.paa""";

    	class values {
        class Texture_1 {
        	name = "Numero 1";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_1.paa";
        };

        class Texture_2 {
        	name = "Numero 2";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_2.paa";
        };

        class Texture_3 {
        	name = "Numero 3";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_3.paa";
        };

        class Texture_4 {
        	name = "Numero 4";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_4.paa";
        };

        class Texture_5 {
        	name = "Numero 5";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_5.paa";
        };

        class Texture_6 {
        	name = "Numero 6";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_6.paa";
        };

        class Texture_7 {
        	name = "Numero 7";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_7.paa";
        };

        class Texture_8 {
        	name = "Numero 8";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_8.paa";
        };

        class Texture_9 {
        	name = "Numero 9";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_9.paa";
        };

        class Texture_10 {
        	name = "Numero 10";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_10.paa";
        };

        class Texture_11 {
        	name = "Numero 11";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_11.paa";
        };

        class Texture_12 {
        	name = "Numero 12";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_12.paa";
        };

        class Texture_13 {
        	name = "Numero 13";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_13.paa";
        };

        class Texture_14 {
        	name = "Numero 14";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_14.paa";
        };

        class Texture_15 {
        	name = "Numero 15";
        	value = "\FCLA_Objects\Photos\data\Custom_Land_Photos_V1_F_Meme_15.paa";
        };
			};
		};
	};
};
