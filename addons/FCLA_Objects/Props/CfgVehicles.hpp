
/***************************************************************************|
|                           VEHÍCULOS - "UTILERÍA"                          |
|***************************************************************************/



/* ------------------------------- TEXTURAS -------------------------------- */

class RainDrops: Helper_Base_F {
  displayName = "Gotas de lluvia";
  icon = "iconObject_1x1";
  model = "\A3\data_f\RainDrop.p3d";
  //editorPreview = "\FCLA_Objects\Props\pictures\FCLA_Small_Bullet_Holes.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;
};


class Small_Bullet_Holes: UserTexture1m_F	{
  author = "hozlucas28";
  displayName = "Agujeros de bala (pequeños)";
  //editorPreview = "\FCLA_Objects\Props\pictures\FCLA_Small_Bullet_Holes.jpg";
  hiddenSelectionsTextures[] = {"\A3\structures_f_enoch\military\Training\Data\targets_A_CO.paa"};
  hiddenSelectionsMaterials[] = {"\A3\structures_f_enoch\military\Training\Data\targets.rvmat"};
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;
};


class Planks_v1: Items_base_F	{
  author = "hozlucas28";
  displayName = "Barricada de tablas (v1)";
  model = "\A3\structures_f\data\DoorLocks\planks_1.p3d";
  //editorPreview = "\FCLA_Objects\Props\pictures\FCLA_Planks_v1.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
    verticalOffset = -5;
  	verticalOffsetWorld = -5;
  	hide[] = {};
    animate[] = {};
  };
};


class Planks_v2: Items_base_F	{
  author = "hozlucas28";
  displayName = "Barricada de tablas (v2)";
  model = "\A3\structures_f\data\DoorLocks\planks_2.p3d";
  //editorPreview = "\FCLA_Objects\Props\pictures\FCLA_Planks_v2.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
    verticalOffset = -5;
  	verticalOffsetWorld = -5;
  	hide[] = {};
    animate[] = {};
  };
};


class Huge_Bullet_Holes_v1: UserTexture10m_F {
  author = "hozlucas28";
  displayName = "Agujeros de bala (grandes, v1)";
  //editorPreview = "\FCLA_Objects\Props\pictures\FCLA_Huge_Bullet_Holes_v1.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_tacops\Campaign_1\Missions\to_c01m02.Altis\HOUSE_D2.paa"};
  vehicleClass = "Signs";
  destrType = "DestructNo";
  mapSize = 10;
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
    verticalOffset = 0.0060000001;
  	verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};


class Huge_Bullet_Holes_v2: Huge_Bullet_Holes_v1 {
  author = "hozlucas28";
  displayName = "Agujeros de bala (grandes, v2)";
  //editorPreview = "\FCLA_Objects\Props\pictures\FCLA_Huge_Bullet_Holes_v2.jpg";
  hiddenSelectionsTextures[] = {"\A3\missions_f_tacops\Campaign_1\Missions\to_c01m02.Altis\HOUSE_HOLE.PAA"};
  mapSize = 10;
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
    verticalOffset = 0.0060000001;
    verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};



/* -------------------------------- OBJETOS -------------------------------- */

class Short_Sandbags: BagFence_base_F	{
  author = "hozlucas28";
  displayName = "Muro de sacos (corto, verde)";
  icon = "iconObject_1x1";
  model = "\A3\structures_f\data\DoorLocks\sandbags_1.p3d";
  //editorPreview = "\FCLA_Objects\Props\pictures\FCLA_Short_Sandbags.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  reversed = 1;
  mapSize = 1.98;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 0;
    init = "''";
    verticalOffset = 0.41499999;
  	verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};


class Piano: Furniture_Residental_base_F {
  author = "hozlucas28";
  displayName = "Piano";
  icon = "iconObject_1x2";
  model = "\A3\structures_f_enoch\furniture\decoration\piano\piano.p3d";
  //editorPreview = "\FCLA_Objects\Props\pictures\FCLA_Piano.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  mapSize = 2.26;
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 0;
    init = "''";
    verticalOffset = 0.456;
    verticalOffsetWorld = 0;
    hide[] = {};
    animate[] = {};
  };
};


class Christmas_Tree: Strategic {
  author = "hozlucas28";
  displayName = "Arbol de navidad";
  model = "\a3\vegetation_f_enoch\Tree\t_PiceaAbiesNativitatis_2s.p3d";
  //editorPreview = "\FCLA_Objects\Props\pictures\FCLA_Christmas_Tree.jpg";
  nameSound = "obj_tree";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
  	eden = 0;
    verticalOffset = 0.24699999;
  	verticalOffsetWorld = 0;
  	hide[] = {};
    animate[] = {};
  };
};
