
/***************************************************************************|
|                          VEHÍCULOS - "LOGÍSTICA"                          |
|***************************************************************************/



/* ------------------------------ UTILITARIOS ------------------------------ */

class FCLA_Land_Pallet_F: Land_Pallet_F {
  author = "hozlucas28";
  displayName = "Palé";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1.5, 0], -90] call ace_dragging_fnc_setCarryable; [_this select 0] call FCLA_Objects_fnc_paleLogi;";};
};

class FCLA_roadBarrier_Small_F: RoadBarrier_small_F {
  author = "hozlucas28";
  displayName = "Barrera de carretera (pequeño)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1.25, 0.1], 0] call ace_dragging_fnc_setCarryable;";};
};

class FCLA_roadCone_L_F: RoadCone_L_F {
  author = "hozlucas28";
  displayName = "Cono de carretera (luz)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1, 0.1], 0] call ace_dragging_fnc_setCarryable;";};
};



/* ------------------------ SACOS DE ARENA (ARIDO) ------------------------- */

class FCLA_Land_bagFence_Long_F: Land_BagFence_Long_F {
  author = "hozlucas28";
  displayName = "Muro de sacos (largo)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1.25, 0], 0] call ace_dragging_fnc_setDraggable;";};
};

class FCLA_Land_bagFence_Short_F: Land_BagFence_Short_F {
  author = "hozlucas28";
  displayName = "Muro de sacos (corto)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1.25, 0], 0] call ace_dragging_fnc_setDraggable;";};
};

class FCLA_Land_bagFence_End_F: Land_BagFence_End_F {
  author = "hozlucas28";
  displayName = "Muro de sacos (final)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1, 0], 0] call ace_dragging_fnc_setCarryable;";};
};

class FCLA_Land_bagFence_Round_F: Land_BagFence_Round_F {
  author = "hozlucas28";
  displayName = "Muro de sacos (redondo)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1, 0], 180] call ace_dragging_fnc_setDraggable;";};
};

class FCLA_Land_bagFence_Corner_F: Land_BagFence_Corner_F {
  author = "hozlucas28";
  displayName = "Muro de sacos (esquina)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1, 0], 180] call ace_dragging_fnc_setCarryable;";};
};



/* ------------------------ SACOS DE ARENA (VERDE) ------------------------- */

class FCLA_Land_bagFence_01_Long_Green_F: Land_BagFence_01_long_green_F {
  author = "hozlucas28";
  displayName = "Muro de sacos (largo, verde)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1.25, 0], 0] call ace_dragging_fnc_setDraggable;";};
};

class FCLA_Land_bagFence_01_Short_Green_F: Land_BagFence_01_short_green_F {
  author = "hozlucas28";
  displayName = "Muro de sacos (corto, verde)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1.25, 0], 0] call ace_dragging_fnc_setDraggable;";};
};

class FCLA_Land_bagFence_01_End_Green_F: Land_BagFence_01_end_green_F {
  author = "hozlucas28";
  displayName = "Muro de sacos (extremo, verde)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1, 0], 0] call ace_dragging_fnc_setCarryable;";};
};

class FCLA_Land_bagFence_01_Corner_Green_F: Land_BagFence_01_corner_green_F {
  author = "hozlucas28";
  displayName = "Muro de sacos (esquina, verde)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1, 0], 180] call ace_dragging_fnc_setCarryable;";};
};

class FCLA_Land_bagFence_01_Round_Green_F: Land_BagFence_01_round_green_F {
  author = "hozlucas28";
  displayName = "Muro de sacos (redondo, verde)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1, 0], 180] call ace_dragging_fnc_setDraggable;";};
};



/* ----------------------------- BARRERAS "H" ------------------------------ */

class FCLA_Land_HBarrier_1_F: Land_HBarrier_1_F {
  author = "hozlucas28";
  displayName = "Barrera H (bloque)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 2, 0], 180] call ace_dragging_fnc_setDraggable;";};
};

class FCLA_Land_HBarrier_01_Line_1_Green_F: Land_HBarrier_01_line_1_green_F {
  author = "hozlucas28";
  displayName = "Barrera H (bloque, verde)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 2, 0], 180] call ace_dragging_fnc_setDraggable;";};
};



/* ------------------------ BARRICADAS DE HORMIGÓN ------------------------- */

class FCLA_Land_CncBarrier_Stripes_F: Land_CncBarrier_stripes_F {
  author = "hozlucas28";
  displayName = "Barrera de hormigón (listas)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1.25, 0], 0] call ace_dragging_fnc_setDraggable;";};
};

class FCLA_Land_CncBarrier_F: Land_CncBarrier_F {
  author = "hozlucas28";
  displayName = "Barrera de hormigón";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1.25, 0], 0] call ace_dragging_fnc_setDraggable;";};
};



/* ------------------------ OBSTACULOS DE HORMIGÓN ------------------------- */

class FCLA_Land_concreteHedgehog_01_F: Land_ConcreteHedgehog_01_F {
  author = "hozlucas28";
  displayName = "Erizo de cemento";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1.35, 0], 0] call ace_dragging_fnc_setDraggable; [_this select 0] call FCLA_Objects_fnc_disassembleConcreteLogi;";};
};

class FCLA_Land_concreteHedgehog_01_Half_F: Land_ConcreteHedgehog_01_half_F {
  author = "hozlucas28";
  displayName = "Erizo de cemento (desmontado, medio)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1.35, 0.5], 0] call ace_dragging_fnc_setCarryable; [_this select 0] call FCLA_Objects_fnc_assembleConcreteLogi;";};
};

class FCLA_Land_concreteHedgehog_01_Palette_F: Land_ConcreteHedgehog_01_palette_F {
  author = "hozlucas28";
  displayName = "Erizo de cemento (desmontado, paleta)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0, 1.35, 0], 0] call ace_dragging_fnc_setCarryable; [_this select 0] call FCLA_Objects_fnc_concretePaletLogi;";};
};



/* --------------------------- DIENTES DE DRAGÓN --------------------------- */

class FCLA_Land_dragonsTeeth_01_1x1_New_F: Land_DragonsTeeth_01_1x1_new_F {
  author = "hozlucas28";
  displayName = "Diente de dragón (único, nuevo)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0.25, 1.25, 0], 45] call ace_dragging_fnc_setDraggable;";};
};

class FCLA_Land_dragonsTeeth_01_1x1_Old_F: Land_DragonsTeeth_01_1x1_old_F {
  author = "hozlucas28";
  displayName = "Diente de dragón (único, viejo)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0.25, 1.25, 0], 45] call ace_dragging_fnc_setDraggable;";};
};

class FCLA_Land_dragonsTeeth_01_1x1_New_redWhite_F: Land_DragonsTeeth_01_1x1_new_redwhite_F {
  author = "hozlucas28";
  displayName = "Dientes de dragón (sencillos, rojo y blanco, nuevos)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0.25, 1.25, 0], 45] call ace_dragging_fnc_setDraggable;";};
};

class FCLA_Land_dragonsTeeth_01_1x1_Old_redWhite_F: Land_DragonsTeeth_01_1x1_old_redwhite_F {
  author = "hozlucas28";
  displayName = "Dientes de dragón (sencillos, rojo y blanco, viejos)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Logistic";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 1;
  scope = 2;
  scopeCurator = 2;
  class EventHandlers {init = "[(_this select 0), true, [0.25, 1.25, 0], 45] call ace_dragging_fnc_setDraggable;";};
};
