
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_camera

Description:
    Genera "ui" para mover la visión de la cámara, sin uso en partícular más haya del
		de la cámara espía. NO REUTILIZAR, POSIBLES ERRORES FATALES.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_object"];



//Variables locales.
_tempArray = [_object]  call FCLA_Interactions_fnc_doorState;
_door = _tempArray select 0;
_animation = _tempArray select 1;
_phase = _tempArray select 2;
_closed = _tempArray select 3;


if (_door == "") exitWith {};


closedialog 0;
player setVariable ["Spy_Camera_DesactivateCamera", false];


//Crear tableta.
_tablet = "Land_Tablet_02_F" createVehicle [0, 0, 0];
_tablet attachto [player, [-0.1,0.4,-0.2], "neck"];
_tablet setVectorDirAndUp [[0,-1,-1], [0,-1,0]];
_tablet setObjectTexture [0, "#(argb,512,512,1)r2t(uavrtt,1)"];
[player, "AmovPknlMstpSrasWrflDnon_AmovPknlMstpSlowWrflDnon", "PlayMove"] spawn FCLA_Development_fnc_playAnimation;
sleep 0.5;
[player, "acts_CrouchingIdleRifle01", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;
_addIndex = player addAction ["", {}, "", 0, false, true, "NightVision"];
_eh = player addeventhandler ["animChanged",{[player, "acts_CrouchingIdleRifle01", "SwitchMove"] spawn FCLA_Development_fnc_playAnimation;}];
playSound "FCLA_Switch_Camera";


if (cameraView != "INTERNAL") then {player switchCamera "INTERNAL"};


_camera = "Camera" camcreate (player modelToworld [0,2,0.4]);
_camera setdir (getDir player);
_camera cameraeffect ["internal", "back", "uavrtt"];
_camera camPrepareFOV 0.900;
_camera campreparefocus [-1,-1];
_camera camCommitPrepared 0;
_camera camcommit 0.01;
cameraEffectEnableHUD true;
showCinemaBorder false;


player setVariable ["Spy_Camera_Camera", _camera];


_keyDown = (findDisplay 46) displayAddEventHandler  ["KeyDown", "if !(isnil 'FCLA_Interactions_fnc_handlerCamera') then {Door_interactions_temp = ['keydown', _this, commandingmenu] spawn FCLA_Interactions_fnc_handlerCamera; Door_interactions_temp = nil;}"];
while {!(player getVariable ["Spy_Camera_DesactivateCamera", false]) && (alive player)} do
{
	["<t font='puristaMedium' size='0.6' align='left' color='#58D68D' shadow='2'>- Usa 'W' 'A' 'S' 'D' para mover la cámara.<br/>- Persiona 'N' para activar la visión nocturna.<br/>- Persiona 'Tab' para dejar de mirar.</t>", -0.68, -0.36, 0.1, 0, 0, 1] spawn BIS_fnc_dynamicText;
	sleep 0.1;
};

//Al cerrar cámara.
deleteVehicle _tablet;
player removeeventhandler ["animChanged", _eh];
player removeaction _addIndex;
[player, "AmovPknlMstpSrasWrflDnon_AmovPknlMstpSlowWrflDnon", "PlayMove"] spawn FCLA_Development_fnc_playAnimation;
(findDisplay 46) displayRemoveEventHandler ["KeyDown", _keyDown];
playSound "FCLA_Switch_Camera";

_camera cameraEffect ["TERMINATE", "BACK"];
camdestroy _camera;
_camera = nil;
