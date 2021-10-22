
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


  /* ------------------------ OCULTAR UNIDAD ------------------------ */

  _unit allowDamage false;
  _unit setCaptive true;
  [_unit, "inStairs"] call ACE_Common_fnc_hideUnit;
  _unit setDir _dir;
  _unit setPosATL _pos;
  _unit attachTo [_building];

  //Ocultar unidad al Zeus.
  _editableObjects = {curatorEditableObjects _x;} forEach allCurators;
  if (_unit in _editableObjects) then {
    _unit setVariable ["FCLA_Hide_Zeus_iconUnit", true, true];
    {_x removeCuratorEditableObjects [[_unit], true];} forEach allCurators;
  };


  /* ------------------------ MOSTRAR UNIDAD ------------------------ */

  sleep 12; //Tiempo para llegar.
  playSound "FCLA_Close_Door";
  _unit allowDamage true;
  _unit setCaptive false;
  [_unit, "inStairs"] call ACE_Common_fnc_unhideUnit;
  detach _unit;

  //Mostrar unidad al Zeus.
  if (_unit getVariable ["FCLA_Hide_Zeus_iconUnit", false]) then {
    _unit setVariable ["FCLA_Hide_Zeus_iconUnit", nil, true];
    {_x addCuratorEditableObjects [[_unit], true];} forEach allCurators;
  };

  _unit setVariable ["FCLA_inStairs", nil, true];
  cutText ["", "BLACK IN"];
};
