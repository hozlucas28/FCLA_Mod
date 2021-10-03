
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_giveAccessToCamera

Description:
    Genera un módulo zeus que permite colocarlo arriba de un jugador y dar/quitar
    acceso al modo cámara. Solo estara disponible si el mod Zeus enhanced esta cargado.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Comprobar si mod 'Zeus Enhanced' esta cargado.
if (!(isClass (configFile >> "CfgPatches" >> "zen_main"))) exitWith {diag_log "FCLA_Core - Mod 'Zeus Enhanced' no cargado ó no reconocido. Modulos zeus desactivados.";};




["FCLA", "Dar/Quitar acceso al 'Modo cámara'",
{
	params [["_position", [0,0,0], [[]], 3], ["_attachedObject", objNull, [objNull]]];
	if ((isNull _attachedObject) || !(_attachedObject isKindOf "CAManBase") || !(isPlayer _attachedObject)) exitWith {["¡Debe ser colocado sobre un jugador!"] call zen_common_fnc_showMessage;};
	if (_attachedObject getVariable "Camera_Mode_Show_Action_notTrainingMap") then {
		_attachedObject setVariable ["Camera_Mode_Show_Action", false, true];
		_attachedObject setVariable ["Camera_Mode_Show_Action_notTrainingMap", false, true];
		["¡Se le ha quitado el acceso al 'Modo cámara' al jugador!"] call zen_common_fnc_showMessage;
	} else {
		_attachedObject setVariable ["Camera_Mode_Show_Action", true, true];
		_attachedObject setVariable ["Camera_Mode_Show_Action_notTrainingMap", true, true];
		["¡Se le ha dado acceso al 'Modo cámara' al jugador!"] call zen_common_fnc_showMessage;
	};
}] call zen_custom_modules_fnc_register;
