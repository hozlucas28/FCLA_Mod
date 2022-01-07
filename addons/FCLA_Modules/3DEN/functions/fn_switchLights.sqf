
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Enciende/Apaga todas las luces dentro del tamaño de la zona, determinado
 * por el módulo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
_assignedCurator = _module getVariable ["FCLA_Assigned_Curator", objNull];
_forceDeactivation = _module getVariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Variables locales.
_modulePos = getPos _module;
_moduleArea = _module getVariable ["objectArea", [0, 0, 0, false, -1]];
_lightsState = _module getVariable ["FCLA_Lights_State", "Off"];
_excludeVehicles = _module getVariable ["FCLA_Exclude_Vehicles", false];
_numberOfCompatibleSynchronizedObjects = {!(_x isKindOf "EmptyDetector")} count _synchronizedObjects;



//Alternar luces.
[{_this call FCLA_Common_fnc_switchLights;}, [_modulePos, _moduleArea, _lightsState, _excludeVehicles], 0.1] call CBA_fnc_waitAndExecute;


//Asignar interruptor.
_findedTransferSwitch = _synchronizedObjects findIf {(typeOf _x) == "Land_TransferSwitch_01_F"};
_transferSwitch = if ((_findedTransferSwitch > -1) && (_numberOfCompatibleSynchronizedObjects == 1)) then {_synchronizedObjects select _findedTransferSwitch;} else {_module;};


if (_transferSwitch != _module) then {
  _transferSwitch setVariable ["FCLA_Switch_State", _lightsState, true];
  if (_lightsState == "On") then {
    _transferSwitch animate ["Power_1", 1, true];
    _transferSwitch animate ["Power_2", 1, true];
    _transferSwitch animate ["SwitchPosition", 1, true];
    _transferSwitch animateSource ["SwitchLight", 1, true];
  } else {
    _transferSwitch animate ["Power_1", 0, true];
    _transferSwitch animate ["Power_2", 0, true];
    _transferSwitch animate ["SwitchPosition", 0, true];
    _transferSwitch animateSource ["SwitchLight", 0, true];
  };

  [
  	_transferSwitch,
  	"encender",
  	"\FCLA_Data\Hold_Actions\Interact.paa",
  	"\FCLA_Data\Hold_Actions\Interact.paa",
  	"(alive _target) && (_this distance _target <= 3) && ((_target getVariable ['FCLA_Switch_State', 'Off']) == 'Off') && !([_this, [1, 2, 3, 5, 15, 16]] call FCLA_Common_fnc_severalConditions)",
  	"(alive _target) && (_caller distance _target <= 3) && ((_target getVariable ['FCLA_Switch_State', 'Off']) == 'Off') && !([_caller, [1, 2, 3, 5, 15, 16]] call FCLA_Common_fnc_severalConditions)",
  	{ //Sentencias al comenzar.
      params ["_target", "_caller", "_actionId", "_arguments"];
      _target animate ["Power_1", 1, 0.1];
      _target animate ["Power_2", 1, 0.1];
      _target animate ["SwitchPosition", 1, 0.1];
    },
  	{},
  	{ //Sentencias al completar.
  		params ["_target", "_caller", "_actionId", "_arguments"];
      _target animateSource ["SwitchLight", 1, true];
      _target setVariable ["FCLA_Switch_State", "On"];
      [_caller, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;
      [_arguments select 0, _arguments select 1, "On", _arguments select 2] call FCLA_Common_fnc_switchLights;
  	},
  	{ //Sentencias al interrumpirse.
      params ["_target", "_caller", "_actionId", "_arguments"];
      _target animate ["Power_1", 0, false];
      _target animate ["Power_2", 0, false];
      _target animate ["SwitchPosition", 0, false];
    },
  	[_modulePos, _moduleArea, _excludeVehicles],
  	5,
  	1.5,
  	false,
  	false,
  	true
  ] remoteExec ["BIS_fnc_holdActionAdd", 0, _transferSwitch];

  [
  	_transferSwitch,
  	"apagar",
  	"\FCLA_Data\Hold_Actions\Interact.paa",
  	"\FCLA_Data\Hold_Actions\Interact.paa",
  	"(alive _target) && (_this distance _target <= 3) && ((_target getVariable ['FCLA_Switch_State', 'Off']) == 'On') && !([_this, [1, 2, 3, 5, 15, 16]] call FCLA_Common_fnc_severalConditions)",
  	"(alive _target) && (_caller distance _target <= 3) && ((_target getVariable ['FCLA_Switch_State', 'Off']) == 'On') && !([_caller, [1, 2, 3, 5, 15, 16]] call FCLA_Common_fnc_severalConditions)",
  	{ //Sentencias al comenzar.
      params ["_target", "_caller", "_actionId", "_arguments"];
      _target animate ["Power_1", 0, 0.1];
      _target animate ["Power_2", 0, 0.1];
      _target animate ["SwitchPosition", 0, 0.1];
    },
  	{},
  	{ //Sentencias al completar.
  		params ["_target", "_caller", "_actionId", "_arguments"];
      _target animateSource ["SwitchLight", 0, true];
      _target setVariable ["FCLA_Switch_State", "Off"];
      [_caller, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;
      [_arguments select 0, _arguments select 1, "Off", _arguments select 2] call FCLA_Common_fnc_switchLights;
  	},
  	{ //Sentencias al interrumpirse.
      params ["_target", "_caller", "_actionId", "_arguments"];
      _target animate ["Power_1", 1, false];
      _target animate ["Power_2", 1, false];
      _target animate ["SwitchPosition", 1, false];
    },
  	[_modulePos, _moduleArea, _excludeVehicles],
  	5,
  	1.5,
  	false,
  	false,
  	true
  ] remoteExec ["BIS_fnc_holdActionAdd", 0, _transferSwitch];
};


//Eliminar módulo.
deleteVehicle _module;
