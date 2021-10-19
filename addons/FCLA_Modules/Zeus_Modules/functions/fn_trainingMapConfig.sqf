
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_trainingMapConfig

Description:
    Genera un módulo zeus que permite cambiar la configuración básica del
    mapa de entrenamiento. Solo estara disponible si el mod Zeus enhanced esta
    cargado y el tipo de mapa es entrenamiento.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Comprobar si mod 'Zeus Enhanced' esta cargado y si el tipo de mapa es de entrenamiento.
if (!(isClass (configFile >> "CfgPatches" >> "zen_main")) || (FCLA_Mission_Type != "_Entrenamiento")) exitWith {diag_log "FCLA_Core - Mod 'Zeus Enhanced' no cargado ó no reconocido. Modulos zeus desactivados.";};



["FCLA", "Configuración",
{
  [
   "Configuraciones",
    [
     ["COMBO", ["¿Viernes de ascensos?", "La vestimenta formal para el día de los ascensos estara disponible en los loadouts, ademas de vestir a aquellos jugadores que entren luego de haberla activado.\nSolo funciona si el mapa es de entrenamiento."],
      [
       [true, false],
       ["Si", "No"],
       1
      ]
     ],
     ["COMBO", ["Indumentaria","Designara los unifomes y chalecos, que se colocaran al elegir un loadout.\n¡Los uniformes, chalecos y cascos según escuadras solo surtiran efecto si el tipo de indumentaria es 'Vanilla'!"],
      [
      ["_MTP","_MTPCustom","_Tropical","_tropicalCustom","_Digital","_Bosque","_Urbano1","_urbanoCustom1","_Urbano2",
      "_urbanoCustom2","_Urbano3","_urbanoCustom3","_Urbano4","_urbanoCustom4","_Invierno1","_inviernoCustom1","_Invierno2",
      "_inviernoCustom2","_Invierno3","_inviernoCustom3","_Invierno4","_inviernoCustom4","_Invierno5","_inviernoCustom5","_Marina",
      "_marinaCustom","_RHSUSAF"],
     [
      "MTP","MTP (personalizada)","Tropical","Tropical (personalizada)","Digital","Bosque",
      "Urbano 1","Urbano 1 (personalizada)","Urbano 2","Urbano 2 (personalizada)","Urbano 3","Urbano 3 (personalizada)",
      "Urbano 4","Urbano 4 (personalizada)","Invierno 1","Invierno 1 (personalizada)","Invierno 2","Invierno 2 (personalizada)",
      "Invierno 3","Invierno 3 (personalizada)","Invierno 4","Invierno 4 (personalizada)","Invierno 5","Invierno 5 (personalizada)",
      "Marina","Marina (personalizada)","RHSUSAF (mod externo)"],
       0
      ]
     ],
     ["COMBO", ["Armamento", "Designara las armas que se colocaran al elegir un loadout."],
      [
       ["_Vanilla","_RHSUSAF"],
       ["Vanilla","RHSUSAF"],
       0
      ]
     ]
    ],
  {
    params ["_dialogResult", "_args"];
		FCLA_isPromotionDay = _dialogResult#0;
		publicVariable "FCLA_isPromotionDay";
    FCLA_Costume_Type = _dialogResult#1;
    publicVariable "FCLA_Costume_Type";
    FCLA_Weapons_Type = _dialogResult#2;
    publicVariable "FCLA_Weapons_Type";

		diag_log format ["FCLA_Development (addonconfig) - ¿Día de ascensos? = %1.", _dialogResult#0];
    diag_log format ["FCLA_Development (addonconfig) - Indumentaria = %1.", _dialogResult#1];
    diag_log format ["FCLA_Development (addonconfig) - Armas = %1.", _dialogResult#2];
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;
