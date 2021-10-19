
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_giveFormalSuit

Description:
    Genera un módulo zeus que permite colocarlo arriba de una unidad y equiparla
    con un traje formal de FCLA. Solo estara disponible si el mod Zeus enhanced esta cargado
		y si el tipo de mapa es de entrenamiento.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Comprobar si mod 'Zeus Enhanced' esta cargado y si el tipo de mapa es de entrenamiento.
if (!(isClass (configFile >> "CfgPatches" >> "zen_main")) || (FCLA_Mission_Type != "_Entrenamiento")) exitWith {diag_log "FCLA_Core - Mod 'Zeus Enhanced' no cargado ó no reconocido. Modulos zeus desactivados.";};



//Colocar traje formal.
["FCLA", "Colocar traje formal",
{
	params ["_position", "_attachedObject"];
  if (isNull _attachedObject || !(_attachedObject isKindOf "CAManBase")) exitWith {["¡Debe ser colocado sobre una unidad!"] call zen_common_fnc_showMessage;};
  // LLAMADA A FUNCIÓN //
	["Vestimenta colocada"] call zen_common_fnc_showMessage;
}] call zen_custom_modules_fnc_register;
