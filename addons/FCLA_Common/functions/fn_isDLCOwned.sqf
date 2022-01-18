
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si el cliente, del entorno de ejecución, es propietario
 * del dlc enviado como argumento.
 *
 * Argument:
 *            0: Nombre del DLC a verificar. <STRING>
 *                # Nombres aceptados: "Zeus", "Jets", "Apex", "Karts",
 *                                     "Tanks", "Malden", "Contact", "Marksmen",
 *                                     "Art of War", "Laws of War", "Helicopters",
 *                                     "S.O.G. Prairie Fire", "CSLA Iron Curtain",
 *                                     "Tac - Ops Mission Pack", "Global Mobilization"
 *                                     y "Western Sahara".
 *
 * Return Value:
 * ¿Es propietario? <BOOL>
 *
 * Example:
 * ["Apex"] call FCLA_Common_fnc_isDLCOwned;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_DLC", "", [""], 0]];



//Verificar argumento.
_DLC = toUpper _DLC;
_acceptedDLCs = ["ZEUS", "JETS", "APEX", "KARTS", "TANKS", "MALDEN", "CONTACT", "MARKSMEN", "ART OF WAR", "LAWS OF WAR", "HELICOPTERS", "S.O.G. PRAIRIE FIRE", "CSLA IRON CURTAIN", "TAC - OPS MISSION PACK", "GLOBAL MOBILIZATION", "WESTERN SAHARA"];
if (!(_DLC in _acceptedDLCs)) exitWith {false};



//Verificar si es propietario.
_ownedDLCs = getDLCs 1;
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
	case "WESTERN SAHARA": {(1.68117e+006) in _ownedDLCs};
  case "CSLA IRON CURTAIN": {(1.29444e+006) in _ownedDLCs};
  case "GLOBAL MOBILIZATION": {(1.04222e+006) in _ownedDLCs};
  case "S.O.G. PRAIRIE FIRE": {(1.2277e+006) in _ownedDLCs};
  case "TAC - OPS MISSION PACK": {(744950) in _ownedDLCs};
};
