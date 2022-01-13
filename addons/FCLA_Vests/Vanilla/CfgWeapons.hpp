
/********************************************************************************|
|                               ARMAS - "VANILLA"                                |
|********************************************************************************/



/* ----------------------- CHALECOS EOD (PELOTONES) ------------------------ */

class V_EOD_FCLA: V_EOD_olive_F {
  author = "hozlucas28";
  displayName = "Chaleco de desactivaciónn de explosivos [FCLA]";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_EOD_FCLA.paa";
  hiddenSelections[] = {"camo", "camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_EOD_FCLA.paa", "\a3\characters_f_orange\vests\data\v_eod_protection_olive_co.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformmodel = "\a3\characters_f_orange\vests\v_eod_vest_f.p3d";
    hiddenSelections[] = {"camo", "camo2"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply30";
  };
};


class V_EOD_Takana: V_EOD_FCLA {
  author = "hozlucas28";
  displayName = "Chaleco de desactivaciónn de explosivos [Takana]";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_EOD_Takana.paa";
  hiddenSelections[] = {"camo", "camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_EOD_Takana.paa", "\a3\characters_f_orange\vests\data\v_eod_protection_olive_co.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_EOD_Jaguar: V_EOD_FCLA {
  author = "hozlucas28";
  displayName = "Chaleco de desactivaciónn de explosivos [Jaguar]";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_EOD_Jaguar.paa";
  hiddenSelections[] = {"camo", "camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_EOD_Jaguar.paa", "\a3\characters_f_orange\vests\data\v_eod_protection_olive_co.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_EOD_Condor: V_EOD_FCLA {
  author = "hozlucas28";
  displayName = "Chaleco de desactivaciónn de explosivos [Condor]";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_EOD_Condor.paa";
  hiddenSelections[] = {"camo", "camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_EOD_Condor.paa", "\a3\characters_f_orange\vests\data\v_eod_protection_olive_co.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_EOD_Salamandra: V_EOD_FCLA {
  author = "hozlucas28";
  displayName = "Chaleco de desactivaciónn de explosivos [Salamandra]";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_EOD_Salamandra.paa";
  hiddenSelections[] = {"camo", "camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_EOD_Salamandra.paa", "\a3\characters_f_orange\vests\data\v_eod_protection_olive_co.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_EOD_Anaconda: V_EOD_FCLA {
  author = "hozlucas28";
  displayName = "Chaleco de desactivaciónn de explosivos [Anaconda]";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_EOD_Anaconda.paa";
  hiddenSelections[] = {"camo", "camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_EOD_Anaconda.paa", "\a3\characters_f_orange\vests\data\v_eod_protection_olive_co.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_EOD_Quetzal: V_EOD_FCLA {
  author = "hozlucas28";
  displayName = "Chaleco de desactivaciónn de explosivos [Quetzal]";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_EOD_Quetzal.paa";
  hiddenSelections[] = {"camo", "camo2"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_EOD_Quetzal.paa", "\a3\characters_f_orange\vests\data\v_eod_protection_olive_co.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* ---------------- CARTUCHERAS LIGERA (PELOTONES - NEGRA) ----------------- */


class V_PlateCarrier_FCLA_Black: V_PlateCarrier_Kerry {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [FCLA] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_FCLA_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_FCLA_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f_epa\blufor\equip_b_vest_kerry.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
  };
};


class V_PlateCarrier_Takana_Black: V_PlateCarrier_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Takana] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Takana_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Takana_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Jaguar_Black: V_PlateCarrier_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Jaguar] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Jaguar_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Jaguar_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Condor_Black: V_PlateCarrier_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Condor] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Condor_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Condor_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Salamandra_Black: V_PlateCarrier_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Salamandra] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Salamandra_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Salamandra_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Anaconda_Black: V_PlateCarrier_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Anaconda] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Anaconda_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Anaconda_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Quetzal_Black: V_PlateCarrier_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Quetzal] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Quetzal_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Quetzal_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* ---------------- CARTUCHERAS LIGERA (PELOTONES - VERDE) ----------------- */


class V_PlateCarrier_FCLA_Green: V_PlateCarrier_Kerry {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [FCLA] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_FCLA_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_FCLA_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f_epa\blufor\equip_b_vest_kerry.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
  };
};


