
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra el arbol genealógico de la entidad, enviada como argumento.
 *
 * Arguments:
 *            0: Classname de la entidad. <STRING>
 *            1: Tipo de Cfg donde se buscara a la entidad. <STRING>
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 * ["B_Soldier_F", "CfgVehicles"] call FCLA_Common_fnc_showParentTree;
 *
 * Note:
 * Si el classname de la entidad no existe ó si el tipo de Cfg es incorrecto
 * el valor retornado sera un "false".
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_classnameOfEntity", "", [""], 0],
				["_typeOfCfg", "", [""], 0]
       ];



//Verificar argumentos.
disableSerialization;
_configOfClassname = (configFile >> _typeOfCfg >> _classnameOfEntity);
_classnameNotExist = !(isClass _configOfClassname);
if (_classnameNotExist) exitWith {false};


//Definir arbol.
_parents = [];
while {!isNull _configOfClassname} do {
	_parents pushBack (configName _configOfClassname);
	_configOfClassname = inheritsFrom _configOfClassname;
};
reverse _parents;


//Definir dialogo del arbol.
_tv = (findDisplay 46) createDisplay "RscDisplayEmpty" ctrlCreate ["RscTree", -1];
_tv ctrlSetPosition [0, 0, 1, 1];
_tv ctrlSetBackgroundColor [0, 0, 0, 0.5];
_tv ctrlCommit 0;


//Mostrar arbol.
_path = [];
{
	_tv tvAdd [_path, _x];
	_path pushBack 0;
} forEach _parents;
tvExpandAll _tv;
true
