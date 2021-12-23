
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
_forceDeactivation = _module getvariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Verificar argumentos.
_name = _module getVariable ["FCLA_Name", ""];
_icon = _module getVariable ["FCLA_Icon", ""];
_condition = _module getVariable ["FCLA_Condition", ""];
_statement = _module getVariable ["FCLA_Statement", ""];
_parentPath = _module getVariable ["FCLA_Parent_Path", []];
_typeOfAction = _module getVariable ["FCLA_Type_Of_Action", -1];
_associatedObject = _module getVariable ["FCLA_Associated_Object", objNull];
_numberOfCompatibleSynchronizedObjects = {!(_x isKindOf "EmptyDetector")} count _synchronizedObjects;
if ((_name == "") || (_condition == "") || (_statement == "") || (_parentPath == "") || (_typeOfAction <= -1)) exitWith {["¡Error! El/Un módulo 'Crear acción (ACE - objeto)' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Pasar ruta de padres y classnames asociadas al formato correcto.
_parentPath = [_parentPath, """", "'"] call CBA_fnc_replace;
_parentPath = parseSimpleArray _parentPath;
_findedEntity = _synchronizedObjects findIf {!(_x isKindOf "EmptyDetector")};
_associatedObject = if ((_findedEntity > -1) && (_numberOfCompatibleSynchronizedObjects == 1)) then {_synchronizedObjects select _findedEntity;} else {call compile format ["%1", _associatedObject];};


//Crear y asociar acción.
_actionCreated = [_name, _name, _icon, [_statement] call FCLA_Common_fnc_stringToCode, [_condition] call FCLA_Common_fnc_stringToCode, {}, [], {[0, 0, 0]}, 2, [false, false, false, false, false], {}] call ACE_Interact_Menu_fnc_createAction;
[_associatedObject, _typeOfAction, _parentPath, _actionCreated] call ACE_Interact_menu_fnc_addActionToObject;


//Eliminar módulo.
deleteVehicle _module;
