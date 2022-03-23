
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Provoca lesiones a las unidades.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (_synchronizedObjects isEqualTo []) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_typeOfInjury = _module getVariable ["FCLA_Type_Of_Injury", ""];
_pneumothorax = _module getVariable ["FCLA_Pneumothorax", false];
_levelOfInjury = [_module getVariable ["FCLA_Level_Of_Injury", 0], 2] call BIS_fnc_cutDecimals;
_airwayOccluded = _module getVariable ["FCLA_Airway_Occluded", false];
_fractureLeftArm = if (_module getVariable ["FCLA_Fracture_Left_Arm", false]) then {1;} else {0;};
_fractureLeftLeg = if (_module getVariable ["FCLA_Fracture_Left_Leg", false]) then {1;} else {0;};
_fractureRightArm = if (_module getVariable ["FCLA_Fracture_Right_Arm", false]) then {1;} else {0;};
_fractureRightLeg = if (_module getVariable ["FCLA_Fracture_Right_Leg", false]) then {1;} else {0;};
_hemopneumothorax = _module getVariable ["FCLA_Hemopneumothorax", false];
_airwayObstruction = _module getVariable ["FCLA_Airway_Obstruction", false];
_tensionPneumothorax = _module getVariable ["FCLA_Tension_Pneumothorax", false];
_forceUnconsciousness = _module getVariable ["FCLA_Force_Unconsciousness", false];
_compatibleSynchronizedObjects = _synchronizedObjects select {_x in allUnits};
if ((_typeOfInjury == "") || (_levelOfInjury <= 0) || ((count _compatibleSynchronizedObjects) <= 0)) exitWith {["FCLA_Module_Create_Injuries", "- MODULO: PROVOCAR LESIONES (ACE)", "¡Error! El/Un modulo 'Provocar lesiones (ACE)' no se pudo inicializar con exito."] call FCLA_Common_fnc_errorMessage;};



//Provocar lesiones.
{
  if (!(isObjectHidden _x) && (isDamageAllowed _x)) then {
    _x setVariable ["ACE_Medical_AI_lastFired", 9999999, true];
    [_x, _forceUnconsciousness] call ACE_Medical_fnc_setUnconscious;
    _x setVariable ["KAT_airWay_Obstruction", _airwayObstruction, true];
    _x setVariable ["KAT_medical_airwayOccluded", _airwayOccluded, true];
    _x setVariable ["ACE_Medical_Fractures", [0, 0, _fractureLeftArm, _fractureRightArm, _fractureLeftLeg, _fractureRightLeg], true];
    if (_typeOfInjury != "none") then {["FCLA_Common_Execute", [ACE_Medical_fnc_addDamageToUnit, [_x, _levelOfInjury, selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"], _typeOfInjury, objNull, [], true], false], _x] call CBA_fnc_targetEvent;};

    if (_pneumothorax) then {
      [_x, 0.5] call Ace_Medical_Status_fnc_adjustPainLevel;
      [_x] call KAT_Breathing_fnc_handleBreathing;
      _x setVariable ["KAT_medical_Pneumothorax", _pneumothorax, true];
    };

    if (_hemopneumothorax) then {
      [_x, 0.7] call Ace_Medical_Status_fnc_adjustPainLevel;
      [_x] call KAT_Breathing_fnc_handleBreathing;
      _x setVariable ["KAT_Medical_Hemopneumothorax", _hemopneumothorax, true];
    };

    if (_tensionPneumothorax) then {
      [_x, 0.7] call Ace_Medical_Status_fnc_adjustPainLevel;
      [_x] call KAT_Breathing_fnc_handleBreathing;
      _x setVariable ["KAT_Medical_Tensionpneumothorax", _tensionPneumothorax, true];
    };

    ["FCLA_Common_Execute", [ACE_Medical_Engine_fnc_updateDamageEffects, [_x], false]] call CBA_fnc_globalEvent;
  };
} forEach _compatibleSynchronizedObjects;


//Eliminar modulo.
deleteVehicle _module;
