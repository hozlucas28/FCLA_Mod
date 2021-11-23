
/********************************************************************************|
|                          ARMAS - "REDES DE CAMUFLAJE"                          |
|********************************************************************************/

class FCLA_Camo_Net_Arid: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Red de camuflaje (arida)";
  descriptionShort = "Se puede colocar en el casco, si este lo permite";
  hiddenSelections[] = {"camo1", "camo2"};
  hiddenSelectionsTextures[] = {"", "\FCLA_Items\Camouflage_Nets\data\FCLA_Camo_Net_Arid.paa"};
  model = "\A3\Characters_F\BLUFOR\Headgear_B_Helmet_Camo.p3d";
  picture = "\FCLA_Items\Camouflage_Nets\data\pictures\FCLA_Camo_Net_Arid.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 1;};
};


class FCLA_Camo_Net_Tropical: CBA_MiscItem {
  author = "hozlucas28";
  displayName = "Red de camuflaje (tropical)";
  descriptionShort = "Se puede colocar en el casco, si este lo permite";
  hiddenSelections[] = {"camo1", "camo2"};
  hiddenSelectionsTextures[] = {"", "\FCLA_Items\Camouflage_Nets\data\FCLA_Camo_Net_Tropical.paa"};
  model = "\A3\Characters_F\BLUFOR\Headgear_B_Helmet_Camo.p3d";
  picture = "\FCLA_Items\Camouflage_Nets\data\pictures\FCLA_Camo_Net_Tropical.paa";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
  class ItemInfo: CBA_MiscItem_ItemInfo {mass = 1;};
};
