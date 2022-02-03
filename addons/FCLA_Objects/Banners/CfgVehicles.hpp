
/***************************************************************************|
|                         VEHICULOS - "ESTANDARTES"                         |
|***************************************************************************/



/* -------------------------------- PAISES --------------------------------- */

class Banner_01_China: Banner_01_base_F {
	author = "hozlucas28";
	displayName = "Estandarte [China]";
	editorPreview = "\FCLA_Objects\Banners\data\pictures\Banner_01_China.jpg";
	hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\FCLA_Objects\Banners\data\Banner_01_China.paa"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;
};


class Banner_01_Russia: Banner_01_base_F {
	author = "hozlucas28";
	displayName = "Estandarte [Rusia]";
	editorPreview = "\FCLA_Objects\Banners\data\pictures\Banner_01_Quetzal.jpg";
	hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\FCLA_Objects\Banners\data\Banner_01_Russia.paa"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;
};



/* ------------------------------- PELOTONES ------------------------------- */

class Banner_01_FCLA: Banner_01_base_F {
	author = "hozlucas28";
	displayName = "Estandarte [FCLA]";
	editorPreview = "\FCLA_Objects\Banners\data\pictures\Banner_01_FCLA.jpg";
	hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\FCLA_Objects\Banners\data\Banner_01_FCLA.paa"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;
};


class Banner_01_Anti_FCLA: Banner_01_base_F {
	author = "hozlucas28";
	displayName = "Estandarte [Anti - FCLA]";
	editorPreview = "\FCLA_Objects\Banners\data\pictures\Banner_01_Anti_FCLA.jpg";
	hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\FCLA_Objects\Banners\data\Banner_01_Anti_FCLA_1.paa"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Banners\data\Banner_01_Anti_FCLA_1.paa';";
	};

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Estandarte";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setObjectTextureGlobal [0, _value];";
      defaultValue = """\FCLA_Objects\Banners\data\Banner_01_Anti_FCLA_1.paa""";

    	class values {
        class Texture_1 {
        	name = "N° 1";
        	value = "\FCLA_Objects\Banners\data\Banner_01_Anti_FCLA_1.paa";
        };

        class Texture_2 {
        	name = "N° 2";
        	value = "\FCLA_Objects\Banners\data\Banner_01_Anti_FCLA_2.paa";
        };
			};
		};
	};
};


class Banner_01_Takana: Banner_01_base_F {
	author = "hozlucas28";
	displayName = "Estandarte [Takana]";
	editorPreview = "\FCLA_Objects\Banners\data\pictures\Banner_01_Takana.jpg";
	hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\FCLA_Objects\Banners\data\Banner_01_Takana.paa"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;
};


class Banner_01_Jaguar: Banner_01_base_F {
	author = "hozlucas28";
	displayName = "Estandarte [Jaguar]";
	editorPreview = "\FCLA_Objects\Banners\data\pictures\Banner_01_Jaguar.jpg";
	hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\FCLA_Objects\Banners\data\Banner_01_Jaguar.paa"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;
};


class Banner_01_Condor: Banner_01_base_F {
	author = "hozlucas28";
	displayName = "Estandarte [Condor]";
	editorPreview = "\FCLA_Objects\Banners\data\pictures\Banner_01_Condor.jpg";
	hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\FCLA_Objects\Banners\data\Banner_01_Condor.paa"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;
};


class Banner_01_Salamandra: Banner_01_base_F {
	author = "hozlucas28";
	displayName = "Estandarte [Salamandra]";
	editorPreview = "\FCLA_Objects\Banners\data\pictures\Banner_01_Salamandra.jpg";
	hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\FCLA_Objects\Banners\data\Banner_01_Salamandra.paa"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;
};


class Banner_01_Anaconda: Banner_01_base_F {
	author = "hozlucas28";
	displayName = "Estandarte [Anaconda]";
	editorPreview = "\FCLA_Objects\Banners\data\pictures\Banner_01_Anaconda.jpg";
	hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\FCLA_Objects\Banners\data\Banner_01_Anaconda.paa"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;
};


class Banner_01_Quetzal: Banner_01_base_F {
	author = "hozlucas28";
	displayName = "Estandarte [Quetzal]";
	editorPreview = "\FCLA_Objects\Banners\data\pictures\Banner_01_Quetzal.jpg";
	hiddenSelections[] = {"camo"};
	hiddenSelectionsTextures[] = {"\FCLA_Objects\Banners\data\Banner_01_Quetzal.paa"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;
};
