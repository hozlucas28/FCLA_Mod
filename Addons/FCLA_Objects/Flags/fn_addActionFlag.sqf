
/* ----------------------------------------------------------------------------
Function: FCLA_Objects_fnc_addActionFlag

Description:
    Genera cinco addactions para interactuar con la bandera.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_flag"];
_flag setVariable ["Flag_animationEnd", true, true];



//Subir.
_flag addAction ["Subir Bandera", {
  params ["_target", "_caller", "_actionId", "_arguments"];
  _caller playActionNow "PutDown";
  [_target, 1] call BIS_fnc_animateFlag;
  [_target] spawn {
    (_this#0) setVariable ["Flag_animationEnd", false, true];
    waitUntil {flagAnimationPhase (_this#0) == 1};
    (_this#0) setVariable ["Flag_animationEnd", true, true];
  };
}, [], 1, true, false, "", "(_target getVariable 'Flag_animationEnd') && (flagAnimationPhase _target != 1) && (flagTexture _target != '')", 3];


//Media asta.
_flag addAction ["Bandera a Media Asta", {
  params ["_target", "_caller", "_actionId", "_arguments"];
  _caller playActionNow "PutDown";
  [_target, 0.5] call BIS_fnc_animateFlag;
  [_target] spawn {
    (_this#0) setVariable ["Flag_animationEnd", false, true];
    waitUntil {flagAnimationPhase (_this#0) == 0.5};
    (_this#0) setVariable ["Flag_animationEnd", true, true];
  };
}, [], 1, true, false, "", "(_target getVariable 'Flag_animationEnd') && (flagAnimationPhase _target != 0.5) && (flagTexture _target != '')", 3];


//Bajar.
_flag addAction ["Bajar bandera", {
  params ["_target", "_caller", "_actionId", "_arguments"];
  _caller playActionNow "PutDown";
  [_target, 0] call BIS_fnc_animateFlag;
  [_target] spawn {
    (_this#0) setVariable ["Flag_animationEnd", false, true];
    waitUntil {flagAnimationPhase (_this#0) == 0};
    (_this#0) setVariable ["Flag_animationEnd", true, true];
  };
}, [], 1, true, false, "", "(_target getVariable 'Flag_animationEnd') && (flagAnimationPhase _target != 0) && (flagTexture _target != '')", 3];


//Colocar.
_flag addAction ["Colocar Bandera", {
  params ["_target", "_caller", "_actionId", "_arguments"];
  _caller playActionNow "PutDown";

  if (isnil {_target getVariable "Original_Flag"}) then {
    _flagTexture = _caller getVariable "Assigned_Patche";
    switch (_flagTexture) do {
      case "Patch_Takana": {_target setFlagTexture "\FCLA_Objects\data\flags\Takana.paa";};
      case "Patch_Jaguar": {_target setFlagTexture "\FCLA_Objects\data\flags\Jaguar.paa";};
      case "Patch_Condor": {_target setFlagTexture "\FCLA_Objects\data\flags\Condor.paa";};
      case "Patch_Salamandra": {_target setFlagTexture "\FCLA_Objects\data\flags\Salamandra.paa";};
      case "Patch_Anaconda": {_target setFlagTexture "\FCLA_Objects\data\flags\Anaconda.paa";};
      case "Patch_Quetzal": {_target setFlagTexture "\FCLA_Objects\data\flags\Quetzal.paa";};
      default {_target setFlagTexture "\FCLA_Objects\data\flags\FCLA.paa";};
    };
  } else {
    _Originaltexture = _target getVariable "Original_Flag";
    _target setFlagTexture _Originaltexture;
  };
}, [], 1, true, false, "", "(flagAnimationPhase _target == 0) && (flagTexture _target == '')", 3];


//Quitar.
_flag addAction ["Quitar Bandera", {
  params ["_target", "_caller", "_actionId", "_arguments"];
  _FCLAFlags = ["FCLA_Flag_Common","FCLA_Flag_Takana","FCLA_Flag_Jaguar","FCLA_Flag_Condor","FCLA_Flag_Salamandra","FCLA_Flag_Anaconda","FCLA_Flag_Quetzal"];
  _caller playActionNow "PutDown";

  if (typeOf _target in _FCLAFlags) exitWith {
    _Originaltexture = flagTexture _target;
    _target setVariable ["Original_Flag", _Originaltexture, true];
    _target setFlagTexture "";
  };
  _target setFlagTexture "";
}, [], 1, true, false, "", "(flagAnimationPhase _target == 0) && (flagTexture _target != '')", 3];