class V_PlateCarrier_Takana_Green: V_PlateCarrier_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Takana] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Takana_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Takana_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Jaguar_Green: V_PlateCarrier_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Jaguar] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Jaguar_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Jaguar_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Condor_Green: V_PlateCarrier_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Condor] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Condor_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Condor_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Salamandra_Green: V_PlateCarrier_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Salamandra] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Salamandra_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Salamandra_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Anaconda_Green: V_PlateCarrier_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Anaconda] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Anaconda_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Anaconda_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Quetzal_Green: V_PlateCarrier_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Quetzal] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Quetzal_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Quetzal_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* --------------- CARTUCHERAS LIGERA (PELOTONES - TROPICAL) --------------- */


class V_PlateCarrier_FCLA_Tropical: V_PlateCarrier_Kerry {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [FCLA] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_FCLA_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_FCLA_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f_epa\blufor\equip_b_vest_kerry.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
  };
};


class V_PlateCarrier_Takana_Tropical: V_PlateCarrier_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Takana] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Takana_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Takana_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Jaguar_Tropical: V_PlateCarrier_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Jaguar] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Jaguar_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Jaguar_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Condor_Tropical: V_PlateCarrier_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Condor] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Condor_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Condor_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Salamandra_Tropical: V_PlateCarrier_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Salamandra] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Salamandra_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Salamandra_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Anaconda_Tropical: V_PlateCarrier_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Anaconda] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Anaconda_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Anaconda_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier_Quetzal_Tropical: V_PlateCarrier_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera ligera [Quetzal] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Quetzal_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier_Quetzal_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* -------------------- CARTUCHERAS (PELOTONES - NEGRA) -------------------- */

class V_PlateCarrier2_FCLA_Black: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera [FCLA] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_FCLA_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_FCLA_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f\blufor\equip_b_vest01.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
  };
};


class V_PlateCarrier2_Takana_Black: V_PlateCarrier2_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera [Takana] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Takana_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Takana_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Jaguar_Black: V_PlateCarrier2_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera [Jaguar] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Jaguar_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Jaguar_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Condor_Black: V_PlateCarrier2_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera [Condor] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Condor_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Condor_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Salamandra_Black: V_PlateCarrier2_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera [Salamandra] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Salamandra_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Salamandra_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Anaconda_Black: V_PlateCarrier2_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera [Anaconda] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Anaconda_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Anaconda_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Quetzal_Black: V_PlateCarrier2_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera [Quetzal] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Quetzal_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Quetzal_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* -------------------- CARTUCHERAS (PELOTONES - VERDE) -------------------- */

class V_PlateCarrier2_FCLA_Green: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera [FCLA] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_FCLA_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_FCLA_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f\blufor\equip_b_vest01.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
  };
};


class V_PlateCarrier2_Takana_Green: V_PlateCarrier2_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera [Takana] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Takana_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Takana_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Jaguar_Green: V_PlateCarrier2_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera [Jaguar] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Jaguar_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Jaguar_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Condor_Green: V_PlateCarrier2_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera [Condor] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Condor_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Condor_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Salamandra_Green: V_PlateCarrier2_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera [Salamandra] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Salamandra_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Salamandra_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Anaconda_Green: V_PlateCarrier2_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera [Anaconda] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Anaconda_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Anaconda_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Quetzal_Green: V_PlateCarrier2_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera [Quetzal] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Quetzal_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Quetzal_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* ------------------ CARTUCHERAS (PELOTONES - TROPICAL) ------------------- */

class V_PlateCarrier2_FCLA_Tropical: V_PlateCarrier2_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera [FCLA] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_FCLA_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_FCLA_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f\blufor\equip_b_vest01.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
  };
};


class V_PlateCarrier2_Takana_Tropical: V_PlateCarrier2_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera [Takana] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Takana_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Takana_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Jaguar_Tropical: V_PlateCarrier2_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera [Jaguar] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Jaguar_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Jaguar_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Condor_Tropical: V_PlateCarrier2_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera [Condor] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Condor_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Condor_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Salamandra_Tropical: V_PlateCarrier2_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera [Salamandra] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Salamandra_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Salamandra_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Anaconda_Tropical: V_PlateCarrier2_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera [Anaconda] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Anaconda_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Anaconda_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrier2_Quetzal_Tropical: V_PlateCarrier2_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera [Quetzal] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrier_Quetzal_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrier2_Quetzal_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* ------------------ CARTUCHERAS GL (PELOTONES - NEGRA) ------------------- */

