
/***************************************************************************|
|                          VEHÍCULOS - "BANDERAS"                           |
|***************************************************************************/



/* -------------------------------- PAÍSES --------------------------------- */

class Flag_China_v1: Flag_White_F {
	author = "hozlucas28";
	displayName = "Estandarte [v1, China]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_China_v1.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_China.paa';";
	};
};


class Flag_Russia_v1: Flag_White_F {
	author = "hozlucas28";
	displayName = "Estandarte [v1, Rusia]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Quetzal_v1.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Russia.paa';";
	};
};


class Flag_China_v2: Flag_AAF_F {
	author = "hozlucas28";
	displayName = "Estandarte [v2, China]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_China_v2.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_China.paa';";
	};
};


class Flag_Russia_v2: Flag_AAF_F {
	author = "hozlucas28";
	displayName = "Estandarte [v2, Rusia]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Quetzal_v2.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Russia.paa';";
	};
};



/* ------------------------------- PELOTONES ------------------------------- */

class Flag_FCLA_v1: Flag_White_F {
	author = "hozlucas28";
	displayName = "Estandarte [v1, FCLA]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_FCLA_v1.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_FCLA.paa';";
	};
};


class Flag_Anti_FCLA_v1: Flag_White_F {
	author = "hozlucas28";
	displayName = "Estandarte [v1, Anti - FCLA]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Anti_FCLA_v1.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Anti_FCLA_1.paa';";
	};

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Bandera";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setFlagTexture _value;";
      defaultValue = """\FCLA_Objects\Flags\data\Flag_Anti_FCLA_1.paa""";

    	class values {
        class Texture_1 {
        	name = "N° 1";
        	value = "\FCLA_Objects\Flags\data\Flag_Anti_FCLA_1.paa";
        };

        class Texture_2 {
        	name = "N° 2";
        	value = "\FCLA_Objects\Flags\data\Flag_Anti_FCLA_2.paa";
        };
			};
		};
	};
};


class Flag_Takana_v1: Flag_White_F {
	author = "hozlucas28";
	displayName = "Estandarte [v1, Takana]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Takana_v1.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Takana.paa';";
	};
};


class Flag_Jaguar_v1: Flag_White_F {
	author = "hozlucas28";
	displayName = "Estandarte [v1, Jaguar]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Jaguar_v1.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Jaguar.paa';";
	};
};


class Flag_Condor_v1: Flag_White_F {
	author = "hozlucas28";
	displayName = "Estandarte [v1, Condor]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Condor_v1.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Condor.paa';";
	};
};


class Flag_Salamandra_v1: Flag_White_F {
	author = "hozlucas28";
	displayName = "Estandarte [v1, Salamandra]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Salamandra_v1.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Salamandra.paa';";
	};
};


class Flag_Anaconda_v1: Flag_White_F {
	author = "hozlucas28";
	displayName = "Estandarte [v1, Anaconda]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Anaconda_v1.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Anaconda.paa';";
	};
};


class Flag_Quetzal_v1: Flag_White_F {
	author = "hozlucas28";
	displayName = "Estandarte [v1, Quetzal]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Quetzal_v1.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Quetzal.paa';";
	};
};


class Flag_FCLA_v2: Flag_AAF_F {
	author = "hozlucas28";
	displayName = "Estandarte [v2, FCLA]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_FCLA_v2.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_FCLA.paa';";
	};
};


class Flag_Anti_FCLA_v2: Flag_AAF_F {
	author = "hozlucas28";
	displayName = "Estandarte [v2, Anti - FCLA]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Anti_FCLA_v2.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Anti_FCLA_1.paa';";
	};

	class Attributes {
    class FCLA_Switch_Texture {
      displayName = "Bandera";
      control = "Combo";
    	property = "FCLA_Switch_Texture";
      typeName = "STRING";
    	expression = "_this setFlagTexture _value;";
      defaultValue = """\FCLA_Objects\Flags\data\Flag_Anti_FCLA_1.paa""";

    	class values {
        class Texture_1 {
        	name = "N° 1";
        	value = "\FCLA_Objects\Flags\data\Flag_Anti_FCLA_1.paa";
        };

        class Texture_2 {
        	name = "N° 2";
        	value = "\FCLA_Objects\Flags\data\Flag_Anti_FCLA_2.paa";
        };
			};
		};
	};
};


class Flag_Takana_v2: Flag_AAF_F {
	author = "hozlucas28";
	displayName = "Estandarte [v2, Takana]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Takana_v2.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Takana.paa';";
	};
};


class Flag_Jaguar_v2: Flag_AAF_F {
	author = "hozlucas28";
	displayName = "Estandarte [v2, Jaguar]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Jaguar_v2.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Jaguar.paa';";
	};
};


class Flag_Condor_v2: Flag_AAF_F {
	author = "hozlucas28";
	displayName = "Estandarte [v2, Condor]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Condor_v2.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Condor.paa';";
	};
};


class Flag_Salamandra_v2: Flag_AAF_F {
	author = "hozlucas28";
	displayName = "Estandarte [v2, Salamandra]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Salamandra_v2.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Salamandra.paa';";
	};
};


class Flag_Anaconda_v2: Flag_AAF_F {
	author = "hozlucas28";
	displayName = "Estandarte [v2, Anaconda]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Anaconda_v2.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Anaconda.paa';";
	};
};


class Flag_Quetzal_v2: Flag_AAF_F {
	author = "hozlucas28";
	displayName = "Estandarte [v2, Quetzal]";
	//editorPreview = "\FCLA_Objects\Flags\data\pictures\Flag_Quetzal_v2.jpg";
  hiddenSelections[] = {"Camo_1"};
	editorCategory = "EdCat_Signs";
  editorSubcategory = "EdSubcat_Flags";
	scope = 2;
  scopeCurator = 2;

	class EventHandlers {
		init = "(_this select 0) setFlagTexture '\FCLA_Objects\Flags\data\Flag_Quetzal.paa';";
	};
};
