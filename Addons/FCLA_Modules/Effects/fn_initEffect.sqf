
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_initEffect

Description:
		Redirecciona la llamada de la función, según el tipo de módulo.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module","_synchronizedUnits","_isActivated"];
if (!(_isActivated)) exitWith {};



_typeOfModule = typeOf _module;
switch (_typeOfModule) do {
  case "FCLA_Fireflies_Effect": {null = [_module] execVM "\FCLA_Modules\Effects\scripts\Firefly.sqf";};
  case "FCLA_Spark_Effect": {
                             _delaySended = _module getVariable "Effect_Delay";
                             null = [_module, _delaySended] execVM "\FCLA_Modules\Effects\scripts\Spark.sqf";
                            };
  case "FCLA_Suspended_Dust_Effect": {null = [_module] execVM "\FCLA_Modules\Effects\scripts\Suspended_Dust.sqf";};
  case "FCLA_Dust_Burst_Effect": {
                                  _onStart = _module getVariable "Effect_onStart";
                                  _delaySended = _module getVariable "Effect_Delay";
                                  null = [_module, _onStart, _delaySended] execVM "\FCLA_Modules\Effects\scripts\Dust_Burst.sqf";
                                 };
  case "FCLA_Dust_Whirlwinds_Effect": {
                                       _onStart = _module getVariable "Effect_onStart";
                                       _delaySended = _module getVariable "Effect_Delay";
                                       null = [_module, _onStart, _delaySended] execVM "\FCLA_Modules\Effects\scripts\Dust_Whirlwinds.sqf";
                                      };
  case "FCLA_Smoke_Signal_Effect": {
                                    _color = _module getVariable "Effect_Color";
                                    null = [_module, _color] execVM "\FCLA_Modules\Effects\scripts\Smoke_Signal.sqf";
                                   };
};
