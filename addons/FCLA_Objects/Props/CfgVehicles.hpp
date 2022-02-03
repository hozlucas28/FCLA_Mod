
/***************************************************************************|
|                           VEHICULOS - "UTILERIA"                          |
|***************************************************************************/



/* ------------------------------- TEXTURAS -------------------------------- */

class RainDrops: Helper_Base_F {
  displayName = "Gotas de lluvia";
  icon = "iconObject_1x1";
  model = "\a3\data_f\raindrop.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\RainDrops.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;
};


class Small_Bullet_Holes: UserTexture1m_F	{
  author = "hozlucas28";
  displayName = "Agujeros de bala (pequenos)";
  editorPreview = "\FCLA_Objects\Props\pictures\Small_Bullet_Holes.jpg";
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
  icon = "iconObject_1x1";
  model = "\a3\structures_f\data\doorlocks\planks_1.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Planks_v1.jpg";
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
  icon = "iconObject_1x1";
  model = "\a3\structures_f\data\doorlocks\planks_2.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Planks_v2.jpg";
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
  editorPreview = "\FCLA_Objects\Props\pictures\Huge_Bullet_Holes_v1.jpg";
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
  editorPreview = "\FCLA_Objects\Props\pictures\Huge_Bullet_Holes_v2.jpg";
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



/* ------------------------------ TRAZADORAS ------------------------------- */

class Land_shell_tracer_green_F: Helper_Base_F {
  author = "hozlucas28";
  displayName = "Trazadora (vehiculo, verde)";
  icon = "iconObject_10x1";
  model = "\a3\weapons_f\data\bullettracer\shell_tracer_green.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Land_shell_tracer_green_F.jpg";
  mapSize = 0.0999;
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    init = "''";
    eden = 0;
    hide[] = {};
    animate[] = {};
    verticalOffset = 0.5;
    verticalOffsetWorld = 0;
  };
};


class Land_shell_tracer_white_F: Land_shell_tracer_green_F {
  author = "hozlucas28";
  displayName = "Trazadora (vehiculo, blanca)";
  model = "\a3\weapons_f\data\bullettracer\shell_tracer_white.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Land_shell_tracer_white_F.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;
};


class Land_shell_tracer_red_F: Land_shell_tracer_green_F {
  author = "hozlucas28";
  displayName = "Trazadora (vehiculo, roja)";
  model = "\a3\weapons_f\data\bullettracer\shell_tracer_red.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Land_shell_tracer_red_F.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;
};


class Land_shell_tracer_yellow_F: Land_shell_tracer_green_F {
  author = "hozlucas28";
  displayName = "Trazadora (vehiculo, amarilla)";
  model = "\a3\weapons_f\data\bullettracer\shell_tracer_yellow.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Land_shell_tracer_yellow_F.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;
};


class Land_tracer_white_F: Land_shell_tracer_green_F {
  author = "hozlucas28";
  displayName = "Trazadora (infanteria, blanca)";
  model = "\a3\weapons_f\data\bullettracer\tracer_white.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Land_tracer_white_F.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;
};


class Land_tracer_red_F: Land_shell_tracer_green_F {
  author = "hozlucas28";
  displayName = "Trazadora (infanteria, roja)";
  model = "\a3\weapons_f\data\bullettracer\tracer_red.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Land_tracer_red_F.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;
};


class Land_tracer_green_F: Land_shell_tracer_green_F {
  author = "hozlucas28";
  displayName = "Trazadora (infanteria, verde)";
  model = "\a3\weapons_f\data\bullettracer\tracer_green.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Land_tracer_green_F.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;
};


class Land_tracer_yellow_F: Land_shell_tracer_green_F {
  author = "hozlucas28";
  displayName = "Trazadora (infanteria, amarilla)";
  model = "\a3\weapons_f\data\bullettracer\tracer_yellow.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Land_tracer_yellow_F.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;
};



/* -------------------------------- OBJETOS -------------------------------- */

class Short_Sandbags: BagFence_base_F	{
  author = "hozlucas28";
  displayName = "Muro de sacos (corto, verde)";
  icon = "iconObject_1x1";
  model = "\a3\structures_f\data\doorlocks\sandbags_1.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Short_Sandbags.jpg";
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
  model = "\a3\structures_f_enoch\furniture\decoration\piano\piano.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Piano.jpg";
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
  icon = "iconObject_1x1";
  model = "\a3\vegetation_f_enoch\tree\t_piceaabiesnativitatis_2s.p3d";
  editorPreview = "\FCLA_Objects\Props\pictures\Christmas_Tree.jpg";
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



/* ------------------------------ RELAMPAGOS ------------------------------- */

class Lightning1_F: NonStrategic {
  displayName = "Relampago (ramificado)";
  icon = "iconObject_1x1";
  editorPreview = "\FCLA_Objects\Props\pictures\Lightning1_F.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;
};


class Lightning2_F: Lightning1_F {
  displayName = "Relampago (simple)";
  icon = "iconObject_1x1";
  editorPreview = "\FCLA_Objects\Props\pictures\Lightning2_F.jpg";
  editorCategory = "EdCat_Things";
  editorSubcategory = "FCLA_Props";
  scope = 2;
  scopeCurator = 2;
};
