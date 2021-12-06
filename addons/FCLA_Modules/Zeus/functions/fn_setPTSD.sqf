
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Provoca un trastorno por estrés postraumático en la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Alternar TEPT", {
  params ["_position", "_attachedObject"];
  if ((isNull _attachedObject) || !(_attachedObject in allPlayers)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UN JUGADOR"] call ZEN_Common_fnc_showMessage;};


  if (_attachedObject getVariable ["FCLA_has_PTSD", false]) exitWith {
    _attachedObject getVariable ["FCLA_Disable_PTSD", true, true];
    ["LA UNIDAD YA NO SUFRIRA TRASTORNO POR ESTRÉS POSTRAUMÁTICO (TEPT)"] call ZEN_Common_fnc_showMessage;
  };


  ["TRASTORNO POR ESTRÉS POSTRAUMÁTICO (TEPT)",
	 [
    ["TOOLBOX", "¿Llora?",
     [
      0,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     true
    ],
    ["TOOLBOX", "¿Escucha voces?",
     [
      0,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     true
    ],
    ["TOOLBOX", "¿Pensamientos no deseados?",
     [
      0,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     true
    ],
    ["TOOLBOX", "¿Movimientos involuntarios?",
     [
      0,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     true
    ]
	 ],
   {
     (_this select 0) params ["_cryState", "_voicesState", "_unwantedThoughtsState", "_involuntaryMovementsState"];
     _cryState = if (_cryState == 0) then {true;} else {false;};
     _voicesState = if (_voicesState == 0) then {true;} else {false;};
     _unwantedThoughtsState = if (_unwantedThoughtsState == 0) then {true;} else {false;};
     _involuntaryMovementsState = if (_involuntaryMovementsState == 0) then {true;} else {false;};

     ["FCLA_Set_PTSD", [_this select 1, _cryState, _voicesState, _unwantedThoughtsState, _involuntaryMovementsState], _this select 1] call CBA_fnc_targetEvent;
     ["LA UNIDAD SUFRIRA TRASTORNO POR ESTRÉS POSTRAUMÁTICO (TEPT)"] call ZEN_Common_fnc_showMessage;
   }, {}, _attachedObject] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Zeus\data\Person.paa"] call ZEN_Custom_Modules_fnc_Register;
