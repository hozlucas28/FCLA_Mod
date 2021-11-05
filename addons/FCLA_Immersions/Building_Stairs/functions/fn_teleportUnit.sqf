
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
  params ["_unit", "_building", "_pos", "_dir", "_stairs"];
  if (_unit getVariable ["FCLA_inStairs", false]) exitWith {};
  _unit setVariable ["FCLA_inStairs", true, true];


  //Reproducir animación y mostrar mensaje.
  playSound "FCLA_Open_Door";
  [_stairs] spawn FCLA_Immersions_fnc_showMessageBS;
  [_unit, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;

  //Ocultar unidad.
  _unit setDir _dir;
  _unit setPosATL _pos;
  _unit setCaptive true;
  _unit allowDamage false;
  _unit attachTo [_building];
  [_unit, []] call ACE_Common_fnc_hideUnit;

  //Mostrar unidad.
  sleep 12;
  detach _unit;
  _unit allowDamage true;
  _unit setCaptive false;
  cutText ["", "BLACK IN"];
  playSound "FCLA_Close_Door";
  _unit setVariable ["FCLA_inStairs", nil, true];
  [_unit, "inStairs"] call ACE_Common_fnc_unhideUnit;
};