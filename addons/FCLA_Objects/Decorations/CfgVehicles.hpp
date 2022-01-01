
/***************************************************************************|
|                         VEHÍCULOS - "DECORACIONES"                        |
|***************************************************************************/

class FCLA_Piano: Furniture_Residental_base_F {
  author = "hozlucas28";
  displayName = "Piano";
  icon = "iconObject_1x2";
  model = "\A3\structures_f_enoch\furniture\decoration\piano\piano.p3d";
  editorPreview = "\A3\EditorPreviews_f_expEden\data\cfgVehicles\piano.jpg";
  mapSize = 2.26;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 0;
    animate[] = {};
    hide[] = {};
    verticalOffset = 0.456;
    verticalOffsetWorld = 0;
    init = "''";
  };
};
