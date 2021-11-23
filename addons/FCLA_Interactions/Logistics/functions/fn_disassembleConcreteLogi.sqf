
/* ----------------------------------------------------------------------------
Function: FCLA_Objects_fnc_disassembleConcreteLogi

Description:
    Genera una acción ACE 3D para desarmar el erizo de cemento en dos piezas.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_object"];



/* ------------------------------- DESARMAR -------------------------------- */

_Statement = {
  params ["_target", "_player", "_params"];
  [_player, "ainvpknlmstpslaywrfldnon_medic", 1] call ace_common_fnc_doAnimation;
  [5, [_target], {
    params ["_target"];
    _object = _target select 0;
    _Pos1 = _object modelToWorld [0, 0, 0];
    _Pos2 = _object modelToWorld [0, 0, 0.4];
    deleteVehicle _object;
    createVehicle ["FCLA_Land_ConcreteHedgehog_01_half_F", _Pos1, [], 0, "CAN_COLLIDE"];
    createVehicle ["FCLA_Land_ConcreteHedgehog_01_half_F", _Pos2, [], 0, "CAN_COLLIDE"];
  }, {[player, "", 2] call ace_common_fnc_doAnimation;}, "Desarmando obstaculo...", {
    params ["_target"];
    _object = _target select 0;
    ([player, _object] call CBA_fnc_getDistance) < 2.36;
    }] call ace_common_fnc_progressBar;
};

_ActionDisArm = ["Desarmar_Obstaculo", "Desarmar obstaculo", "\FCLA_Objects\Logistics\icons\Disassemble.paa", _Statement, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _ActionDisArm] call ace_interact_menu_fnc_addActionToObject;
