
class FCLA_TEST {
  condition = "true";
  statement = "hint 'TRUE';";
  displayName = "PRUBA";
  modifierFunction = "_this select 3 set [2,  getText (configFile >> 'CfgWeapons' >> headgear (_this select 0) >> 'picture')];";
};
