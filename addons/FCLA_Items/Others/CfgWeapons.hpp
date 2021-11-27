
/***************************************************************************|
|                              ARMAS - "OTROS"                              |
|***************************************************************************/



/* --------------------------- LICENCIAS DE ARMA --------------------------- */

class FCLA_Handgun_License: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Licencia de arma (pistola)";
  descriptionShort = "Licencia para la portación de arma de fuego";
  hiddenSelections[] = {"camo"};
  model = "\a3\Missions_F_Oldman\Props\Wallet_01_CSAT_F.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Handgun_License.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 2;};
};


class FCLA_Semi_Automatic_License: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Licencia de arma (semiautomática)";
  descriptionShort = "Licencia para la portación de arma de fuego";
  hiddenSelections[] = {"camo"};
  model = "\a3\Missions_F_Oldman\Props\Wallet_01_CSAT_F.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Semi_Automatic_License.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 2;};
};



/* ------------------------------ PASAPORTES ------------------------------- */

class FCLA_USA_Passport: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Pasaporte (Estados Unidos)";
  hiddenSelections[] = {"camo"};
  model = "\a3\Missions_F_Oldman\Props\Wallet_01_CSAT_F.p3d";
  picture = "\FCLA_Items\Others\data\pictures\USA_Passport.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 2;};
};


class FCLA_British_Passport: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Pasaporte (Gran Bretaña)";
  hiddenSelections[] = {"camo"};
  model = "\a3\Missions_F_Oldman\Props\Wallet_01_CSAT_F.p3d";
  picture = "\FCLA_Items\Others\data\pictures\British_Passport.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 2;};
};


class FCLA_Russia_Passport: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Pasaporte (Rusia)";
  hiddenSelections[] = {"camo"};
  model = "\a3\Missions_F_Oldman\Props\Wallet_01_CSAT_F.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Russia_Passport.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 2;};
};


class FCLA_Afghan_Passport: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Pasaporte (Afganistán)";
  hiddenSelections[] = {"camo"};
  model = "\a3\Missions_F_Oldman\Props\Wallet_01_CSAT_F.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Afghan_Passport.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 2;};
};



/* -------------------------------- DROGAS --------------------------------- */

class FCLA_Cocaine: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Cocaína";
  model = "\FCLA_Items\Others\data\Cocaine\Cocaine.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Cocaine.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 2;};
};


class FCLA_Cocaine_Brick: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Ladrillo de cocaína";
  model = "\FCLA_Items\Others\data\Cocaine_Brick\Cocaine_Brick.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Cocaine_Brick.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 10;};
};


class FCLA_Weed_Brick: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Ladrillo de marihuana";
  model = "\FCLA_Items\Others\data\Weed_Brick\Weed_Brick.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Weed_Brick.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 25;};
};



/* ------------------------------- QUÍMICOS -------------------------------- */

class FCLA_Fertilizer: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Fertilizante";
  hiddenSelections[] = {"Camo"};
  hiddenSelectionsTextures[] = {"\A3\Props_F_Orange\Humanitarian\Supplies\Data\FoodSack_01_dmg_brown_CO.paa"};
  model = "\A3\Props_F_Orange\Humanitarian\Supplies\FoodSack_01_destroyed_F.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Fertilizer.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 25;};
};


class FCLA_Hydrogen_Peroxide: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Peróxido de hidrógeno";
  model = "\A3\Structures_F\items\food\bottleplastic_v1_f.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Hydrogen_Peroxide.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 5;};
};


class FCLA_Nail_Polish_Remover: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Quitaesmalte";
  model = "\A3\Structures_F\items\food\bottleplastic_v1_f.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Nail_Polish_Remover.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 5;};
};



/* -------------------------------- DINERO --------------------------------- */

class FCLA_Money_Roll: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Dinero (rollo)";
  model = "\A3\Props_F_Oldman\Items\MoneyBills_01_roll_F.p3d";
  picture = "\a3\Missions_F_Oldman\Props\data\Money_roll_ca.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 5;};
};



/* ------------------------------ ELECTRÓNICA ------------------------------ */

class FCLA_Wire: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Cable";
  model = "\A3\Structures_F_EPA\Items\Tools\MetalWire_F.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Wire.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 3;};
};


class FCLA_Portable_HDD: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Disco duro (portátil)";
  model = "\A3\weapons_F\ammo\mag_univ.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Portable_HDD.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 3;};
};


class FCLA_Camera: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Cámara";
  model = "\A3\Structures_F_Heli\Items\Electronics\Camera_01_F.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Camera.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 4;};
};


class FCLA_Camcorder: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Videocámara";
  model = "\A3\Structures_F\Items\Electronics\HandyCam_F.p3d";
  picture = "\FCLA_Items\Others\data\pictures\Camcorder.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 4;};
};


class FCLA_Laptop: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Portátil";
  model = "\A3\Structures_F\Items\Electronics\Laptop_F.p3d";
  picture = "\a3\Missions_F_Oldman\Props\data\Laptop_Closed_ca.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 6;};
};
