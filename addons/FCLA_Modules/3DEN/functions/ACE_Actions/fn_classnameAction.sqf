
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una acción ACE 3D para las entidades que tengan el mismo classname.
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
_associatedClassname = _module getVariable ["FCLA_Associated_Classname", ""];
_numberOfCompatibleSynchronizedObjects = {!(_x isKindOf "EmptyDetector")} count _synchronizedObjects;
if ((_name == "") || (_condition == "") || (_statement == "") || (_typeOfAction <= -1)) exitWith {["¡Error! El/Un módulo 'Crear acción (ACE - classname)' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Pasar ruta de padres y classnames asociadas al formato correcto.
_parentPath = parseSimpleArray ([_parentPath, """", "'"] call CBA_fnc_replace);
_findedEntity = _synchronizedObjects findIf {!(_x isKindOf "EmptyDetector")};
_associatedClassname = if ((_findedEntity > -1) && (_numberOfCompatibleSynchronizedObjects == 1)) then {typeOf (_synchronizedObjects select _findedEntity);} else {_associatedClassname;};


//Crear y asociar acción.
_actionCreated = [_name, _name, _icon, [_statement] call FCLA_Common_fnc_stringToCode, [_condition] call FCLA_Common_fnc_stringToCode, {}, [], {[0, 0, 0]}, 2, [false, false, false, false, false], {}] call ACE_Interact_Menu_fnc_createAction;
[_associatedClassname, _typeOfAction, _parentPath, _actionCreated, false] call ACE_Interact_Menu_fnc_addActionToClass;


//Eliminar módulo.
deleteVehicle _module;
