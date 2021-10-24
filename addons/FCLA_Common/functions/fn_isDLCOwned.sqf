
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
switch (toUpper _DLC) do {
	case "ZEUS": {(275700) in _ownedDLCs};
	case "JETS": {(601670) in _ownedDLCs};
  case "APEX": {(395180) in _ownedDLCs};
  case "KARTS": {(288520) in _ownedDLCs};
  case "TANKS": {(798390) in _ownedDLCs};
  case "MALDEN": {(639600) in _ownedDLCs};
  case "CONTACT": {(1.02179e+006) in _ownedDLCs};
  case "MARKSMEN": {(332350) in _ownedDLCs};
  case "ART OF WAR": {(1.3255e+006) in _ownedDLCs};
  case "LAWS OF WAR": {(571710) in _ownedDLCs};
  case "HELICOPTERS": {(304380) in _ownedDLCs};
  case "CSLA IRON CURTAIN": {(1.29444e+006) in _ownedDLCs};
  case "GLOBALMOBILIZATION": {(1.04222e+006) in _ownedDLCs};
  case "S.O.G. PRAIRIE FIRE": {(1.2277e+006) in _ownedDLCs};
  case "TAC - OPS MISSION PACK": {(744950) in _ownedDLCs};
};
