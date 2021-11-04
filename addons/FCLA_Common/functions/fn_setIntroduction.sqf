
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
 * Note:
 * Se recomienda utilizar esta función en el "initPlayerLocal".
 *
 * Example:
 * ["Mi título", "subtítulo"] call FCLA_Common_fnc_setIntroduction;
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
uiNamespace setVariable ["FCLA_Introduction_Title", _title];
uiNamespace setVariable ["FCLA_Introduction_Subtitle", _subtitle];


//Reproducir introducción.
["CBA_loadingScreenDone", {
  _title = uiNamespace getVariable ["FCLA_Introduction_Title", ""];
  _subtitle = uiNamespace getVariable ["FCLA_Introduction_Subtitle", ""];
  if ((_title == "") || (_subtitle == "")) exitWith {};

  [{!(uiNamespace getVariable ["FCLA_Introduction_Video", false])}, {
    _this Spawn {
      player action ["WeaponOnBack", player];
      cutText ["", "BLACK FADED", 3600, true, false];
			if (isGameFocused) then {playsound "FCLA_Introduction";};
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
    };
  }, [_title, _subtitle]] call CBA_fnc_waitUntilAndExecute;
}] call CBA_fnc_addEventHandler;
true
