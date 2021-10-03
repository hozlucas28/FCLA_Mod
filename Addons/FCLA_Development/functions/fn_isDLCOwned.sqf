
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_isDLCOwned

Description:
    Verifica si el jugador tiene comprado el dlc enviado como argumento.

Parameters:
    _DLCName - Nombre del DLC a verficar.
               Nombres aceptados: "Zeus", "Jets", "Apex", "Karts",
                                  "Tanks", "Malden", "Contact", "Marksmen",
                                  "Art of War", "Laws of War", "Helicopters",
                                  "S.O.G. Prairie Fire", "CSLA Iron Curtain",
                                  "Tac - Ops Mission Pack" y "Global Mobilization".

Return:
    Boolean (true/false).

Examples:
    ["Zeus"] call FCLA_Development_fnc_isDLCOwned;

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_DLCName", ""]];


_arrayOfOwnedDLCs = getDLCs 1;
_arrayOfNotOwnedDLCs = getDLCs 2;

switch (_DLCName) do {
	case "Zeus": {((275700) in _arrayOfOwnedDLCs) && !((275700) in _arrayOfNotOwnedDLCs)};
	case "Jets": {((601670) in _arrayOfOwnedDLCs) && !((601670) in _arrayOfNotOwnedDLCs)};
  case "Apex": {((395180) in _arrayOfOwnedDLCs) && !((395180) in _arrayOfNotOwnedDLCs)};
  case "Karts": {((288520) in _arrayOfOwnedDLCs) && !((288520) in _arrayOfNotOwnedDLCs)};
  case "Tanks": {((798390) in _arrayOfOwnedDLCs) && !((798390) in _arrayOfNotOwnedDLCs)};
  case "Malden": {((639600) in _arrayOfOwnedDLCs) && !((639600) in _arrayOfNotOwnedDLCs)};
  case "Contact": {((1.02179e+006) in _arrayOfOwnedDLCs) && !((1.02179e+006) in _arrayOfNotOwnedDLCs)};
  case "Marksmen": {((332350) in _arrayOfOwnedDLCs) && !((332350) in _arrayOfNotOwnedDLCs)};
  case "Art of War": {((1.3255e+006) in _arrayOfOwnedDLCs) && !((1.3255e+006) in _arrayOfNotOwnedDLCs)};
  case "Laws of War": {((571710) in _arrayOfOwnedDLCs) && !((571710) in _arrayOfNotOwnedDLCs)};
  case "Helicopters": {((304380) in _arrayOfOwnedDLCs) && !((304380) in _arrayOfNotOwnedDLCs)};
  case "CSLA Iron Curtain": {((1.29444e+006) in _arrayOfOwnedDLCs) && !((1.29444e+006) in _arrayOfNotOwnedDLCs)};
  case "GlobalMobilization": {((1.04222e+006) in _arrayOfOwnedDLCs) && !((1.04222e+006) in _arrayOfNotOwnedDLCs)};
  case "S.O.G. Prairie Fire": {((1.2277e+006) in _arrayOfOwnedDLCs) && !((1.2277e+006) in _arrayOfNotOwnedDLCs)};
  case "Tac - Ops Mission Pack": {((744950) in _arrayOfOwnedDLCs) && !((744950) in _arrayOfNotOwnedDLCs)};
	default {false};
};
