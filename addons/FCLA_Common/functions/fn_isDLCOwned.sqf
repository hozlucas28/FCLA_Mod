
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si el cliente, del entorno de ejecución, es propietario
 * del dlc enviado como argumento.
 *
 * Arguments:
 *            0: Nombre del DLC a verificar. <STRING>
 *                # Nombres aceptados: "Zeus", "Jets", "Apex", "Karts",
 *                                     "Tanks", "Malden", "Contact", "Marksmen",
 *                                     "Art of War", "Laws of War", "Helicopters",
 *                                     "S.O.G. Prairie Fire", "CSLA Iron Curtain",
 *                                     "Tac - Ops Mission Pack" y "Global Mobilization".
 *
 * Return Value:
 * ¿Es propietario? <BOOL>
 *
 * Example:
 * ["Zeus"] call FCLA_Common_fnc_isDLCOwned;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_DLC", "", [""], 0]];
_acceptedDLCs = [
                 "Zeus", "Jets", "Apex", "Karts", "Tanks", "Malden", "Contact",
								 "Marksmen", "Art of War", "Laws of War", "Helicopters",
								 "S.O.G. Prairie Fire", "CSLA Iron Curtain", "Tac - Ops Mission Pack",
								 "Global Mobilization"
								];
if (!(_DLC in _acceptedDLCs)) exitWith {false};



//Obtener DLCs comprados.
_ownedDLCs = getDLCs 1;


//Verificar si es propietario.
switch (_DLC) do {
	case "Zeus": {(275700) in _ownedDLCs};
	case "Jets": {(601670) in _ownedDLCs};
  case "Apex": {(395180) in _ownedDLCs};
  case "Karts": {(288520) in _ownedDLCs};
  case "Tanks": {(798390) in _ownedDLCs};
  case "Malden": {(639600) in _ownedDLCs};
  case "Contact": {(1.02179e+006) in _ownedDLCs};
  case "Marksmen": {(332350) in _ownedDLCs};
  case "Art of War": {(1.3255e+006) in _ownedDLCs};
  case "Laws of War": {(571710) in _ownedDLCs};
  case "Helicopters": {(304380) in _ownedDLCs};
  case "CSLA Iron Curtain": {(1.29444e+006) in _ownedDLCs};
  case "GlobalMobilization": {(1.04222e+006) in _ownedDLCs};
  case "S.O.G. Prairie Fire": {(1.2277e+006) in _ownedDLCs};
  case "Tac - Ops Mission Pack": {(744950) in _ownedDLCs};
};
