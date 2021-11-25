
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una introducción animada al comienzo del escenario.
 *
 * Arguments:
 *            0: Título. <STRING>
 *            1: Subtítulo. <STRING>
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 * ["Mi título", "subtítulo"] call FCLA_Common_fnc_setIntroduction;
 *
 * Note:
 * Se recomienda utilizar esta función en el "initPlayerLocal".
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
				["_title", "", [""], 0],
				["_subtitle", "", [""], 0]
			 ];



//Verificar argumentos.
_title = toUpper _title;
_subtitle = toLower _subtitle;
if ((_title == "") || (_subtitle == "")) exitWith {false};


//Guardar argumentos en variables de tipo interfaz.
localNamespace setVariable ["FCLA_Introduction_Title", _title];
localNamespace setVariable ["FCLA_Introduction_Subtitle", _subtitle];


//Reproducir introducción.
["CBA_loadingScreenDone", {
  _title = localNamespace getVariable ["FCLA_Introduction_Title", ""];
  _subtitle = localNamespace getVariable ["FCLA_Introduction_Subtitle", ""];
  if ((_title == "") || (_subtitle == "")) exitWith {};

  [{!(localNamespace getVariable ["FCLA_Introduction_Video_Status", false])}, {
    _this Spawn {
      player action ["WeaponOnBack", player];
      cutText ["", "BLACK FADED", 3600, true, false];
			if (isGameFocused) then {playsound "FCLA_Introduction";};
			localNamespace setVariable ["FCLA_Introduction_Status", true];
      [{[true] call ACE_Common_fnc_disableUserInput;}, [], 0.1] call CBA_fnc_waitAndExecute;

      Sleep 3;
      [
       "<img size='10' image='\FCLA_Common\data\FCLA_Squads.jpg'/>",
       safeZoneX + 0.71, safeZoneY + safeZoneH - 1.5, 4, 4, 0, 789
      ] spawn bis_fnc_dynamicText;

      Sleep 10;
      [[
      	[_this select 0, "<t align='center' size='1.75' font='PuristaBold'>%1</t><br/>"],
      	["(" + (_this select 1) + ")", "<t align='center' size='1' font='PuristaSemibold'>%1</t>"]
      ]] spawn BIS_fnc_typeText;

      sleep 5;
      cutText ["", "BLACK IN", 5, true, false];
      [false] call ACE_Common_fnc_disableUserInput;
			localNamespace setVariable ["FCLA_Introduction_Status", nil];
			localNamespace setVariable ["FCLA_Introduction_Title", nil];
			localNamespace setVariable ["FCLA_Introduction_Subtitle", nil];
    };
  }, [_title, _subtitle]] call CBA_fnc_waitUntilAndExecute;
}] call CBA_fnc_addEventHandler;
true
