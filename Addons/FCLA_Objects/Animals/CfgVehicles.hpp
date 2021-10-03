
/***************************************************************************|
|                          VEHÍCULOS - "ANIMALES"                           |
|***************************************************************************/

class FCLA_Dog_Base_F: Animal_Base_F {
  _generalMacro = "FCLA_Dog_Base_F";
  author = "hozlucas28";
  hasGeometry = 1;
  moves = "CfgMovesDog_F";

  class EventHandlers;
  class VariablesScalar {
    _threatMaxRadius = 25;
    _runDistanceMax = 50;
    _movePrefer = 0.40000001;
    _formationPrefer = 0.1;
    _scareLimit = 0.1;
    _dangerLimit = 10;
    _walkSpeed = 3.3499999;
  };

  class VariablesString {
    _expSafe = "houses * (1 - forest) * (1 - trees) * (1 - sea)";
    _expDanger = "houses * (1 - forest) * (1 - meadow) * (1 - sea)";
  };
};

class FCLA_Fin_Base_F: FCLA_Dog_Base_F {
  _generalMacro = "FCLA_Fin_Base_F";
  author = "hozlucas28";
  displayName = "Perro (BASE)";
  model = "\A3\animals_f_beta\Dog\Fin_F";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\A3\animals_f_beta\dog\data\dog_yellow_co.paa"};
};

class FCLA_Fin_sand_F: FCLA_Fin_Base_F {
  _generalMacro = "FCLA_Fin_sand_F";
  author = "hozlucas28";
  displayName = "Perro (arena)";
  accuracy = 1000;
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Animals";
};

class FCLA_Fin_blackwhite_F: FCLA_Fin_Base_F {
  _generalMacro = "FCLA_Fin_blackwhite_F";
  author = "hozlucas28";
  displayName = "Perro (blanco y negro)";
  accuracy = 1000;
  hiddenSelectionsTextures[] = {"\A3\animals_f_beta\dog\data\Dog_black_white_co.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Animals";
};

class FCLA_Fin_ocherwhite_F: FCLA_Fin_Base_F {
  _generalMacro = "FCLA_Fin_ocherwhite_F";
  author = "hozlucas28";
  displayName = "Perro (blanco ocre)";
  accuracy = 1000;
  hiddenSelectionsTextures[] = {"\A3\animals_f_beta\dog\data\Dog_white_ocher_CO.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Animals";
};

class FCLA_Fin_tricolour_F: FCLA_Fin_Base_F {
  _generalMacro = "FCLA_Fin_tricolour_F";
  author = "hozlucas28";
  displayName = "Perro (tricolor)";
  accuracy = 1000;
  hiddenSelectionsTextures[] = {"\A3\animals_f_beta\dog\data\Dog_tricolor_CO.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Animals";
};

class FCLA_Alsatian_Base_F: FCLA_Dog_Base_F {
  _generalMacro = "FCLA_Alsatian_Base_F";
  author = "hozlucas28";
  displayName = "Pastor (BASE)";
  model = "\A3\animals_f_beta\Dog\pastor_F.p3d";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\A3\animals_f_beta\dog\data\pastor_sand_co.paa"};
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Animals";
};

class FCLA_Alsatian_Sand_F: FCLA_Alsatian_Base_F {
  _generalMacro = "FCLA_Alsatian_Sand_F";
  author = "hozlucas28";
  displayName = "Pastor (arena)";
  accuracy = 1000;
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Animals";
};

class FCLA_Alsatian_Black_F: FCLA_Alsatian_Base_F {
  _generalMacro = "FCLA_Alsatian_Black_F";
  author = "hozlucas28";
  displayName = "Pastor (negro)";
  accuracy = 1000;
  hiddenSelectionsTextures[] = {"\A3\animals_f_beta\dog\data\pastor_black_co.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Animals";
};

class FCLA_Alsatian_Sandblack_F: FCLA_Alsatian_Base_F {
  _generalMacro = "FCLA_Alsatian_Sandblack_F";
  author = "hozlucas28";
  displayName = "Pastor (negro y arena)";
  accuracy = 1000;
  hiddenSelectionsTextures[] = {"\A3\animals_f_beta\dog\data\pastor_co.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Animals";
};

class FCLA_Fowl_Base_F: Animal_Base_F {
  _generalMacro = "FCLA_Fowl_Base_F";
  author = "hozlucas28";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Animals";

  class EventHandlers;
  class Wounds {
    tex[] = {};
    mat[] = {};
  };

  class VariablesScalar {
    _threatMaxRadius = 5;
    _runDistanceMax = 30;
    _movePrefer = 0.80000001;
    _formationPrefer = 0.5;
    _scareLimit = 0.2;
    _dangerLimit = 1;
    _walkSpeed = 0.31;
  };

  class VariablesString {
    _expSafe = "(1 - trees) * (1 - forest) * (houses) * (1 - sea)";
    _expDanger = "(1 - trees) * (1 - forest) * (houses) * (1 - sea)";
  };
};

class FCLA_Hen_random_F: FCLA_Fowl_Base_F {
  _generalMacro = "FCLA_Hen_random_F";
  author = "hozlucas28";
  displayName = "Gallina";
  model = "\A3\animals_f_beta\chicken\Hen_F.p3d";
  moves = "CfgMovesHen_F";
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Animals";

  class Wounds: Wounds {
    mat[] = {"A3\animals_f_beta\chicken\data\hen.rvmat","A3\animals_f_beta\chicken\data\W1_hen.rvmat","A3\animals_f_beta\chicken\data\W2_hen.rvmat"};
  };
};

class FCLA_Cock_random_F: FCLA_Fowl_Base_F {
  _generalMacro = "FCLA_Cock_random_F";
  author = "hozlucas28";
  displayName = "Gallo (BASE)";
  model = "\A3\animals_f_beta\chicken\Cock_F.p3d";
  moves = "CfgMovesCock_F";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\A3\animals_f_beta\Chicken\data\brown_rooster_CO.paa"};
  scope = 0;
  scopeCurator = 0;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Animals";
  class EventHandlers: EventHandlers {init = "(_this select 0) call bis_fnc_animalRandomization;";};
};

class FCLA_Cock_white_F: FCLA_Cock_random_F {
  _generalMacro = "FCLA_Cock_white_F";
  author = "hozlucas28";
  displayName = "Gallo";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\A3\animals_f_beta\Chicken\data\white_rooster_CO.paa"};
  scope = 2;
  scopeCurator = 2;
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Animals";
  class EventHandlers: EventHandlers {init = "";};
};
