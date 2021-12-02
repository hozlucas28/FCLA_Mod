
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea dos diálogos (propio e externo), según sea el caso, para elegir la insignia.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_isSelf"];
_savedInsignia = _unit getVariable ["FCLA_Insignia", FCLA_Default_Patche];



/* -------------------------------- PROPIO --------------------------------- */

if (_isSelf) exitWith {
  _defaultValue = switch (_savedInsignia) do {
    case "FCLA_Takana": {0;};
    case "FCLA_Jaguar": {1;};
    case "FCLA_Condor": {2;};
    case "FCLA_Salamandra": {3;};
    case "FCLA_Anaconda": {4;};
    case "FCLA_Quetzal": {5;};
    case "FCLA_Medic": {6;};
    default {0;};
  };
  _this = [_unit, _defaultValue];

  ["SELECCIONAR INSIGNIA",
    [
     ["COMBO", "Insignia",
      [
       [
        "FCLA_Takana", "FCLA_Jaguar", "FCLA_Condor", "FCLA_Salamandra", "FCLA_Anaconda", "FCLA_Quetzal", "FCLA_Medic"
       ],
       [
        ["Takana", "", "\FCLA_interactions\Insignias\data\pictures\Takana.paa"],
        ["Jaguar", "", "\FCLA_interactions\Insignias\data\pictures\Jaguar.paa"],
        ["Condor", "", "\FCLA_interactions\Insignias\data\pictures\Condor.paa"],
        ["Salamandra", "", "\FCLA_interactions\Insignias\data\pictures\Salamandra.paa"],
        ["Anaconda", "", "\FCLA_interactions\Insignias\data\pictures\Anaconda.paa"],
        ["Quetzal", "", "\FCLA_interactions\Insignias\data\pictures\Quetzal.paa"],
        ["Médico", "", "\FCLA_interactions\Insignias\data\pictures\Medic.paa"]
       ],
       _this select 1
      ]
     ]
    ],
  {
    (_this select 0) params ["_newInsignia"];
    (_this select 1) params ["_unit", "_defaultValue"];
    [_unit, _newInsignia] spawn FCLA_Interactions_fnc_statementSelfInsignias;
  }, {}, _this] call ZEN_Dialog_fnc_Create;
};



/* -------------------------------- EXTERNO -------------------------------- */

_defaultValue = switch (_savedInsignia) do {
  case "FCLA_CBI": {0;};
  case "FCLA_CAI": {1;};
  case "FCLA_CPR": {2;};
  case "FCLA_CAL": {3;};
  case "FCLA_CFA": {4;};
  case "FCLA_CMC": {5;};
  case "FCLA_CFG": {6;};
  case "FCLA_CEE": {7;};
  case "FCLA_CIM": {8;};
  case "FCLA_CTC": {9;};
  case "FCLA_COR": {10;};
  case "FCLA_CTS": {11;};
  case "FCLA_CFT": {12;};
  case "FCLA_OPVNT": {13;};
  case "FCLA_PARA": {14;};
  case "FCLA_CBC": {15;};
  case "FCLA_FES": {16;};
  case "FCLA_CPH": {17;};
  case "FCLA_CPA": {18;};
  default {0;};
};
_this = [_unit, _defaultValue];


["SELECCIONAR INSIGNIA",
  [
   ["COMBO", "Insignia",
    [
     [
      "FCLA_CBI", "FCLA_CAI", "FCLA_CPR", "FCLA_CAL", "FCLA_CFA", "FCLA_CMC",
      "FCLA_CFG", "FCLA_CEE", "FCLA_CIM", "FCLA_CTC", "FCLA_COR", "FCLA_CTS",
      "FCLA_CFT", "FCLA_OPVNT", "FCLA_PARA", "FCLA_CBC", "FCLA_FES", "FCLA_CPH",
      "FCLA_CPA"
     ],
     [
      ["CBI", "", "\FCLA_interactions\Insignias\data\pictures\CBI.paa"],
      ["CAI", "", "\FCLA_interactions\Insignias\data\pictures\CAI.paa"],
      ["CPR", "", "\FCLA_interactions\Insignias\data\pictures\CPR.paa"],
      ["CAL", "", "\FCLA_interactions\Insignias\data\pictures\CAL.paa"],
      ["CFA", "", "\FCLA_interactions\Insignias\data\pictures\CFA.paa"],
      ["CMC", "", "\FCLA_interactions\Insignias\data\pictures\CMC.paa"],
      ["CFG", "", "\FCLA_interactions\Insignias\data\pictures\CFG.paa"],
      ["CEE", "", "\FCLA_interactions\Insignias\data\pictures\CEE.paa"],
      ["CIM", "", "\FCLA_interactions\Insignias\data\pictures\CIM.paa"],
      ["CTC", "", "\FCLA_interactions\Insignias\data\pictures\CTC.paa"],
      ["COR", "", "\FCLA_interactions\Insignias\data\pictures\COR.paa"],
      ["CTS", "", "\FCLA_interactions\Insignias\data\pictures\CTS.paa"],
      ["CFT", "", "\FCLA_interactions\Insignias\data\pictures\CFT.paa"],
      ["OPVNT", "", "\FCLA_interactions\Insignias\data\pictures\OPVNT.paa"],
      ["PARA", "", "\FCLA_interactions\Insignias\data\pictures\PARA.paa"],
      ["CBC", "", "\FCLA_interactions\Insignias\data\pictures\CBC.paa"],
      ["FES", "", "\FCLA_interactions\Insignias\data\pictures\FES.paa"],
      ["CPH", "", "\FCLA_interactions\Insignias\data\pictures\CPH.paa"],
      ["CPA", "", "\FCLA_interactions\Insignias\data\pictures\CPA.paa"]
     ],
     _this select 1
    ]
   ]
  ],
{
  (_this select 0) params ["_newInsignia"];
  (_this select 1) params ["_unit", "_defaultValue"];
  [_unit, _newInsignia] spawn FCLA_Interactions_fnc_statementExternalInsignias;
}, {}, _this] call ZEN_Dialog_fnc_Create;
