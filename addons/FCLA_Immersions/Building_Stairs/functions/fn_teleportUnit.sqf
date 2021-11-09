
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Teletransporta a la unidad a la azotea/techo ó planta baja del edificio,
 * según sea el caso.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_this spawn {
  params ["_unit", "_building", "_pos", "_dir", "_state"];
  if (_unit getVariable ["FCLA_inStairs", false]) exitWith {};
  _unit setVariable ["FCLA_inStairs", true, true];


  //Reproducir animación y mostrar mensaje.
  playSound "FCLA_Open_Door";
  [_state] spawn FCLA_Immersions_fnc_showMessageBS;
  [_unit, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;


  //Ocultar unidad.
  [{
    params ["_unit", "_building", "_pos", "_dir"];
    _unit setDir _dir;
    _unit setPosATL _pos;
    _unit setCaptive true;
    _unit allowDamage false;
    _unit attachTo [_building];
    [_unit, []] call ACE_Common_fnc_hideUnit;
    [true] call ACE_Common_fnc_disableUserInput;
  }, [_unit, _building, _pos, _dir], 1] call CBA_fnc_waitAndExecute;


  //Mostrar unidad.
  sleep 12;
  detach _unit;
  _unit allowDamage true;
  _unit setCaptive false;
  cutText ["", "BLACK IN"];
  playSound "FCLA_Close_Door";
  [_unit, []] call ACE_Common_fnc_unhideUnit;
  [false] call ACE_Common_fnc_disableUserInput;
  _unit setVariable ["FCLA_inStairs", nil, true];
};
