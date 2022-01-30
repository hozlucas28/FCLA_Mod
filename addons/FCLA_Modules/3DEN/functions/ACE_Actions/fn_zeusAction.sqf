
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una acción ACE 3D para los Zeus.
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
if ((_name == "") || (_condition == "") || (_statement == "")) exitWith {["FCLA_Module_ACE_Zeus_Action", "• MÓDULO: CREAR ACCIÓN (ACE - ZEUS)", "¡Error! El/Un módulo 'Crear acción (ACE - Zeus)' no se pudo inicializar con éxito."] call FCLA_Common_fnc_errorMessage;};



//Pasar ruta de padres al formato correcto.
_parentPath = parseSimpleArray ([_parentPath, """", "'"] call CBA_fnc_replace);


//Crear y asociar acción.
["FCLA_Module_ACE_Zeus_Action", [
 [_module, _name, _icon, _statement, _condition],
 [_parentPath]
]] call CBA_fnc_globalEventJIP;


//Eliminar módulo.
deleteVehicle _module;
