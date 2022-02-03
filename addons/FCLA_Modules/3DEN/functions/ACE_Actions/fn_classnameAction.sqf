
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una accion ACE 3D para las entidades que tengan el mismo classname.
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
_associatedClassname = _module getVariable ["FCLA_Associated_Classname", ""];
_compatibleSynchronizedObjects = _synchronizedObjects select {!(_x isKindOf "EmptyDetector")};
_numberOfCompatibleSynchronizedObjects = count _compatibleSynchronizedObjects;
if ((_name == "") || (_condition == "") || (_statement == "") || (_typeOfAction <= -1) || ((_associatedClassname == "") && (_numberOfCompatibleSynchronizedObjects <= 0))) exitWith {["FCLA_Module_ACE_Class_Action", "- MODULO: CREAR ACCION (ACE - CLASSNAME)", "¡Error! El/Un modulo 'Crear accion (ACE - classname)' no se pudo inicializar con exito."] call FCLA_Common_fnc_errorMessage;};



//Pasar ruta de padres y classnames asociadas al formato correcto.
_parentPath = parseSimpleArray ([_parentPath, """", "'"] call CBA_fnc_replace);
_findedEntity = if (_associatedClassname == "") then {0;} else {-1;};
_associatedClassname = if ((_findedEntity > -1) && (_numberOfCompatibleSynchronizedObjects == 1)) then {typeOf (_compatibleSynchronizedObjects select _findedEntity);} else {_associatedClassname;};


//Crear y asociar accion.
["FCLA_Module_ACE_Classname_Action", [
 [_module, _name, _icon, _statement, _condition],
 [_associatedClassname, _typeOfAction, _parentPath]
]] call CBA_fnc_globalEventJIP;


//Eliminar modulo.
deleteVehicle _module;