class V_PlateCarrierGL_FCLA_Black: V_PlateCarrierGL_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [FCLA] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_FCLA_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_FCLA_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f\blufor\equip_b_carrier_gl_rig.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
  };
};


class V_PlateCarrierGL_Takana_Black: V_PlateCarrierGL_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Takana] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Takana_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Takana_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Jaguar_Black: V_PlateCarrierGL_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Jaguar] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Jaguar_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Jaguar_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Condor_Black: V_PlateCarrierGL_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Condor] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Condor_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Condor_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Salamandra_Black: V_PlateCarrierGL_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Salamandra] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Salamandra_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Salamandra_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Anaconda_Black: V_PlateCarrierGL_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Anaconda] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Anaconda_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Anaconda_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Quetzal_Black: V_PlateCarrierGL_FCLA_Black {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Quetzal] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Quetzal_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Quetzal_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* ------------------- CARTUCHERAS GL (PELOTONES - MTP) -------------------- */

class V_PlateCarrierGL_FCLA_MTP: V_PlateCarrierGL_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [FCLA] (MTP)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_FCLA_MTP.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_FCLA_MTP.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f\blufor\equip_b_carrier_gl_rig.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
  };
};


class V_PlateCarrierGL_Takana_MTP: V_PlateCarrierGL_FCLA_MTP {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Takana] (MTP)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Takana_MTP.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Takana_MTP.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Jaguar_MTP: V_PlateCarrierGL_FCLA_MTP {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Jaguar] (MTP)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Jaguar_MTP.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Jaguar_MTP.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Condor_MTP: V_PlateCarrierGL_FCLA_MTP {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Condor] (MTP)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Condor_MTP.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Condor_MTP.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Salamandra_MTP: V_PlateCarrierGL_FCLA_MTP {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Salamandra] (MTP)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Salamandra_MTP.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Salamandra_MTP.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Anaconda_MTP: V_PlateCarrierGL_FCLA_MTP {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Anaconda] (MTP)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Anaconda_MTP.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Anaconda_MTP.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Quetzal_MTP: V_PlateCarrierGL_FCLA_MTP {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Quetzal] (MTP)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Quetzal_MTP.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Quetzal_MTP.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* ------------------ CARTUCHERAS GL (PELOTONES - VERDE) ------------------- */

class V_PlateCarrierGL_FCLA_Green: V_PlateCarrierGL_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [FCLA] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_FCLA_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_FCLA_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f\blufor\equip_b_carrier_gl_rig.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
  };
};


class V_PlateCarrierGL_Takana_Green: V_PlateCarrierGL_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Takana] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Takana_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Takana_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Jaguar_Green: V_PlateCarrierGL_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Jaguar] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Jaguar_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Jaguar_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Condor_Green: V_PlateCarrierGL_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Condor] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Condor_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Condor_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Salamandra_Green: V_PlateCarrierGL_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Salamandra] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Salamandra_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Salamandra_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Anaconda_Green: V_PlateCarrierGL_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Anaconda] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Anaconda_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Anaconda_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Quetzal_Green: V_PlateCarrierGL_FCLA_Green {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Quetzal] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Quetzal_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Quetzal_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* ----------------- CARTUCHERAS GL (PELOTONES - TROPICAL) ----------------- */

class V_PlateCarrierGL_FCLA_Tropical: V_PlateCarrierGL_rgr {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [FCLA] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_FCLA_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_FCLA_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f\blufor\equip_b_carrier_gl_rig.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply140";
  };
};


