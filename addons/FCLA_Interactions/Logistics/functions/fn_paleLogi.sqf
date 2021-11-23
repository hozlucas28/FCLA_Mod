
/* ----------------------------------------------------------------------------
Function: FCLA_Objects_fnc_paleLogi

Description:
    Genera una acción ACE 3D para colocar cuatro piezas de erizos de cemento
    en el palé.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_object"];



/* ---------------------- COLOCAR OBSTACULOS EN PALÉ ----------------------- */

_Condition = {
  params ["_target", "_player", "_params"];
  _Pos = _target modelToWorld [0, 0, 0];
  ((count nearestObjects [_Pos, ["FCLA_Land_Pallet_F"], 3]) == 1) && ((count nearestObjects [_Pos, ["FCLA_Land_ConcreteHedgehog_01_half_F"], 3]) == 4);
};

_Statement = {
  params ["_target", "_player", "_params"];
  [_player, "ainvpknlmstpslaywrfldnon_medic", 1] call ace_common_fnc_doAnimation;
  [10, [_target], {
    params ["_target"];
    _object = _target select 0;
    _Pos = _object modelToWorld [0, 0, 0];
    _deleteObjects = nearestObjects [_Pos, ["FCLA_Land_Pallet_F","FCLA_Land_ConcreteHedgehog_01_half_F"], 3];
    {deleteVehicle _x;} forEach _deleteObjects;
    createVehicle ["FCLA_Land_ConcreteHedgehog_01_palette_F", _Pos, [], 0, "CAN_COLLIDE"];
  }, {[player, "", 2] call ace_common_fnc_doAnimation;}, "Colocando obstaculos en el palé...", {
    params ["_target"];
    _object = _target select 0;
    _Pos = _object modelToWorld [0, 0, 0];
    (([player, _object] call CBA_fnc_getDistance) < 2.36) &&
    ((count nearestObjects [_Pos, ["FCLA_Land_Pallet_F"], 3]) == 1) && ((count nearestObjects [_Pos, ["FCLA_Land_ConcreteHedgehog_01_half_F"], 3]) == 4)
    }] call ace_common_fnc_progressBar;
};

_ActionArmPale = ["Colocar_Obstaculos_Pale", "Colocar obstaculos en el palé", "\FCLA_Objects\Logistics\icons\Craning_On.paa", _Statement, _Condition] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _ActionArmPale] call ace_interact_menu_fnc_addActionToObject;
