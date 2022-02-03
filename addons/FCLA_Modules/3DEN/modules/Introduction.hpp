
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una introduccion animada al comienzo del escenario.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Introduction: Module_F {
  author = "hozlucas28";
	displayName = "Introduccion";
  icon = "\FCLA_Modules\3DEN\data\Tag.paa";
  portrait = "\FCLA_Modules\3DEN\data\Tag.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setIntroduction3DEN";
	isGlobal = 1;
  isDisposable = 1;
	isTriggerActivated = 0;
  scope = 2;


	class Attributes: AttributesBase {
		class FCLA_Title: Edit {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Title";
      displayName = "Titulo";
      defaultValue = "''";
		};

    class FCLA_Subtitle: Edit {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Subtitle";
      displayName = "Subtitulo";
      defaultValue = "''";
		};

    class FCLA_Introductory_Video: Edit {
      tooltip = "Directorio del video a reproducir.";
      typeName = "STRING";
      property = "FCLA_Introductory_Video";
      displayName = "Video introductorio";
      defaultValue = "''";
		};

    class FCLA_Show_On_Reconnect: Combo {
      tooltip = "Determina que veran aquellos jugadores que han reproducido la introduccion, pero tuvieron que reconectarse a la partida.";
      typeName = "STRING";
      property = "FCLA_Show_On_Reconnect";
      displayName = "Al reconectarse";
      defaultValue = """NONE""";

			class Values {
        class None {
					name = "Nada";
					value = "NONE";
				};

				class Title_And_Subtitle {
					name = "Reproducir titulo y subtitulo";
					value = "TITLE_AND_SUBTITLE";
				};

				class Video {
					name = "Reproducir video introductorio";
					value = "VIDEO";
				};

        class All {
					name = "Reproducir todo";
					value = "ALL";
				};
			};
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
		description[] =	{
      "Reproduce una introduccion animada al comienzo del escenario.",
      "",
      "- Si el titulo y/o subtitulo no son definidos unicamente se mostrara el video introductorio, el cual es opcional."
    };
	};
};
