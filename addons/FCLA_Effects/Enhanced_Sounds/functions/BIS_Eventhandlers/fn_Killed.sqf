
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una serie de sonidos cuando una unidad muere.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_this spawn {
  params ["_unit", "_killer", "_instigator", "_useEffects"];
  _isUAVUnit = (getText (configOf _unit >> "simulation")) == "UAVPilot";
  if ((!FCLA_Killed_Sounds) || (!_useEffects) || (_isUAVUnit)) exitWith {};



  //Si no hay jugadores/unidades controladas cerca.
  _areNearPlayers = [_unit, 50, 1, false] call FCLA_Functions_fnc_nearPlayer;
  if (!_areNearPlayers) exitWith {};


  //Si murio dentro de un blindado.
  _currentVehicle = vehicle _unit;
  if (!(alive _currentVehicle) && ((_currentVehicle isKindOf "Tank") || (_currentVehicle isKindOf "Wheeled_APC_F") || (_currentVehicle isKindOf "Helicopter") || (_currentVehicle isKindOf "Plane"))) exitWith {
    sleep (2 + random 2);
    _randomSound = selectRandom ["FCLA_Burn_Inside_1", "FCLA_Burn_Inside_2", "FCLA_Burn_Inside_3", "FCLA_Burn_Inside_4", "FCLA_Burn_Inside_5", "FCLA_Burn_Inside_6", "FCLA_Burn_Inside_7", "FCLA_Burn_Inside_8", "FCLA_Burn_Inside_9", "FCLA_Burn_Inside_10"];
    _soundSource = createAgent ["VirtualAISquad", getPos (_currentVehicle), [], 0, "CAN_COLLIDE"];
    _soundSource attachTo [_currentVehicle, [0, 0, 0]];
    [_soundSource, _randomSound, 7, 100, true] call FCLA_Common_fnc_globalSay3D;

    for "_i" from 1 to 2 do {
      _randomTime = if (_i == 1) then {0.2 + random 1.7} else {0.2 + random 1};;
      sleep _randomTime;
      _randomSound = selectRandom ["FCLA_Inside_Hit_1", "FCLA_Inside_Hit_2", "FCLA_Inside_Hit_3", "FCLA_Inside_Hit_4"];
      _soundSource = createAgent ["VirtualAISquad", getPos (_currentVehicle), [], 0, "CAN_COLLIDE"];
      _soundSource attachTo [_currentVehicle, [0, 0, 0]];
      [_soundSource, _randomSound, 1, 100, true] call FCLA_Common_fnc_globalSay3D;
    };
  };

  //Si murio de un impacto en la cabeza.
  if ((_unit getHit "head") >= 0.4) exitWith {
    _randomSound = selectRandom ["FCLA_Scream_1", "FCLA_Scream_2", "FCLA_Scream_3", "FCLA_Scream_4", "FCLA_Scream_5", "FCLA_Scream_6", "FCLA_Scream_7", "FCLA_Scream_8", "FCLA_Scream_9", "FCLA_Scream_10", "FCLA_Stealh_Death_1", "FCLA_Stealh_Death_2", "FCLA_Suffocation_1", "FCLA_Suffocation_2", "FCLA_Suffocation_3"];
    _soundSource = createAgent ["VirtualAISquad", getPos _unit, [], 0, "CAN_COLLIDE"];
    _soundSource attachTo [_unit, [0, 0, 0.5], "Head"];
    [_soundSource, _randomSound, 5, 100, true] call FCLA_Common_fnc_globalSay3D;
  };

  //Si murio dentro de una una casa.
  if ([_unit] call ACE_Common_fnc_isInBuilding) then {
    _randomSound = selectRandom ["FCLA_Death_Inside_Building_1", "FCLA_Death_Inside_Building_2", "FCLA_Death_Inside_Building_3", "FCLA_Death_Inside_Building_4", "FCLA_Death_Inside_Building_5", "FCLA_Death_Inside_Building_6", "FCLA_Death_Inside_Building_7", "FCLA_Death_Inside_Building_8", "FCLA_Death_Inside_Building_9", "FCLA_Death_Inside_Building_10", "FCLA_Death_Inside_Building_11", "FCLA_Death_Inside_Building_12"];
    _soundSource = createAgent ["VirtualAISquad", getPos _unit, [], 0, "CAN_COLLIDE"];
    _soundSource attachTo [_unit, [0, 0, 0.5], "Head"];
    [_soundSource, _randomSound, 1, 100, true] call FCLA_Common_fnc_globalSay3D;
  } else {
    _randomSound = selectRandom ["FCLA_Death_1", "FCLA_Death_2", "FCLA_Death_3", "FCLA_Death_4", "FCLA_Death_5", "FCLA_Death_6", "FCLA_Death_7", "FCLA_Death_8", "FCLA_Death_9", "FCLA_Death_10", "FCLA_Death_11", "FCLA_Death_12", "FCLA_Death_13", "FCLA_Death_14", "FCLA_Death_15", "FCLA_Death_16", "FCLA_Death_17", "FCLA_Death_18", "FCLA_Death_19", "FCLA_Death_20", "FCLA_Death_21", "FCLA_Death_22", "FCLA_Death_23", "FCLA_Death_24", "FCLA_Death_25"];
    _soundSource = createAgent ["VirtualAISquad", getPos _unit, [], 0, "CAN_COLLIDE"];
    _soundSource attachTo [_unit, [0, 0, 0.5], "Head"];
    [_soundSource, _randomSound, 9, 100, true] call FCLA_Common_fnc_globalSay3D;
  };
};
