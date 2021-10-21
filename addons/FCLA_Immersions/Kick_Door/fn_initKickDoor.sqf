
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 * 
 * Description:
 * Permite abrir una puerta cerrada a patadas, si el addon
 * option '¿Permitir patadas?' es activado, y el porcentaje de
 * éxito de la misma es definida en 'Probabilidad de éxito (patadas)'.
 * 
 * Public: [No]
---------------------------------------------------------------------------- */

_this spawn {
  params ["_unit"];
  _pos = getPos _unit;
  _stance = stance _unit;
  _building = cursorObject;
  _successRate = [0, 100] call BIS_fnc_randomInt;
  _currentWeapon = currentWeapon _unit;
  _primaryWeapon = primaryWeapon _unit;
  _handgunWeapon = handgunWeapon _unit;
  _secondaryWeapon = secondaryWeapon _unit;
  _disableByEditor = _building getVariable ["FCLA_Disable_Kick_Door", false];
  _beginPos = ASLtoATL eyepos _unit;
  _endPos = _beginPos vectorAdd (eyeDirection _unit vectorMultiply 1.5);
  if ((_stance != "STAND") || (_currentWeapon == "") || (_currentWeapon == _secondaryWeapon) || (_disableByEditor)) exitWith {};


  private "_intersects";
  {
    _intersects = ([_building, _x] intersect [_beginPos, _endPos]);
    if (count (_intersects select 0) > 0) exitwith {_intersects}
  } forEach  ["VIEW", "GEOM", "FIRE"];


  if (count (_intersects select 0) > 0) then {
    switch (_currentWeapon) do {
    	case _primaryWeapon: {
        [_unit, "FCLA_Animation_Kick_Door_Rifle", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;
        _unit setVariable ["FCLA_Playing_Animation", true, true];
      };

    	case _handgunWeapon: {
        [_unit, "FCLA_Animation_Kick_Door_Pistol", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;
        _unit setVariable ["FCLA_Playing_Animation", true, true];
      };
    };

    sleep 0.5;
    if (!([_unit] call FCLA_Development_fnc_isDoorLocked) || (_successRate <= FCLA_Kick_Door_Success_Rate)) then {
      _selectDoor = format ["%1_rot", ((_intersects select 0) select 0)];
      _soundSource = _building modelToWorld (_building selectionPosition ((_intersects select 0) select 0));
      enableCamShake true;
      addCamShake [5, 1.5, 100];
      _building animate [_selectDoor, 1, 8];
      [_soundSource, "FCLA_Smash_Door", 1, false] spawn FCLA_Common_fnc_globalSay3D;
    } else {
      _soundSource = _building modelToWorld (_building selectionPosition ((_intersects select 0) select 0));
      enableCamShake true;
      addCamShake [2.5, 1, 100];
      [_soundSource, "FCLA_Kick_Door", 1, false] spawn FCLA_Common_fnc_globalSay3D;
    };
  };

  sleep 1;
  _unit setVariable ["FCLA_Playing_Animation", nil, true];
};
