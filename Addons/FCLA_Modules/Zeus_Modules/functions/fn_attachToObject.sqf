
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_attachToObject

Description:
    Genera 2 acciones 3D, disponibles mediante el Zeus al hacer click derecho
    sobre una unidad ó vehículo, que permiten pegarse al objeto ó despegarse del mismo.
    Solo estaran disponibles si el mod Zeus enhanced esta cargado.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Comprobar si mod 'Zeus Enhanced' esta cargado.
if (!(isClass (configFile >> "CfgPatches" >> "zen_main"))) exitWith {diag_log "FCLA_Core - Mod 'Zeus Enhanced' no cargado ó no reconocido. Modulos zeus desactivados.";};



//Pegarse al objeto.
_actionAttachTo = [
 "FCLA",
 "Pegarse",
 "\a3\modules_f\data\portraitmodule_ca.paa",
 {
   params ["_position", "_objects", "_groups", "_waypoints", "_markers", "_hoveredEntity", "_args"];
   player attachTo [(_objects select 0), [0, 0, 0]];
   player hideObjectGlobal true;
   player setCaptive true;
   ["Pegado con éxito."] call zen_common_fnc_showMessage;
 },
 {
   params ["_position", "_objects", "_groups", "_waypoints", "_markers", "_hoveredEntity", "_args"];
   _countVector = count _objects;
   (_objects select 0 != player) && (_countVector == 1) && !(player in attachedObjects (_objects select 0)) && (("CAManBase" countType _objects == 1) || ("Air" countType _objects == 1) || ("Land" countType _objects == 1) || ("Ship" countType _objects == 1));
 }
] call zen_context_menu_fnc_createAction;
[_actionAttachTo, [], 20] call zen_context_menu_fnc_addAction;


//Despegarse del objeto.
_actionDetach = [
 "FCLA",
 "Despegarse",
 "\a3\modules_f\data\portraitmodule_ca.paa",
 {
   params ["_position", "_objects", "_groups", "_waypoints", "_markers", "_hoveredEntity", "_args"];
   detach player;
   ["Despegado con éxito."] call zen_common_fnc_showMessage;
 },
 {
   params ["_position", "_objects", "_groups", "_waypoints", "_markers", "_hoveredEntity", "_args"];
   _countVector = count _objects;
   !(isNull attachedTo player) && (_countVector == 1) && ((_objects select 0 == player) || (player in attachedObjects (_objects select 0)));
 }
] call zen_context_menu_fnc_createAction;
[_actionDetach, [], 20] call zen_context_menu_fnc_addAction;
