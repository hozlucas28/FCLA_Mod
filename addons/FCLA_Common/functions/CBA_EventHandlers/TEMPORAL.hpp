
["FCLA_ACE_Classname_Action", {
  (_this select 0) params ["_name", "_icon", "_statement", "_condition"];
  (_this select 1) params ["_associatedClassname", "_typeOfAction", "_parentPath"];
  _actionCreated = [_name, _name, _icon, [_statement] call FCLA_Common_fnc_stringToCode, [_condition] call FCLA_Common_fnc_stringToCode, {}, [], {[0, 0, 0]}, 2, [false, false, false, false, false], {}] call ACE_Interact_Menu_fnc_createAction;
  [_associatedClassname, _typeOfAction, _parentPath, _actionCreated, false] call ACE_Interact_Menu_fnc_addActionToClass;
}] call CBA_fnc_addEventHandler;


["FCLA_ACE_Object_Action", {
  (_this select 0) params ["_name", "_icon", "_statement", "_condition"];
  (_this select 1) params ["_associatedObject", "_typeOfAction", "_parentPath"];
  _actionCreated = [_name, _name, _icon, [_statement] call FCLA_Common_fnc_stringToCode, [_condition] call FCLA_Common_fnc_stringToCode, {}, [], {[0, 0, 0]}, 2, [false, false, false, false, false], {}] call ACE_Interact_Menu_fnc_createAction;
  [_associatedObject, _typeOfAction, _parentPath, _actionCreated] call ACE_Interact_menu_fnc_addActionToObject;
}] call CBA_fnc_addEventHandler;


["FCLA_ACE_Zeus_Action", {
  (_this select 1) params ["_parentPath"];
  (_this select 0) params ["_name", "_icon", "_statement", "_condition"];
  _actionCreated = [_name, _name, _icon, [_statement] call FCLA_Common_fnc_stringToCode, [_condition] call FCLA_Common_fnc_stringToCode, {}, [], {[0, 0, 0]}, 2, [false, false, false, false, false], {}] call ACE_Interact_Menu_fnc_createAction;
  [_parentPath, _actionCreated] call ACE_Interact_Menu_fnc_addActionToZeus;
}] call CBA_fnc_addEventHandler;


["FCLA_Smoke_Signal", {
  ["[FCLA] (modules): SMOKE ENTRO"] call ACE_Common_fnc_serverLog;
  params ["_modulePos", "_smokeColor"];

  _newColorSelected = switch (_smokeColor) do {
    case "RED": {[1, 0.253, 0, 1];};
    case "BLUE": {[0.266, 0.537, 1, 1];};
    case "GREEN": {[0.1, 0.5, 0.05, 1];};
    case "ORANGE": {[1, 0.54, 0.21, 1];};
    case "YELLOW": {[0.956, 1, 0.21, 1];};
    case "PURPLE": {[0.8, 0.432, 0.8, 1];};
    default {[1, 1, 1, 1];};
  };

  _lightObj = createVehicle ["#lightpoint", _modulePos, [], 0, "CAN_COLLIDE"];
  _lightObj setLightBrightness 2;
  _lightObj setLightDayLight true;
  _lightObj setLightColor [1, 1, 1];
  _lightObj setLightAmbient [1, 1, 1];
  _lightObj setLightFlareMaxDistance 2000;
  _lightObj setLightAttenuation [1, 0, 0, 0, 0, 50];
  [{deleteVehicle _this;}, _lightObj, 0.2] call CBA_fnc_waitAndExecute;

  drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 3, 0], "", "Billboard", 1, 0.3, [_modulePos select 0, _modulePos select 1, (_modulePos select 2) + 0.5], [0, 0, 0], 0, 11, 7, 0, [1, 5], [[1, 1, 1, 1], [1, 1, 1, 0]], [1], 0, 0, "", "", ""];
  drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 14, 5, 1], "", "Billboard", 1, 0.5, [_modulePos select 0, _modulePos select 1, (_modulePos select 2) + 0.1], [0, 0, 0], 0, 11, 7, 0, [1, 10], [[1, 1, 1, 1], [1, 1, 1, 0]], [2], 0, 0, "", "", ""];
  drop [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d", 8, 0, 40, 0], "", "Billboard", 1, 0.3, [_modulePos select 0, _modulePos select 1, (_modulePos select 2) + 0.3], [0, 0, 0], 3, 10.2, 8, 0.01, [0, 20], [[_newColorSelected select 0, _newColorSelected select 1, _newColorSelected select 2, 1], [_newColorSelected select 0, _newColorSelected select 1, _newColorSelected select 2, 0]], [0.1], 0, 0, "", "", ""];

  _soundSourceOne = createAgent ["VirtualAISquad", _modulePos, [], 0, "CAN_COLLIDE"];
  _soundSourceTwo = createAgent ["VirtualAISquad", _modulePos, [], 0, "CAN_COLLIDE"];
  [_soundSourceOne, "FCLA_Smoke_Explosion", nil, 2000, true] call FCLA_Common_fnc_globalSay3D;
  [_soundSourceTwo, "FCLA_Smoke_Explosion_Echo", nil, 3000, true] call FCLA_Common_fnc_globalSay3D;

  [{
    params ["_modulePos", "_newColorSelected"];
    _particleObj = createVehicle ["#particlesource", _modulePos, [], 0, "CAN_COLLIDE"];
    _particleObj setDropInterval 0.01;
    _particleObj setParticleCircle [0, [0, 0, 0]];
    _particleObj setParticleRandom [1, [1, 1, 1], [0.5, 0.5, 0.5], 1, 0, [0, 0, 0, 0], 0, 0];
    _particleObj setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d", 8, 0, 40, 0], "", "Billboard", 1, FCLA_Smoke_Signal_Time, [0, 0, 0], [0, 0, 0], 5, 10.2, 8, 0.05, [5, 20], [[_newColorSelected select 0, _newColorSelected select 1, _newColorSelected select 2, 1], [_newColorSelected select 0, _newColorSelected select 1, _newColorSelected select 2, 0.5], [_newColorSelected select 0, _newColorSelected select 1, _newColorSelected select 2, 0.3], [_newColorSelected select 0, _newColorSelected select 1, _newColorSelected select 2, 0]], [0.3], 0, 0, "", "", _modulePos];
    [{deleteVehicle _this;}, _particleObj, 0.1] call CBA_fnc_waitAndExecute;
  }, [_modulePos, _newColorSelected], 0.2] call CBA_fnc_waitAndExecute;
}] call CBA_fnc_addEventHandler;
