
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
_assignedEntity = _module getVariable ["FCLA_Assigned_Entity", objNull];
_assignedCurator = _module getVariable ["FCLA_Assigned_Curator", objNull];
_forceDeactivation = _module getVariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (_synchronizedObjects isEqualTo []) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Verificar argumentos.
_typeOfInjury = _module getVariable ["FCLA_Type_Of_Injury", ""];
_levelOfInjury = [_module getVariable ["FCLA_Level_Of_Injury", 0], 2] call BIS_fnc_cutDecimals;
_fractureLeftArm = if (_module getVariable ["FCLA_Fracture_Left_Arm", false]) then {1;} else {0;};
_fractureLeftLeg = if (_module getVariable ["FCLA_Fracture_Left_Leg", false]) then {1;} else {0;};
_fractureRightArm = if (_module getVariable ["FCLA_Fracture_Right_Arm", false]) then {1;} else {0;};
_fractureRightLeg = if (_module getVariable ["FCLA_Fracture_Right_Leg", false]) then {1;} else {0;};
_forceUnconsciousness = _module getVariable ["FCLA_Force_Unconsciousness", false];
_areNotCompatibleSynchronizedObjects = ({_x in allUnits} count _synchronizedObjects) <= 0;
if ((_typeOfInjury == "") || (_levelOfInjury <= 0) || (_areNotCompatibleSynchronizedObjects)) exitWith {["¡Error! El/Un módulo 'Provocar lesiones (ACE)' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Provocar lesiones.
{
  if (!(isObjectHidden _x) && (isDamageAllowed _x) && (_x in allUnits) && !(_x isKindOf "EmptyDetector")) then {
    ["FCLA_Common_Execute", [ACE_Medical_fnc_addDamageToUnit, [_x, _levelOfInjury, selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"], _typeOfInjury, objNull, [], true]], _x] call CBA_fnc_targetEvent;
    _x setVariable ["ACE_Medical_Fractures", [0, 0, _fractureLeftArm, _fractureRightArm, _fractureLeftLeg, _fractureRightLeg], true];
    [_x, _forceUnconsciousness] call ACE_Medical_fnc_setUnconscious;
    ["FCLA_Common_Execute", [ACE_Medical_Engine_fnc_updateDamageEffects, [_x]], _x] call CBA_fnc_targetEvent;
  };
} forEach _synchronizedObjects;


//Eliminar módulo.
deleteVehicle _module;
