
/***************************************************************************|
|                          VEHICULOS - "GRAFITIS"                           |
|***************************************************************************/



/* ----------------------------------- X ----------------------------------- */

class Cross_UserTexture1m_F: UserTexture1m_F {
  author = "hozlucas28";
  displayName = "Grafiti (X)";
  editorPreview = "\FCLA_Objects\Graffitis\data\pictures\Cross_UserTexture1m_F.jpg";
  hiddenSelectionsTextures[] = {"\FCLA_Objects\Graffitis\data\UserTexture1m_F_Cross.paa"};
  editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_BlankSigns";
  scope = 2;
  scopeCurator = 2;
};



/* ------------------------------- PELOTONES ------------------------------- */

class Custom_UserTexture1m_F: UserTexture1m_F {
  author = "hozlucas28";
  displayName = "Textura de usuario (1 m, personalizada)";
  editorPreview = "\FCLA_Objects\Graffitis\data\pictures\Custom_UserTexture1m_F.jpg";
  hiddenSelectionsTextures[] = {"\FCLA_Objects\Graffitis\data\UserTexture1m_F_FCLA_Big.paa"};
  editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_BlankSigns";
  scope = 2;
  scopeCurator = 2;

  class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Textura";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\FCLA_Objects\Graffitis\data\UserTexture1m_F_FCLA_Big.paa""";

    	class values {
        class Texture_1 {
        	name = "A";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_A.paa";
        };

        class Texture_2 {
        	name = "B";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_B.paa";
        };

        class Texture_3 {
        	name = "Numero 1";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_N1.paa";
        };

        class Texture_4 {
        	name = "Numero 2";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_N2.paa";
        };

        class Texture_5 {
        	name = "Numero 3";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_N3.paa";
        };

        class Texture_6 {
        	name = "Numero 4";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_N4.paa";
        };

        class Texture_7 {
        	name = "FCLA (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_FCLA_Big.paa";
        };

        class Texture_8 {
        	name = "FCLA (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_FCLA_Medium.paa";
        };

        class Texture_9 {
        	name = "FCLA (pequena)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_FCLA_Small.paa";
        };

        class Texture_10 {
        	name = "Anti - FCLA (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Anti_FCLA_Big.paa";
        };

        class Texture_11 {
        	name = "Anti - FCLA (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Anti_FCLA_Medium.paa";
        };

        class Texture_12 {
        	name = "Anti - FCLA (pequena)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Anti_FCLA_Small.paa";
        };

        class Texture_13 {
        	name = "Takana (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Takana_Big.paa";
        };

        class Texture_14 {
        	name = "Takana (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Takana_Medium.paa";
        };

        class Texture_15 {
        	name = "Takana (pequena)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Takana_Small.paa";
        };

        class Texture_16 {
        	name = "Jaguar (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Jaguar_Big.paa";
        };

        class Texture_17 {
        	name = "Jaguar (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Jaguar_Medium.paa";
        };

        class Texture_18 {
        	name = "Jaguar (pequena)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Jaguar_Small.paa";
        };

        class Texture_19 {
        	name = "Condor (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Condor_Big.paa";
        };

        class Texture_20 {
        	name = "Condor (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Condor_Medium.paa";
        };

        class Texture_21 {
        	name = "Condor (pequena)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Condor_Small.paa";
        };

        class Texture_22 {
        	name = "Salamandra (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Salamandra_Big.paa";
        };

        class Texture_23 {
        	name = "Salamandra (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Salamandra_Medium.paa";
        };

        class Texture_24 {
        	name = "Salamandra (pequena)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Salamandra_Small.paa";
        };

        class Texture_25 {
        	name = "Anaconda (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Anaconda_Big.paa";
        };

        class Texture_26 {
        	name = "Anaconda (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Anaconda_Medium.paa";
        };

        class Texture_27 {
        	name = "Anaconda (pequena)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Anaconda_Small.paa";
        };

        class Texture_28 {
        	name = "Quetzal (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Quetzal_Big.paa";
        };

        class Texture_29 {
        	name = "Quetzal (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Quetzal_Medium.paa";
        };

        class Texture_30 {
        	name = "Quetzal (pequena)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Quetzal_Small.paa";
        };
			};
		};
	};
};
