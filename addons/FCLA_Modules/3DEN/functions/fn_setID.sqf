
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
_areNotCompatibleSynchronizedObjects = ({_x isKindOf "CAManBase"} count _synchronizedObjects) <= 0;
if (!FCLA_ID_Card_Allowed) then {["FCLA_Module_ID", "• MÓDULO: MODIFICAR ID", "¡Las identificaciones se encuentran desactivadas por medio del addon option: FCLA Interacciones!"] spawn FCLA_Modules_fnc_reportError3DEN;};
if ((_newAge == "") || (_newName == "") || (_newPlaceOfBirth == "") || (_areNotCompatibleSynchronizedObjects)) exitWith {};



//Modificar identificación.
{
  _isNotKindOfUnit = !(_x isKindOf "CAManBase");
  if (_isNotKindOfUnit) exitWith {};
  _x setVariable ["FCLA_ID", [_newName, _newAge, _newPlaceOfBirth], true];
  if (_EODState) then {_x setVariable ["ACE_isEOD", true, true];} else {_x setVariable ["ACE_isEOD", nil, true];};
  if (_doctorState) then {_x setVariable ["ACE_Medical_medicClass", 2, true];} else {_x setVariable ["ACE_Medical_medicClass", nil, true];};
  if (_advancedEnginnerState) then {_x setVariable ["ACE_isEngineer", 2, true];} else {_x setVariable ["ACE_isEngineer", nil, true];};
} forEach _synchronizedObjects;


//Eliminar módulo.
deleteVehicle _module;
