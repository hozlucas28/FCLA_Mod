
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_initCustomID

Description:
		Modifica la identificación de la unidad sincronizada con los valores
    enviados. Función llamada desde el módulo 'Identificación personalizada'.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module","_synchronizedUnits","_isActivated"];
if (!(_isActivated)) exitWith {};



//Si no esta sincronizado a nada.
if ((count _synchronizedUnits) == 0) exitWith {
  [] spawn {
    Sleep 1;
    ["Un módulo de 'Identificación personalizada' no esta sincronizado a una unidad.", "Mod FCLA:", true, "Cerrar"] remoteExec ["BIS_fnc_guiMessage", 0, true];
  };
};


//Obtener valores.
_nameAndSurname = _module getVariable "Unit_ID_nameAndSurname";
_age = round (_module getVariable "Unit_ID_Age");
_POB = _module getVariable "Unit_ID_POB";

//Aplicar valores.
{
  if (!(_x isKindOf "CAManBase")) exitWith {};
  _x setVariable ["ID_custom_name", _nameAndSurname, true];
  _x setVariable ["ID_custom_age", _age, true];
  _x setVariable ["ID_custom_placeofbirth", _POB, true];
} forEach _synchronizedUnits;
