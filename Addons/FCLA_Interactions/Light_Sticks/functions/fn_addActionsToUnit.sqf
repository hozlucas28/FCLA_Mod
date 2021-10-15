
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera nueve acciones ACE 3D (internas), que permiten realizar animaciones
 * para asi simular el trabajo de un agente de rampa.
 * 
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];



/* --------------------------- ENCENDER MOTORES ---------------------------- */

_Condition = {
  params ["_target", "_caller"];
  [_caller] call FCLA_Interactions_fnc_canPlayAnimationLS;
};

_Statement = {
  params ["_target", "_caller"];
  [_caller, "Acts_JetsMarshallingEnginesOn_in"] call FCLA_Interactions_fnc_playAnimationLS;
};

_TurnOnEngines = ["FCLA_Light_Sticks_Encender_Motores", "Encender motores", "", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_FCLA_Light_Stick"], _TurnOnEngines] call ACE_Interact_Menu_fnc_addActionToObject;


/* ---------------------------- APAGAR MOTORES ----------------------------- */

_Condition = {
  params ["_target", "_caller"];
  [_caller] call FCLA_Interactions_fnc_canPlayAnimationLS;
};

_Statement = {
  params ["_target", "_caller"];
  [_caller, "Acts_JetsMarshallingEnginesOff_in"] call FCLA_Interactions_fnc_playAnimationLS;
};

_TurnOffEngines = ["FCLA_Light_Sticks_Apagar_Motores", "Apagar motores", "", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_FCLA_Light_Stick"], _TurnOffEngines] call ACE_Interact_Menu_fnc_addActionToObject;


/* --------------------------------- RECTO --------------------------------- */

_Condition = {
  params ["_target", "_caller"];
  [_caller] call FCLA_Interactions_fnc_canPlayAnimationLS;
};

_Statement = {
  params ["_target", "_caller"];
  [_caller, "Acts_JetsMarshallingStraight_in"] call FCLA_Interactions_fnc_playAnimationLS;
};

_Straight = ["FCLA_Light_Sticks_Recto", "Recto", "", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_FCLA_Light_Stick"], _Straight] call ACE_Interact_Menu_fnc_addActionToObject;


/* ------------------------------- DESPACIO -------------------------------- */

_Condition = {
  params ["_target", "_caller"];
  [_caller] call FCLA_Interactions_fnc_canPlayAnimationLS;
};

_Statement = {
  params ["_target", "_caller"];
  [_caller, "Acts_JetsMarshallingSlow_in"] call FCLA_Interactions_fnc_playAnimationLS;
};

_Slow = ["FCLA_Light_Sticks_Despacio", "Despacio", "", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_FCLA_Light_Stick"], _Slow] call ACE_Interact_Menu_fnc_addActionToObject;


/* -------------------------------- DERECHA -------------------------------- */

_Condition = {
  params ["_target", "_caller"];
  [_caller] call FCLA_Interactions_fnc_canPlayAnimationLS;
};

_Statement = {
  params ["_target", "_caller"];
  [_caller, "Acts_JetsMarshallingRight_in"] call FCLA_Interactions_fnc_playAnimationLS;
};

_TurnRight = ["FCLA_Light_Sticks_Derecha", "Derecha", "", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_FCLA_Light_Stick"], _TurnRight] call ACE_Interact_Menu_fnc_addActionToObject;


/* ------------------------------- IZQUIERDA ------------------------------- */

_Condition = {
  params ["_target", "_caller"];
  [_caller] call FCLA_Interactions_fnc_canPlayAnimationLS;
};

_Statement = {
  params ["_target", "_caller"];
  [_caller, "Acts_JetsMarshallingLeft_in"] call FCLA_Interactions_fnc_playAnimationLS;
};

_TurnLeft = ["FCLA_Light_Sticks_Izquierda", "Izquierda", "", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_FCLA_Light_Stick"], _TurnLeft] call ACE_Interact_Menu_fnc_addActionToObject;


/* --------------------------------- ALTO ---------------------------------- */

_Condition = {
  params ["_target", "_caller"];
  [_caller] call FCLA_Interactions_fnc_canPlayAnimationLS;
};

_Statement = {
  params ["_target", "_caller"];
  [_caller, "Acts_JetsMarshallingStop_in"] call FCLA_Interactions_fnc_playAnimationLS;
};

_Stop = ["FCLA_Light_Sticks_Alto", "Alto", "", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_FCLA_Light_Stick"], _Stop] call ACE_Interact_Menu_fnc_addActionToObject;


/* -------------------------- ALTO DE EMERGENCIA --------------------------- */

_Condition = {
  params ["_target", "_caller"];
  [_caller] call FCLA_Interactions_fnc_canPlayAnimationLS;
};

_Statement = {
  params ["_target", "_caller"];
  [_caller, "Acts_JetsMarshallingEmergencyStop_in"] call FCLA_Interactions_fnc_playAnimationLS;
};

_EmergencyStop = ["FCLA_Light_Sticks_Alto_de_Emergencia", "Alto de emergencia", "", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_FCLA_Light_Stick"], _EmergencyStop] call ACE_Interact_Menu_fnc_addActionToObject;


/* ------------------------------- CANCELAR -------------------------------- */

_Condition = {
  params ["_target", "_caller"];
  [_caller] call FCLA_Interactions_fnc_canPlayAnimationLS;
};

_Statement = {
  params ["_target", "_caller"];
  [_caller, ""] call FCLA_Interactions_fnc_playAnimationLS;
};

_StopCurrentAnimation = ["FCLA_Light_Sticks_Cancelar_Animacion", "Cancelar", "", _Statement, _Condition] call ACE_Interact_Menu_fnc_createAction;
[_unit, 1, ["ACE_SelfActions", "ACE_FCLA_Light_Stick"], _StopCurrentAnimation] call ACE_Interact_Menu_fnc_addActionToObject;
