
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite abrir una puerta cerrada a patadas, si el addon
 * option 'Permitir patadas' es activado, y el porcentaje de
 * exito de la misma es definida en 'Probabilidad de exito (patadas)'.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_this spawn {
  _pos = getPos _this;
  _building = cursorObject;
  _successRate = [0, 100] call BIS_fnc_randomInt;
  _currentWeapon = currentWeapon _this;
  _primaryWeapon = primaryWeapon _this;
  _handgunWeapon = handgunWeapon _this;
  _secondaryWeapon = secondaryWeapon _this;
  _disableByEditor = _building getVariable ["FCLA_Disable_Kick_Door", false];
  _beginPos = ASLtoATL eyepos _this;
  _endPos = _beginPos vectorAdd (eyeDirection _this vectorMultiply 1.5);
  if ((_currentWeapon == "") || (_currentWeapon == _secondaryWeapon) || (_disableByEditor)) exitWith {};


  private "_intersects";
  {
    _intersects = ([_building, _x] intersect [_beginPos, _endPos]);
    if (count (_intersects select 0) > 0) exitwith {_intersects;};
  } forEach ["VIEW", "GEOM", "FIRE"];


  if (count (_intersects select 0) > 0) then {
    switch (_currentWeapon) do {
    	case _primaryWeapon: {[_this, "FCLA_Animation_Kick_Door_Rifle", "SwitchMove"] call FCLA_Common_fnc_playAnimation;};
    	case _handgunWeapon: {[_this, "FCLA_Animation_Kick_Door_Pistol", "SwitchMove"] call FCLA_Common_fnc_playAnimation;};
    };

    sleep 0.5;
    _sourcePos = _building modelToWorld (_building selectionPosition ((_intersects select 0) select 0));
    _soundSource = createAgent ["VirtualAISquad", _sourcePos, [], 0, "CAN_COLLIDE"];
    _soundSource attachTo [_building];

    if (!(call FCLA_Common_fnc_isDoorLocked) || (_successRate <= FCLA_Kick_Door_Success_Rate)) then {
      _selectDoor = format ["%1_rot", ((_intersects select 0) select 0)];
      enableCamShake true;
      addCamShake [5, 1.5, 100];
      _building animate [_selectDoor, 1, 8];
      [_soundSource, "FCLA_Smash_Door", 1, 50, true] call FCLA_Common_fnc_globalSay3D;
    } else {
      enableCamShake true;
      addCamShake [2.5, 1, 100];
      [_soundSource, "FCLA_Kick_Door", 1, 50, true] call FCLA_Common_fnc_globalSay3D;
    };
  };
};
