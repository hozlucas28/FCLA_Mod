
/********************************************************************************|
|                                ARMAS - GENERAL                                 |
|********************************************************************************/



/* ---------------------------- CHALECOS BOMBA ----------------------------- */

class Suicide_Vest: V_HarnessOGL_brn {
  author = "hozlucas28";
  displayName = "Chaleco bomba";
  picture = "\A3\characters_f\Data\UI\icon_V_HarnessOGL_brn_CA.paa";
  hiddenSelections[] = {};
  hiddenSelectionsTextures[] = {};
  model = "\A3\Characters_F\OPFOR\equip_o_vest_gl";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\OPFOR\equip_o_vest_gl";
    hiddenSelections[] = {};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply120";
    showHolsteredPistol = 0;
    mass = 15;
    scope = 0;
    type = 701;
  };
};

class Suicide_Vest_Green: V_HarnessOGL_ghex_F {
  author = "hozlucas28";
  displayName = "Chaleco bomba (verde)";
  picture = "\A3\Characters_F_Exp\Vests\Data\UI\icon_V_HarnessOGL_ghex_F_ca.paa";
  hiddenSelections[] = {"camo1","camo2"};
  hiddenSelectionsTextures[] = {"\A3\Characters_F_Exp\OPFOR\Data\clothing_tna_CO.paa","\A3\Characters_F_Exp\OPFOR\Data\tech_tna_CO.paa"};
  model = "\A3\Characters_F\OPFOR\equip_o_vest_gl";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\OPFOR\equip_o_vest_gl";
    hiddenSelections[] = {"camo1","camo2"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply120";
    showHolsteredPistol = 0;
    mass = 15;
    scope = 0;
    type = 701;
  };
};

class Suicide_Vest_Grey: V_HarnessOGL_gry {
  author = "hozlucas28";
  displayName = "Chaleco bomba (gris)";
  picture = "\A3\characters_f_beta\Data\UI\icon_V_HarnessOUGL_gry_CA.paa";
  hiddenSelections[] = {"camo1","camo2"};
  hiddenSelectionsTextures[] = {"\A3\Characters_F\OPFOR\Data\clothing_oucamo_co.paa","\A3\Characters_F\OPFOR\Data\tech_oucamo_co"};
  model = "\A3\Characters_F\OPFOR\equip_o_vest_gl";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\OPFOR\equip_o_vest_gl";
    hiddenSelections[] = {"camo1","camo2"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply120";
    showHolsteredPistol = 0;
    mass = 15;
    scope = 0;
    type = 701;
  };
};



/* ------------------------- CARTUCHERAS - DIGITAL ------------------------- */

class Vest_Light_Digital: V_PlateCarrier1_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera ligera (digital)";
  picture = "\FCLA_Vests\data\pictures\V_Digital.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Digital.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest02";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 80;
    scope = 0;
    type = 701;
  };
};

class Vest_Normal_Digital: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera (digital)";
  picture = "\FCLA_Vests\data\pictures\V_Digital.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Digital.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest01";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 100;
    scope = 0;
    type = 701;
  };
};



/* ------------------------- CARTUCHERAS - URBANO -------------------------- */

class Vest_Light_Urban_1: V_PlateCarrier1_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera ligera (urbano 1)";
  picture = "\FCLA_Vests\data\pictures\V_Urban_1.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Urban_1.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest02";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 80;
    scope = 0;
    type = 701;
  };
};

class Vest_Normal_Urban_1: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera (urbano 1)";
  picture = "\FCLA_Vests\data\pictures\V_Urban_1.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Urban_1.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest01";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 100;
    scope = 0;
    type = 701;
  };
};

class Vest_Light_Urban_2: V_PlateCarrier1_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera ligera (urbano 2)";
  picture = "\FCLA_Vests\data\pictures\V_Urban_2.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Urban_2.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest02";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 80;
    scope = 0;
    type = 701;
  };
};

