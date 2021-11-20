
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un diálogo para elegir la insignia.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_isSelf"];



//Crear diálogo.
if (_isSelf) then {
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
       0
      ]
     ]
    ],
  {
    _unit = _this select 1;
    _insignia = (_this select 0) select 0;
    [_unit, _insignia] spawn FCLA_Interactions_fnc_statementSelfInsignias;
  }, {}, _unit] call ZEN_Dialog_fnc_Create;
} else {
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
       0
      ]
     ]
    ],
  {
    _unit = _this select 1;
    _insignia = (_this select 0) select 0;
    [_unit, _insignia] spawn FCLA_Interactions_fnc_statementExternalInsignias;
  }, {}, _unit] call ZEN_Dialog_fnc_Create;
};
