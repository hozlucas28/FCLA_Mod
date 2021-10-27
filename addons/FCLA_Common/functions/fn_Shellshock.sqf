
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un efecto de conmoción en la unidad, enviada como argumento.
 *
 * Argument:
 *            0: Unidad a la que se le aplicara el efecto. <UNIT>
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Examples:
 * [player] call FCLA_Common_fnc_Shellshock;
 *
 * Note:
 * Se recomienda utilizar esta función a travez del evento
 * personalizado "FCLA_Shellshock".
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_unit", objNull, [objNull, teamMemberNull], 0]];



//Verificar argumento.
_isShellshockInitialized = _unit getVariable ["FCLA_Shellshock_Initialized", false];
if ((isNull _unit) || (_isShellshockInitialized)) exitWith {false};



_this spawn {
  _this setVariable ["FCLA_Shellshock_Initialized", true, true];

  0 fadeSound 0.05;
  _randomWaveSound = selectRandom ["FCLA_Explosion_Wave_1", "FCLA_Explosion_Wave_2"];
  playSound _randomWaveSound;

  _randomShellShockSound = selectRandom ["FCLA_Shellshock_1", "FCLA_Shellshock_2"];
  if (_randomShellShockSound == "FCLA_Shellshock_2") then {playSound "Combat_Deafness";};
  playSound _randomShellShockSound;

  _randomScreamSound = selectRandom ["FCLA_Pain_1", "FCLA_Pain_2", "FCLA_Pain_3", "FCLA_Pain_4", "FCLA_Pain_5", "FCLA_Pain_6", "FCLA_Pain_7"];
  playSound _randomScreamSound;

  if ((stance _this) == "STAND") then {
    _randomAnimation = selectRandom ["AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDleft", "AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDright", "AmovPercMsprSlowWrflDf_AmovPpneMstpSrasWrflDnon"];
    [_this select 0, _randomAnimation, "SwitchMove"] call FCLA_Common_fnc_playAnimation;
  };

  if ((stance _this) == "CROUCH") then {
    _randomAnimation = selectRandom ["AmovPknlMstpSrasWrflDnon_AadjPpneMstpSrasWrflDleft", "AmovPknlMstpSrasWrflDnon_AadjPpneMstpSrasWrflDright", "AmovPercMsprSlowWrflDf_AmovPpneMstpSrasWrflDnon"];
    [_this select 0, _randomAnimation, "SwitchMove"] call FCLA_Common_fnc_playAnimation;
  };

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
  _this setVariable ["FCLA_Shellshock_Initialized", nil, true];
};
true