class Vest_Normal_Urban_2: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera (urbano 2)";
  picture = "\FCLA_Vests\data\pictures\V_Urban_2.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Urban_2.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest01";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 100;
    scope = 0;
    type = 701;
  };
};

class Vest_Light_Urban_3: V_PlateCarrier1_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera ligera (urbano 3)";
  picture = "\FCLA_Vests\data\pictures\V_Urban_3.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Urban_3.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest02";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 80;
    scope = 0;
    type = 701;
  };
};

class Vest_Normal_Urban_3: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera (urbano 3)";
  picture = "\FCLA_Vests\data\pictures\V_Urban_3.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Urban_3.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest01";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 100;
    scope = 0;
    type = 701;
  };
};

class Vest_Light_Urban_4: V_PlateCarrier1_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera ligera (urbano 4)";
  picture = "\FCLA_Vests\data\pictures\V_Urban_4.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Urban_4.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest02";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 80;
    scope = 0;
    type = 701;
  };
};

class Vest_Normal_Urban_4: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera (urbano 4)";
  picture = "\FCLA_Vests\data\pictures\V_Urban_4.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Urban_4.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest01";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 100;
    scope = 0;
    type = 701;
  };
};



/* ------------------------ CARTUCHERAS - INVIERNO ------------------------- */

class Vest_Light_Winter_1: V_PlateCarrier1_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera ligera (invierno 1)";
  picture = "\FCLA_Vests\data\pictures\V_Winter_1.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Winter_1.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest02";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 80;
    scope = 0;
    type = 701;
  };
};

class Vest_Normal_Winter_1: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera (invierno 1)";
  picture = "\FCLA_Vests\data\pictures\V_Winter_1.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Winter_1.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest01";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 100;
    scope = 0;
    type = 701;
  };
};

class Vest_Light_Winter_2: V_PlateCarrier1_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera ligera (invierno 2)";
  picture = "\FCLA_Vests\data\pictures\V_Winter_2.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Winter_2.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest02";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 80;
    scope = 0;
    type = 701;
  };
};

class Vest_Normal_Winter_2: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera (invierno 2)";
  picture = "\FCLA_Vests\data\pictures\V_Winter_2.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Winter_2.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest01";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 100;
    scope = 0;
    type = 701;
  };
};

class Vest_Light_Winter_3: V_PlateCarrier1_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera ligera (invierno 3)";
  picture = "\FCLA_Vests\data\pictures\V_Winter_3.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Winter_3.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest02";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 80;
    scope = 0;
    type = 701;
  };
};

class Vest_Normal_Winter_3: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera (invierno 3)";
  picture = "\FCLA_Vests\data\pictures\V_Winter_3.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Winter_3.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest01";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 100;
    scope = 0;
    type = 701;
  };
};

class Vest_Light_Winter_4: V_PlateCarrier1_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera ligera (invierno 4)";
  picture = "\FCLA_Vests\data\pictures\V_Winter_4.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Winter_4.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest02";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 80;
    scope = 0;
    type = 701;
  };
};

class Vest_Normal_Winter_4: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera (invierno 4)";
  picture = "\FCLA_Vests\data\pictures\V_Winter_4.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Winter_4.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest01";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 100;
    scope = 0;
    type = 701;
  };
};



/* -------------------------- CARTUCHERAS - MARINA ------------------------- */

class Vest_Light_Sea: V_PlateCarrier1_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera ligera (marina)";
  picture = "\FCLA_Vests\data\pictures\V_Sea.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Sea.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest02";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 80;
    scope = 0;
    type = 701;
  };
};

class Vest_Normal_Sea: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera (marina)";
  picture = "\FCLA_Vests\data\pictures\V_Sea.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\data\V_Sea.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    _generalMacro = "VestItem";
    author = "hozlucas28";
    uniformType = "Default";
    uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest01";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
    showHolsteredPistol = 0;
    mass = 100;
    scope = 0;
    type = 701;
  };
};
