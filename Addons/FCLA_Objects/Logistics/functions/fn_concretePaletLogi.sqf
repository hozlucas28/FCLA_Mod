
/* ----------------------------------------------------------------------------
Function: FCLA_Objects_fnc_concretePaletLogi

Description:
    Genera una acción ACE 3D para liberar la carga del palé.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_object"];



/* ------------------------------- DESARMAR -------------------------------- */

_Condition = {
  params ["_target", "_player", "_params"];
  (isNull attachedTo _target);
};

_Statement = {
  params ["_target", "_player", "_params"];
  [_player, "ainvpknlmstpslaywrfldnon_medic", 1] call ace_common_fnc_doAnimation;
  [10, [_target], {
    params ["_target"];
    _object = _target select 0;
    _Pos1 = _object modelToWorld [0, 0, 0];
    _Pos2 = _Pos1 vectorAdd [0, 0, 0.35];
    _Pos3 = _Pos2 vectorAdd [0, 0, 0.35];
    _Pos4 = _Pos3 vectorAdd [0, 0, 0.35];
    _Pos5 = _Pos4 vectorAdd [0, 0, 0.35];
    deleteVehicle _object;
    _obj1 = createVehicle ["FCLA_Land_Pallet_F", _Pos1, [], 0, "CAN_COLLIDE"];
    _obj2 = createVehicle ["FCLA_Land_ConcreteHedgehog_01_half_F", _Pos2, [], 0, "CAN_COLLIDE"];
    _obj3 = createVehicle ["FCLA_Land_ConcreteHedgehog_01_half_F", _Pos3, [], 0, "CAN_COLLIDE"];
    _obj4 = createVehicle ["FCLA_Land_ConcreteHedgehog_01_half_F", _Pos4, [], 0, "CAN_COLLIDE"];
    _obj5 = createVehicle ["FCLA_Land_ConcreteHedgehog_01_half_F", _Pos5, [], 0, "CAN_COLLIDE"];
  }, {[player, "", 2] call ace_common_fnc_doAnimation;}, "Liberando carga...", {
    params ["_target"];
    _object = _target select 0;
    (player distance _object < 2.36);
    }] call ace_common_fnc_progressBar;
};

_ActionDisArm = ["Desarmar_Pale_Obstaculos", "Liberar carga del palé", "\FCLA_Objects\Logistics\icons\Disassemble.paa", _Statement, _Condition] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _ActionDisArm] call ace_interact_menu_fnc_addActionToObject;
