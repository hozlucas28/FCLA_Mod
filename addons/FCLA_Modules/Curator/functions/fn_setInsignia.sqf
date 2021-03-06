
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite colocar una insignia a la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Colocar insignia", {
  params ["_position", "_attachedObject"];
  _savedInsignia = _attachedObject getVariable ["FCLA_Insignia", FCLA_Default_Insignia];
  _setInsigniaDisableByEditor = _attachedObject getVariable ['FCLA_Disable_Insignias', false];
  if ((isNull _attachedObject) || !(_attachedObject in allUnits)) exitWith {["ERROR! EL MODULO DEBE SER COLOCADO SOBRE UNA UNIDAD"] call ZEN_Common_fnc_showMessage;};
  if ((_setInsigniaDisableByEditor)) exitWith {["¡EL EDITOR A DESACTIVADO EL CAMBIO DE INSIGNIA EN ESTA UNIDAD!"] call ZEN_Common_fnc_showMessage;};


  _originalInsignia = switch (toUpper _savedInsignia) do {
    case "FCLA_UNASSIGNED": {0;};
    case "FCLA_COMMON": {1;};
    case "FCLA_TAKANA": {2;};
    case "FCLA_JAGUAR": {3;};
    case "FCLA_CONDOR": {4;};
    case "FCLA_SALAMANDRA": {5;};
    case "FCLA_ANACONDA": {6;};
    case "FCLA_QUETZAL": {7;};
    case "FCLA_MEDIC": {8;};
    case "FCLA_CBI": {9;};
    case "FCLA_CAI": {10;};
    case "FCLA_CPR": {11;};
    case "FCLA_CPM": {12;};
    case "FCLA_CAL": {13;};
    case "FCLA_CFA": {14;};
    case "FCLA_CMC": {15;};
    case "FCLA_CFG": {16;};
    case "FCLA_CEE": {17;};
    case "FCLA_CIM": {18;};
    case "FCLA_CTC": {19;};
    case "FCLA_COR": {20;};
    case "FCLA_CTS": {21;};
    case "FCLA_CFT": {22;};
    case "FCLA_OPVNT": {23;};
    case "FCLA_PARA": {24;};
    case "FCLA_CBC": {25;};
    case "FCLA_FES": {26;};
    case "FCLA_CPH": {27;};
    case "FCLA_CPA": {28;};
    case "FCLA_CDM": {29;};
    default {0;};
  };


  ["SELECCIONAR INSIGNIA",
    [
     ["COMBO", "Insignia",
      [
       [
        "FCLA_Unassigned", "FCLA_Common", "FCLA_Takana", "FCLA_Jaguar", "FCLA_Condor", "FCLA_Salamandra", "FCLA_Anaconda",
        "FCLA_Quetzal", "FCLA_Medic", "FCLA_CBI", "FCLA_CAI", "FCLA_CPR", "FCLA_CPM", "FCLA_CAL", "FCLA_CFA", "FCLA_CMC",
        "FCLA_CFG", "FCLA_CEE", "FCLA_CIM", "FCLA_CTC", "FCLA_COR", "FCLA_CTS", "FCLA_CFT", "FCLA_OPVNT", "FCLA_PARA",
        "FCLA_CBC", "FCLA_FES", "FCLA_CPH", "FCLA_CPA", "FCLA_CDM"
       ],
       [
        ["Sin asignar", "", "\FCLA_interactions\Insignias\data\pictures\Unassigned.paa"],
        ["FCLA", "", "\FCLA_interactions\Insignias\data\pictures\FCLA.paa"],
        ["Takana", "", "\FCLA_interactions\Insignias\data\pictures\Takana.paa"],
        ["Jaguar", "", "\FCLA_interactions\Insignias\data\pictures\Jaguar.paa"],
        ["Condor", "", "\FCLA_interactions\Insignias\data\pictures\Condor.paa"],
        ["Salamandra", "", "\FCLA_interactions\Insignias\data\pictures\Salamandra.paa"],
        ["Anaconda", "", "\FCLA_interactions\Insignias\data\pictures\Anaconda.paa"],
        ["Quetzal", "", "\FCLA_interactions\Insignias\data\pictures\Quetzal.paa"],
        ["Medico", "", "\FCLA_interactions\Insignias\data\pictures\Medic.paa"],
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
       _originalInsignia
      ],
      true
     ]
    ],
  {
    (_this select 0) params ["_newInsignia"];
    (_this select 1) params ["_position", "_attachedObject"];

    if ([_attachedObject, true] call ACE_common_fnc_isPlayer) then {
      [_attachedObject, _newInsignia] call FCLA_Interactions_fnc_statementInsignias;
      ["INSIGNIA COLOCADA CON EXITO"] call ZEN_Common_fnc_showMessage;
    } else {
      [_attachedObject, _newInsignia] call FCLA_Interactions_fnc_statementInsignias;
      ["INSIGNIA COLOCADA CON EXITO"] call ZEN_Common_fnc_showMessage;
    };
  }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Insignia_Management.paa"] call ZEN_Custom_Modules_fnc_Register;
