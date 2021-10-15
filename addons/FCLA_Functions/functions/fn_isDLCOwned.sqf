
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_isDLCOwned

Description:
    Verifica si el jugador tiene comprado el dlc enviado como argumento.

Arguments:
    _DLCName - Nombre del DLC a verficar.
               Nombres aceptados: "Zeus", "Jets", "Apex", "Karts",
                                  "Tanks", "Malden", "Contact", "Marksmen",
                                  "Art of War", "Laws of War", "Helicopters",
                                  "S.O.G. Prairie Fire", "CSLA Iron Curtain",
                                  "Tac - Ops Mission Pack" y "Global Mobilization".

Return:
    Boolean (true/false).

Example:
    ["Zeus"] call FCLA_Development_fnc_isDLCOwned;

Public: [Yes]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_DLCName", ""]];


_ownedDLCs = getDLCs 1;
_notOwnedDLCs = getDLCs 2;

switch (_DLCName) do {
	case "Zeus": {((275700) in _ownedDLCs) && !((275700) in _notOwnedDLCs)};
	case "Jets": {((601670) in _ownedDLCs) && !((601670) in _notOwnedDLCs)};
  case "Apex": {((395180) in _ownedDLCs) && !((395180) in _notOwnedDLCs)};
  case "Karts": {((288520) in _ownedDLCs) && !((288520) in _notOwnedDLCs)};
  case "Tanks": {((798390) in _ownedDLCs) && !((798390) in _notOwnedDLCs)};
  case "Malden": {((639600) in _ownedDLCs) && !((639600) in _notOwnedDLCs)};
  case "Contact": {((1.02179e+006) in _ownedDLCs) && !((1.02179e+006) in _notOwnedDLCs)};
  case "Marksmen": {((332350) in _ownedDLCs) && !((332350) in _notOwnedDLCs)};
  case "Art of War": {((1.3255e+006) in _ownedDLCs) && !((1.3255e+006) in _notOwnedDLCs)};
  case "Laws of War": {((571710) in _ownedDLCs) && !((571710) in _notOwnedDLCs)};
  case "Helicopters": {((304380) in _ownedDLCs) && !((304380) in _notOwnedDLCs)};
  case "CSLA Iron Curtain": {((1.29444e+006) in _ownedDLCs) && !((1.29444e+006) in _notOwnedDLCs)};
  case "GlobalMobilization": {((1.04222e+006) in _ownedDLCs) && !((1.04222e+006) in _notOwnedDLCs)};
  case "S.O.G. Prairie Fire": {((1.2277e+006) in _ownedDLCs) && !((1.2277e+006) in _notOwnedDLCs)};
  case "Tac - Ops Mission Pack": {((744950) in _ownedDLCs) && !((744950) in _notOwnedDLCs)};
	default {false};
};
