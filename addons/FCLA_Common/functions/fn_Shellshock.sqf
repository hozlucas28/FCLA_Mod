
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un efecto de conmocion en la unidad, enviada como argumento.
 *
 * Argument:
 *            0: Unidad a la que se le aplicara el efecto. <UNIT>
 *            1: ¿Provocar caida de la unidad?, opcional. <BOOL> (default: true)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la funcion? <BOOL>
 *
 * Example:
 *             //La unidad se caera.
 *             [player] call FCLA_Common_fnc_Shellshock;
 *
 *             //La unidad no se caera.
 *             [player, false] call FCLA_Common_fnc_Shellshock;
 *
 * Note:
 * Se recomienda utilizar esta funcion a travez del evento
 * personalizado "FCLA_Shellshock".
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_unit", objNull, [objNull, teamMemberNull], 0],
        ["_fallDown", true, [true], 0]
       ];



//Verificar argumento.
_isShellshockInitialized = _unit getVariable ["FCLA_Shellshock_Initialized", false];
if ((isNull _unit) || (_isShellshockInitialized)) exitWith {false};



[_unit, _fallDown] spawn {
  params ["_unit", "_fallDown"];
  _stance = stance _unit;
  _unit setVariable ["FCLA_Shellshock_Initialized", true, true];

  if (_fallDown) then {
    if (_stance == "STAND") then {
      _randomAnimation = selectRandom ["AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDleft", "AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDright", "AmovPercMsprSlowWrflDf_AmovPpneMstpSrasWrflDnon"];
      [_unit, _randomAnimation, "SwitchMove"] call FCLA_Common_fnc_playAnimation;
    };

    if (_stance == "CROUCH") then {
      _randomAnimation = selectRandom ["AmovPknlMstpSrasWrflDnon_AadjPpneMstpSrasWrflDleft", "AmovPknlMstpSrasWrflDnon_AadjPpneMstpSrasWrflDright", "AmovPercMsprSlowWrflDf_AmovPpneMstpSrasWrflDnon"];
      [_unit, _randomAnimation, "SwitchMove"] call FCLA_Common_fnc_playAnimation;
    };
  };

  0 fadeSound 0.05;
  _randomWaveSound = selectRandom ["FCLA_Explosion_Wave_1", "FCLA_Explosion_Wave_2"];
  playSound _randomWaveSound;

  _randomShellShockSound = selectRandom ["FCLA_Shellshock_1", "FCLA_Shellshock_2"];
  if (_randomShellShockSound == "FCLA_Shellshock_2") then {playSound "Combat_Deafness";};
  playSound _randomShellShockSound;

  _randomScreamSound = selectRandom ["FCLA_Pain_1", "FCLA_Pain_2", "FCLA_Pain_3", "FCLA_Pain_4", "FCLA_Pain_5", "FCLA_Pain_6", "FCLA_Pain_7"];
  playSound _randomScreamSound;

  addCamShake [2, 5, 20];
  _blur = ppEffectCreate ["DynamicBlur", 474];
  _blur ppEffectEnable true;
  _blur ppEffectAdjust [0];
  _blur ppEffectCommit 0;

  waitUntil {ppEffectCommitted _blur};
  _blur ppEffectAdjust [10];
  _blur ppEffectCommit 0;

  titleCut ["", "WHITE IN", 5];
  _blur ppEffectAdjust [0];
  _blur ppEffectCommit 5;

  waitUntil {ppEffectCommitted _blur};
  _blur ppEffectEnable false;
  ppEffectDestroy _blur;
  3 fadeSound 1;
  _unit setVariable ["FCLA_Shellshock_Initialized", nil, true];
};
true
