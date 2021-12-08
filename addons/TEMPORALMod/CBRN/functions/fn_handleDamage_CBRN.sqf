
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_handleDamage_CBRN

Description:
		Aplica daño al jugador según el nivel de amenaza en la zona.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_threadLevel", "_delta"];
if (!(isDamageAllowed _unit)) exitWith {};



//Variables locales.
_actualThreat = _threadLevel;
_curDamage = _unit getVariable ["FCLA_CBRN_Damage", 0];
_maxDamage = FCLA_CBRN_Maximum_Damage;

if (((_curDamage / _maxDamage) > 0.5) && !(_unit getVariable ["FCLA_CBRN_autoDamage", false])) then {
  _unit setVariable ["FCLA_CBRN_autoDamage", true];
  ["FCLA_Hint_Silent", [parseText "<t color='#FF0000'>¡La contaminación de tu cuerpo ha llegado a unos niveles muy elevados!</t><br/>Encuentra una ducha descontaminante para librarte del exceso de contaminación."], _unit] call CBA_fnc_targetEvent;

  [{
    params ["_args", "_idPFH"];
    _args params ["_unit"];
    if (!(alive _unit) || {_unit getVariable ["FCLA_CBRN_Enable_Damage", false]}) exitWith {[_idPFH] call CBA_fnc_removePerFrameHandler;};
    _newDamage = ((_unit getVariable ["FCLA_CBRN_Damage", 0]) + 0.0277777777777777) min 100;
    _unit setVariable ["FCLA_CBRN_Damage", _newDamage];
    if (_newDamage >= 100) then {_unit setDamage 1;};
  }, 1, [_unit]] call CBA_fnc_addPerFrameHandler;
};


//Equipamiento necesario según nivel de amenaza.
if (_threadLevel >= 1) then { _actualThreat = _actualThreat - ([0, 1] select (_unit getVariable ["FCLA_CBRN_APR_On", false]));};
if (_threadLevel >= 2) then {_actualThreat = _actualThreat - ([0, 1] select (_unit getVariable ["FCLA_Backpack_Oxygen_Status", false]));};
if (_threadLevel >= 3) then {_actualThreat = _actualThreat - ([0,1] select (_unit getVariable ["FCLA_CBRN_hasUniform", false]));};

_actualThreat = _actualThreat max 0;
if (_actualThreat < 1) exitWith {
  FCLA_CBRN_maskDamage ppEffectAdjust [0, 0, true];
  FCLA_CBRN_maskDamage ppEffectCommit 5;
};


_effectStrength = _actualThreat / 5;
_curDamage = _curDamage + (_actualThreat * _delta);
_unit setVariable ["FCLA_CBRN_Damage", _curDamage];

if ((alive _unit) && (_curDamage > _maxDamage)) exitWith {_unit setDamage 1;};
FCLA_CBRN_maskDamage ppEffectAdjust [_effectStrength, _effectStrength, true];
FCLA_CBRN_maskDamage ppEffectCommit 5;

if (CBA_missionTime > (_unit getVariable ["FCLA_CBRN_nextCough", -1])) then {
  _unit setVariable ["FCLA_CBRN_nextCough", CBA_missionTime + (20 / _threadLevel)];
  _unit setVariable ["FCLA_CBRN_Damage", _curDamage, true];
};

_pain = _unit getVariable ["ace_medical_pain", 0];
if (_pain < 1) then {[_unit, 0.05 * _delta] call ace_medical_fnc_adjustPainLevel;};
