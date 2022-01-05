
/***************************************************************************|
|                          VEHÍCULOS - "GRAFITIS"                           |
|***************************************************************************/



/* ------------------------------- PELOTONES ------------------------------- */

class Custom_UserTexture1m_F: UserTexture1m_F {
  author = "hozlucas28";
  displayName = "Textura de usuario (1 m, personalizada)";
  //editorPreview = "\FCLA_Objects\Graffitis\data\pictures\Custom_UserTexture1m_F.jpg";
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
        	name = "FCLA (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_FCLA_Big.paa";
        };

        class Texture_2 {
        	name = "FCLA (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_FCLA_Medium.paa";
        };

        class Texture_3 {
        	name = "FCLA (pequeña)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_FCLA_Small.paa";
        };

        class Texture_4 {
        	name = "Anti - FCLA (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Anti_FCLA_Big.paa";
        };

        class Texture_5 {
        	name = "Anti - FCLA (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Anti_FCLA_Medium.paa";
        };

        class Texture_6 {
        	name = "Anti - FCLA (pequeña)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Anti_FCLA_Small.paa";
        };

        class Texture_7 {
        	name = "Takana (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Takana_Big.paa";
        };

        class Texture_8 {
        	name = "Takana (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Takana_Medium.paa";
        };

        class Texture_9 {
        	name = "Takana (pequeña)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Takana_Small.paa";
        };

        class Texture_10 {
        	name = "Jaguar (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Jaguar_Big.paa";
        };

        class Texture_11 {
        	name = "Jaguar (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Jaguar_Medium.paa";
        };

        class Texture_12 {
        	name = "Jaguar (pequeña)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Jaguar_Small.paa";
        };

        class Texture_13 {
        	name = "Condor (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Condor_Big.paa";
        };

        class Texture_14 {
        	name = "Condor (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Condor_Medium.paa";
        };

        class Texture_15 {
        	name = "Condor (pequeña)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Condor_Small.paa";
        };

        class Texture_16 {
        	name = "Salamandra (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Salamandra_Big.paa";
        };

        class Texture_17 {
        	name = "Salamandra (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Salamandra_Medium.paa";
        };

        class Texture_18 {
        	name = "Salamandra (pequeña)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Salamandra_Small.paa";
        };

        class Texture_19 {
        	name = "Anaconda (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Anaconda_Big.paa";
        };

        class Texture_20 {
        	name = "Anaconda (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Anaconda_Medium.paa";
        };

        class Texture_21 {
        	name = "Anaconda (pequeña)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Anaconda_Small.paa";
        };

        class Texture_22 {
        	name = "Quetzal (grande)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Quetzal_Big.paa";
        };

        class Texture_23 {
        	name = "Quetzal (mediana)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Quetzal_Medium.paa";
        };

        class Texture_24 {
        	name = "Quetzal (pequeña)";
        	value = "\FCLA_Objects\Graffitis\data\UserTexture1m_F_Quetzal_Small.paa";
        };
			};
		};
	};
};



/* --------------------------------- OTROS --------------------------------- */

class Cross_UserTexture1m_F: UserTexture1m_F {
  author = "hozlucas28";
  displayName = "Cruz";
  //editorPreview = "\FCLA_Objects\Graffitis\data\pictures\Cross_UserTexture1m_F.jpg";
  hiddenSelectionsTextures[] = {"\FCLA_Objects\Graffitis\data\UserTexture1m_F_Cross.paa"};
  editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_BlankSigns";
  scope = 2;
  scopeCurator = 2;
};
