
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea eventhandlers públicos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */



/* ------------------------- MOSTRAR NOTIFICACIÓN -------------------------- */

["FCLA_Notify", {
  params [
          ["_text", "", ["", []], []],
          ["_size", 1, [0], 0],
          ["_colorRGBA", [1, 1, 1, 1], [[]], [0, 1, 2, 3, 4, 5]]
         ];

  [[_text, _size, _colorRGBA], true] call CBA_fnc_Notify;
}] call CBA_fnc_addEventHandler;



/* ---------------------- GENERAR EFECTO DE CONMOCIÓN ---------------------- */

["FCLA_Shellshock", {
  _this spawn {
    if (_this getVariable ["FCLA_Shellshock_Initialized", false]) exitWith {};
    _this setVariable ["FCLA_Shellshock_Initialized", true, true];

    0 fadeSound 0.05;
    _randomWaveSound = selectRandom ["FCLA_Explosion_Wave_1", "FCLA_Explosion_Wave_2"];
    playSound _randomWaveSound;

    _randomShellShockSound = selectRandom ["FCLA_Shellshock_1", "FCLA_Shellshock_2"];
    playSound _randomShellShockSound;

    if (_randomShellShockSound == "FCLA_Shellshock_2") then {playSound "Combat_Deafness";};
    _randomScreamSound = selectRandom ["FCLA_Pain_1", "FCLA_Pain_2", "FCLA_Pain_3", "FCLA_Pain_4", "FCLA_Pain_5", "FCLA_Pain_6", "FCLA_Pain_7"];
    playSound _randomScreamSound;

    if (isNull objectParent _this) then {
      if (stance _this == "STAND") then {
        _randomAnimation = selectRandom ["AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDleft", "AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDright", "AmovPercMsprSlowWrflDf_AmovPpneMstpSrasWrflDnon"];
        [_this, _randomAnimation, "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;
      };

      if (stance _this == "CROUCH") then {
        _randomAnimation = selectRandom ["AmovPknlMstpSrasWrflDnon_AadjPpneMstpSrasWrflDleft", "AmovPknlMstpSrasWrflDnon_AadjPpneMstpSrasWrflDright", "AmovPercMsprSlowWrflDf_AmovPpneMstpSrasWrflDnon"];
        [_this, _randomAnimation, "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;
      };
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
}] call CBA_fnc_addEventHandler;
