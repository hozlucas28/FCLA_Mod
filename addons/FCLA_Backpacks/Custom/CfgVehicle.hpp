
/********************************************************************************|
|                          VEHÍCULOS - "PERSONALIZADAS"                          |
|********************************************************************************/



/* -------------------- PARACAÍ­DAS DIRIGIBLE (AVANZADO) -------------------- */

class B_Advanced_Parachute: B_Parachute {
  author = "hozlucas28";
  displayName = "$STR_A3_Bag_ParachuteSteerable0";
  picture = "\FCLA_Backpacks\Custom\data\pictures\B_Advanced_Parachute.paa";
  model = "\FCLA_Backpacks\Custom\data\B_Advanced_Parachute\B_Advanced_Parachute.p3d";
  ACE_reserveParachute = "B_Advanced_Reserve_Parachute";
  scope = 2;
  scopeArsenal = 2;
  scopeCurator = 2;
};


class B_Advanced_Reserve_Parachute: ACE_ReserveParachute {
  author = "hozlucas28";
  displayName = "$STR_ace_parachute_ReserveParachute";
  picture = "\FCLA_Backpacks\Custom\data\pictures\B_Advanced_Parachute.paa";
  model = "\FCLA_Backpacks\Custom\data\B_Advanced_Parachute\B_Advanced_Parachute.p3d";
  scope = 1;
  scopeArsenal = 1;
  scopeCurator = 1;
};