class V_PlateCarrierGL_Takana_Tropical: V_PlateCarrierGL_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Takana] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Takana_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Takana_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Jaguar_Tropical: V_PlateCarrierGL_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Jaguar] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Jaguar_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Jaguar_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Condor_Tropical: V_PlateCarrierGL_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Condor] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Condor_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Condor_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Salamandra_Tropical: V_PlateCarrierGL_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Salamandra] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Salamandra_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Salamandra_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Anaconda_Tropical: V_PlateCarrierGL_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Anaconda] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Anaconda_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Anaconda_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierGL_Quetzal_Tropical: V_PlateCarrierGL_FCLA_Tropical {
  author = "hozlucas28";
  displayName = "Cartuchera de GL [Quetzal] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierGL_Quetzal_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierGL_Quetzal_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* ---------- EQUIPO ESPECIAL DE PORTAAVIONES (PELOTONES - NEGRA) ---------- */

class V_PlateCarrierSpec_FCLA_Black: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [FCLA] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_FCLA_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_FCLA_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f\blufor\equip_b_carrier_spec_rig.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply100";
  };
};


class V_PlateCarrierSpec_Takana_Black: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Takana] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Takana_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Takana_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Jaguar_Black: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Jaguar] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Jaguar_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Jaguar_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Condor_Black: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Condor] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Condor_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Condor_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Salamandra_Black: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Salamandra] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Salamandra_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Salamandra_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Anaconda_Black: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Anaconda] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Anaconda_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Anaconda_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Quetzal_Black: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Quetzal] (negra)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Quetzal_Black.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Quetzal_Black.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* ---------- EQUIPO ESPECIAL DE PORTAAVIONES (PELOTONES - VERDE) ---------- */

class V_PlateCarrierSpec_FCLA_Green: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [FCLA] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_FCLA_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_FCLA_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f\blufor\equip_b_carrier_spec_rig.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply100";
  };
};


class V_PlateCarrierSpec_Takana_Green: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Takana] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Takana_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Takana_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Jaguar_Green: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Jaguar] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Jaguar_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Jaguar_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Condor_Green: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Condor] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Condor_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Condor_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Salamandra_Green: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Salamandra] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Salamandra_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Salamandra_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Anaconda_Green: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Anaconda] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Anaconda_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Anaconda_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Quetzal_Green: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Quetzal] (verde)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Quetzal_Green.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Quetzal_Green.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* -------- EQUIPO ESPECIAL DE PORTAAVIONES (PELOTONES - TROPICAL) --------- */

class V_PlateCarrierSpec_FCLA_Tropical: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [FCLA] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_FCLA_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_FCLA_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;

  class ItemInfo: VestItem {
    uniformType = "Default";
    uniformModel = "\a3\characters_f\blufor\equip_b_carrier_spec_rig.p3d";
    hiddenSelections[] = {"camo"};
    overlaySelectionsInfo[] = {"Ghillie_hide"};
    containerClass = "Supply100";
  };
};


class V_PlateCarrierSpec_Takana_Tropical: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Takana] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Takana_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Takana_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Jaguar_Tropical: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Jaguar] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Jaguar_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Jaguar_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Condor_Tropical: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Condor] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Condor_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Condor_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Salamandra_Tropical: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Salamandra] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Salamandra_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Salamandra_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Anaconda_Tropical: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Anaconda] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Anaconda_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Anaconda_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class V_PlateCarrierSpec_Quetzal_Tropical: V_PlateCarrierSpec_rgr {
  author = "hozlucas28";
  displayName = "Equipo especial de portaaviones [Quetzal] (tropical)";
  picture = "\FCLA_Vests\Vanilla\data\pictures\V_PlateCarrierSpec_Quetzal_Tropical.paa";
  hiddenSelections[] = {"camo"};
  hiddenSelectionsTextures[] = {"\FCLA_Vests\Vanilla\data\V_PlateCarrierSpec_Quetzal_Tropical.paa"};
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};



/* ----------------- CARTUCHERAS LIGERAS (PERSONALIZADAS) ------------------ */

#include "\FCLA_Vests\Vanilla\customs\Byron.hpp"
#include "\FCLA_Vests\Vanilla\customs\Mario.hpp"
#include "\FCLA_Vests\Vanilla\customs\Legion.hpp"
#include "\FCLA_Vests\Vanilla\customs\Sagara.hpp"
#include "\FCLA_Vests\Vanilla\customs\HozLucas.hpp"
#include "\FCLA_Vests\Vanilla\customs\Kovalsky.hpp"
#include "\FCLA_Vests\Vanilla\customs\Naretick.hpp"
#include "\FCLA_Vests\Vanilla\customs\Ghostkiller.hpp"
