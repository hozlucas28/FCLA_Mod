
/********************************************************************************|
|                             BARRA DE MENUS - 3EDEN                             |
|********************************************************************************/

class Display3DEN {
  class Controls {
    class MenuStrip: ctrlMenuStrip {
      class Items {
				class FCLA_Mod {
					text = "FCLA Mod";
					items[] += {"FCLA_Wix", "FCLA_Data", "FCLA_Sounds", "FCLA_Variables", "FCLA_Public_Events", "FCLA_Public_Functions", "Separator", "FCLA_Mod_Pack"};
				};

				class FCLA_Mod_Pack {
					text = "FCLA Mod Pack";
					picture = "\a3\3DEN\Data\Controls\ctrlMenu\link_ca.paa";
					weblink = "https://steamcommunity.com/sharedfiles/filedetails/?id=2740928463";
					opensNewWindow = 1;
				};

				class FCLA_Wix: FCLA_Mod_Pack {
					text = "Wix";
					picture = "\a3\3DEN\Data\Controls\ctrlMenu\link_ca.paa";
					weblink = "https://arma3clanfcla.wixsite.com/fcla";
					opensNewWindow = 1;
				};

				class FCLA_Data: FCLA_Mod_Pack {
					text = "Data";
					picture = "\a3\3DEN\Data\Controls\ctrlMenu\link_ca.paa";
					weblink = "https://github.com/hozlucas28/FCLA_Mod/wiki/Data";
				};

				class FCLA_Sounds: FCLA_Mod_Pack {
					text = "Sonidos";
					picture = "\a3\3DEN\Data\Controls\ctrlMenu\link_ca.paa";
					weblink = "https://github.com/hozlucas28/FCLA_Mod/wiki/Sonidos";
				};

				class FCLA_Variables: FCLA_Mod_Pack {
					text = "Variables";
					picture = "\a3\3DEN\Data\Controls\ctrlMenu\link_ca.paa";
					weblink = "https://github.com/hozlucas28/FCLA_Mod/wiki/Variables";
				};

				class FCLA_Public_Events: FCLA_Mod_Pack {
					text = "Eventos publicos";
					picture = "\a3\3DEN\Data\Controls\ctrlMenu\link_ca.paa";
					weblink = "https://github.com/hozlucas28/FCLA_Mod/wiki/Eventos-Personalizados";
				};

				class FCLA_Public_Functions: FCLA_Mod_Pack {
					text = "Funciones publicas";
					picture = "\a3\3DEN\Data\Controls\ctrlMenu\link_ca.paa";
					weblink = "https://github.com/hozlucas28/FCLA_Mod/wiki/Funciones-P%C3%BAblicas";
				};
        items[] += {"FCLA_Mod"};
      };
    };
	};
};
