
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una acción ACE 3D para una entidad específica.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_name = _module getVariable ["FCLA_Name", ""];
_icon = _module getVariable ["FCLA_Icon", ""];
_condition = _module getVariable ["FCLA_Condition", ""];
_statement = _module getVariable ["FCLA_Statement", ""];
_parentPath = _module getVariable ["FCLA_Parent_Path", []];
_typeOfAction = _module getVariable ["FCLA_Type_Of_Action", -1];
_associatedObject = _module getVariable ["FCLA_Associated_Object", ""];
_compatibleSynchronizedObjects = _synchronizedObjects select {!(_x isKindOf "EmptyDetector")};
_numberOfCompatibleSynchronizedObjects = count _compatibleSynchronizedObjects;
if ((_name == "") || (_condition == "") || (_statement == "") || (_typeOfAction <= -1) || ((_associatedObject == "") && (_numberOfCompatibleSynchronizedObjects <= 0))) exitWith {["FCLA_Module_ACE_Object_Action", "• MÓDULO: CREAR ACCIÓN (ACE - OBJETO)", "¡Error! El/Un módulo 'Crear acción (ACE - objeto)' no se pudo inicializar con éxito."] call FCLA_Common_fnc_errorMessage;};



//Pasar ruta de padres y classnames asociadas al formato correcto.
_parentPath = parseSimpleArray ([_parentPath, """", "'"] call CBA_fnc_replace);
_findedEntity = if (_associatedObject == "") then {0;} else {-1;};
_associatedObject = if ((_findedEntity > -1) && (_numberOfCompatibleSynchronizedObjects == 1)) then {_compatibleSynchronizedObjects select _findedEntity;} else {call compile format ["%1", _associatedObject];};


//Crear y asociar acción.
["FCLA_ACE_Object_Action", [
 [_name, _icon, _statement, _condition],
 [_associatedObject, _typeOfAction, _parentPath]
]] call CBA_fnc_globalEventJIP;


//Eliminar módulo.
deleteVehicle _module;
