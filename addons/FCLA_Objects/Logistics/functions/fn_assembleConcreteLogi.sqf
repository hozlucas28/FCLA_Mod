
/* ----------------------------------------------------------------------------
Function: FCLA_Objects_fnc_assembleConcreteLogi

Description:
    Genera una acción ACE 3D que permite ensamblar un erizo de cemento con
    sus dos piezas.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_object"];



/* ------------------------------- ENSAMBLAR ------------------------------- */

_Condition = {
  params ["_target", "_player", "_params"];
  _Pos = _target modelToWorld [0, 0, 0];
  ((count nearestObjects [_Pos, ["FCLA_Land_ConcreteHedgehog_01_half_F"], 2]) == 2)
};

_Statement = {
  params ["_target", "_player", "_params"];
  [_player, "ainvpknlmstpslaywrfldnon_medic", 1] call ace_common_fnc_doAnimation;
  [5, [_target], {
    params ["_target"];
    _object = _target select 0;
    _Pos = _object modelToWorld [0, 0, 0];
    _deleteObjects = nearestObjects [_Pos, ["FCLA_Land_ConcreteHedgehog_01_half_F"], 2];
    {deleteVehicle _x;} forEach _deleteObjects;
    createVehicle ["FCLA_Land_ConcreteHedgehog_01_F", _Pos, [], 0, "CAN_COLLIDE"];
  }, {[player, "", 2] call ace_common_fnc_doAnimation;}, "Ensamblando obstaculo...", {
    params ["_target"];
    _object = _target select 0;
    _Pos = _object modelToWorld [0, 0, 0];
    (([player, _object] call CBA_fnc_getDistance) < 2.36) && ((count nearestObjects [_Pos, ["FCLA_Land_ConcreteHedgehog_01_half_F"], 2]) == 2);
    }] call ace_common_fnc_progressBar;
};

_ActionArm = ["Ensamblar_Obstaculo", "Ensamblar obstaculo", "\A3\ui_f\data\igui\cfg\actions\repair_ca.paa", _Statement, _Condition] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _ActionArm] call ace_interact_menu_fnc_addActionToObject;
