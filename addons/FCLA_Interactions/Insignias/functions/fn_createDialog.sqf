
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea dos dialogos (propio e externo), segun sea el caso, para elegir la insignia.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_isSelf"];
_savedInsignia = _unit getVariable ["FCLA_Insignia", FCLA_Default_Insignia];



/* -------------------------------- PROPIO --------------------------------- */

if (_isSelf) exitWith {
  _defaultValue = switch (toUpper _savedInsignia) do {
    case "FCLA_TAKANA": {0;};
    case "FCLA_JAGUAR": {1;};
    case "FCLA_CONDOR": {2;};
    case "FCLA_SALAMANDRA": {3;};
    case "FCLA_ANACONDA": {4;};
    case "FCLA_QUETZAL": {5;};
    case "FCLA_MEDIC": {6;};
    default {0;};
  };

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
        ["Medico", "", "\FCLA_interactions\Insignias\data\pictures\Medic.paa"]
       ],
       _defaultValue
      ]
     ]
    ],
  {
    (_this select 0) params ["_newInsignia"];
    [_this select 1, _newInsignia] spawn FCLA_Interactions_fnc_statementInsignias;
  }, {}, _unit] call ZEN_Dialog_fnc_Create;
};



/* -------------------------------- EXTERNO -------------------------------- */

_defaultValue = switch (toUpper _savedInsignia) do {
  case "FCLA_CBI": {0;};
  case "FCLA_CAI": {1;};
  case "FCLA_CPR": {2;};
  case "FCLA_CPM": {3;};
  case "FCLA_CAL": {4;};
  case "FCLA_CFA": {5;};
  case "FCLA_CMC": {6;};
  case "FCLA_CFG": {7;};
  case "FCLA_CEE": {8;};
  case "FCLA_CIM": {9;};
  case "FCLA_CTC": {10;};
  case "FCLA_COR": {11;};
  case "FCLA_CTS": {12;};
  case "FCLA_CFT": {13;};
  case "FCLA_OPVNT": {14;};
  case "FCLA_PARA": {15;};
  case "FCLA_CBC": {16;};
  case "FCLA_FES": {17;};
  case "FCLA_CPH": {18;};
  case "FCLA_CPA": {19;};
  case "FCLA_CDM": {20;};
  default {0;};
};


["SELECCIONAR INSIGNIA",
  [
   ["COMBO", "Insignia",
    [
     [
      "FCLA_CBI", "FCLA_CAI", "FCLA_CPR", "FCLA_CPM", "FCLA_CAL", "FCLA_CFA",
      "FCLA_CMC", "FCLA_CFG", "FCLA_CEE", "FCLA_CIM", "FCLA_CTC", "FCLA_COR",
      "FCLA_CTS", "FCLA_CFT", "FCLA_OPVNT", "FCLA_PARA", "FCLA_CBC", "FCLA_FES",
      "FCLA_CPH", "FCLA_CPA", "CDM"
     ],
     [
      ["CBI", "", "\FCLA_interactions\Insignias\data\pictures\CBI.paa"],
      ["CAI", "", "\FCLA_interactions\Insignias\data\pictures\CAI.paa"],
      ["CPR", "", "\FCLA_interactions\Insignias\data\pictures\CPR.paa"],
      ["CPM", "", "\FCLA_interactions\Insignias\data\pictures\CPM.paa"],
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
      ["CPA", "", "\FCLA_interactions\Insignias\data\pictures\CPA.paa"],
      ["CDM", "", "\FCLA_interactions\Insignias\data\pictures\CDM.paa"]
     ],
     _defaultValue
    ]
   ]
  ],
{
  (_this select 0) params ["_newInsignia"];
  [_this select 1, _newInsignia] spawn FCLA_Interactions_fnc_statementInsignias;
}, {}, _unit] call ZEN_Dialog_fnc_Create;
