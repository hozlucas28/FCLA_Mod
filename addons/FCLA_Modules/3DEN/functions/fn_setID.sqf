
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica las identificaciones de las unidades.
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
_newAge = _module getVariable ["FCLA_New_Age", ""];
_newName = _module getVariable ["FCLA_New_Name", ""];
_newPlaceOfBirth = _module getVariable ["FCLA_New_Place_Of_Birth", ""];
_EODState = _module getVariable ["FCLA_EOD_State", false];
_doctorState = _module getVariable ["FCLA_Doctor_State", false];
_advancedEnginnerState = _module getVariable ["FCLA_Advanced_Enginner_State", false];
_compatibleSynchronizedObjects = _synchronizedObjects select {_x in allUnits};
if ((_newAge == "") || (_newName == "") || (_newPlaceOfBirth == "") || ((count _compatibleSynchronizedObjects) <= 0)) exitWith {["FCLA_Module_ID", "• MÓDULO: MODIFICAR ID", "¡Error! El/Un módulo 'Modificar ID' no se pudo inicializar con éxito."] call FCLA_Common_fnc_errorMessage;};



//Modificar identificación.
{
  _dogTag = [_x] call ACE_dogTags_fnc_getDogTagData;
  _x setName _newName;
  _x setVariable ["FCLA_ID", [_newName, _newAge, _newPlaceOfBirth], true];
  _x setVariable ["ACE_dogTags_dogTagData", [_newName, _dogTag select 1, _dogTag select 2], true];
  if (_EODState) then {_x setVariable ["ACE_isEOD", true, true];} else {_x setVariable ["ACE_isEOD", nil, true];};
  if (_doctorState) then {_x setVariable ["ACE_Medical_medicClass", 2, true];} else {_x setVariable ["ACE_Medical_medicClass", nil, true];};
  if (_advancedEnginnerState) then {_x setVariable ["ACE_isEngineer", 2, true];} else {_x setVariable ["ACE_isEngineer", nil, true];};
} forEach _compatibleSynchronizedObjects;


//Eliminar módulo.
deleteVehicle _module;
