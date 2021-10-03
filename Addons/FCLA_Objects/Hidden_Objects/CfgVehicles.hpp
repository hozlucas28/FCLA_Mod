
/***************************************************************************|
|                       VEHÍCULOS - "OBJETOS OCULTOS"                       |
|***************************************************************************/

class FCLA_Vergepost_F: ThingX {
  displayName = "Poste (borde de carretera)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  model = "\a3\signs_f\signt\vergepost_f.p3d";
  simulation = "house";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 1.3609999;
    verticalOffsetWorld = 0;
    init = "''";
  };
};

class FCLA_Signt_Stop_F: ThingX {
  displayName = "Señal de alto";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  model = "\a3\signs_f\signt\signt_stop.p3d";
  simulation = "house";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 1.3609999;
    verticalOffsetWorld = 0;
    init = "''";
  };
};

class Land_HeatPump_F: Furniture_base_F {
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;

  class SimpleObject {
    eden = 1;
    animate[] = {};
    hide[] = {};
    verticalOffset = 1.3609999;
    verticalOffsetWorld = 0;
    init = "''";
  };
};

class Land_DryDock_01_middle_F: House_F {
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;
};

class Land_DryDock_01_end_F: House_F {
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;
};

class Plane_Fighter_01_wreck_F: PlaneWreck {
  displayName = "Restos de F/A-181 Black Wasp II";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;
};

class Plane_Fighter_04_wreck_F: PlaneWreck {
  displayName = "Restos de JAS 39 Gripen";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;
};

class Plane_Fighter_02_wreck_F: PlaneWreck {
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;
};

class Land_Flush_Light_Green_F: Land_NavigLight {
  displayName = "Luz de borde de pista (piso, verde)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;
};

class Land_Flush_Light_Yellow_F: Land_NavigLight {
  displayName = "Luz de borde de pista (piso, amarilla)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;
};

class Land_Runway_edgeLight: Land_NavigLight {
  displayName = "Luz de borde de pista (sobresaliente, blanca)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Land_navigLight_3_Short_F: Land_NavigLight_3_F {
  displayName = "Luz de borde de pista (alta, blanca doble)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;
};

class FCLA_Land_Flush_Light_Red_F: Land_NavigLight {
  displayName = "Luz de borde de pista (alta, blanca única)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;
};

class Land_Airport_02_Hangar_Right_F: Infrastructure_base_F {
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;
};

class Land_Airport_02_Hangar_Left_F: Infrastructure_base_F {
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_hiddenVanilla";
  scope = 2;
  scopeCurator = 2;
};
