
/***************************************************************************|
|                         VEHÍCULOS - "HERRAMIENTAS"                        |
|***************************************************************************/

class Land_WallSign_01_Chalkboard_F_Tools: Land_WallSign_01_chalkboard_F {
  author = "hozlucas28";
  displayName = "Tablero de herramientas";
  //editorPreview = "\FCLA_Objects\Tools\pictures\Land_WallSign_01_Chalkboard_F_Tools.jpg";
  hiddenselections[] = {"camo1", "camo2"};
  hiddenSelectionsTextures[] = {"\a3\missions_f_orange\data\img\orange_compositions\n2\wallsign_01_f_chalkboard_tools_co.paa", "\a3\missions_f_orange\data\img\orange_compositions\n2\wallsign_01_f_chalkboard_tools_co.paa"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Tools";
  scope = 2;
  scopeCurator = 2;

  class Attributes {};
  class SimpleObject {
    init = "''";
  	eden = 0;
    verticalOffset = 0.46000001;
  	verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};


class Soustruh_Proxy: Furniture_base_F {
  author = "hozlucas28";
  displayName = "Torno";
  icon = "iconObject_1x4";
  model = "\a3\structures_f_enoch\furniture\various\soustruh_proxy.p3d";
  //editorPreview = "\FCLA_Objects\Tools\pictures\Soustruh_Proxy.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "EdSubcat_Tools";
  mapSize = 2.6199999;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 1;
    verticalOffset = 0.49700001;
  	verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};
