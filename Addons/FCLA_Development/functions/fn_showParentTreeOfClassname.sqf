
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_showParentTreeOfClassname

Description:
    Mostrara un panel desplegable con la genealogía del classname, según el
		tipo de Cfg enviado como parámetro.

Parameters:
    _classname - Classname del objeto que se quiere buscar.
    _typeOfCfg - Tipo de Cfg en donde se buscara el classname.

Examples:
    ["B_Soldier_F", "CfgVehicles"] call FCLA_Development_fnc_printParentTreeOfClassname;

Note:
    Esta función no mostrara nada si el mod "Advanced Dveloper Tools" esta cargado.

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [["_classname", typeOf (call CBA_fnc_currentUnit)], ["_typeOfCfg", "CfgVehicles"]];
_config = (configFile >> _typeOfCfg >> _classname);
_isAdvancedDeveloperToolsModLoaded = ["DEV_TOOLS"] call ACE_Common_fnc_isModLoaded;
if ((!isClass _config) || (_isAdvancedDeveloperToolsModLoaded)) exitWith {false};



disableSerialization;
private _tv = findDisplay 46 createDisplay "RscDisplayEmpty" ctrlCreate ["RscTree", -1];
private _path = [];
private _parents = [];

while {!isNull _config} do {
	_parents pushBack configName _config;
	_config = inheritsFrom _config;
};

reverse _parents;
_tv ctrlSetPosition [0,0,1,1];
_tv ctrlSetBackgroundColor [0,0,0,0.5];
_tv ctrlCommit 0;

{
	_tv tvAdd [_path, _x];
	_path pushBack 0;
}	forEach _parents;
tvExpandAll _tv;
