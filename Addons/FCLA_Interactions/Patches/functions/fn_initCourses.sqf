
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_initCourses

Description:
    Genera diecinueve acciones (externas) del menú ACE 3D, almacenadas en subacciones,
    que permiten colocar parches del curso seleccionado a la unidad con la que se interactúa.
    Solo funciona para los jugadores.

Parameters:
    _unit - unidad a la que se le agregara estas acciones.

Examples:
		  [player] spawn FCLA_Interactions_fnc_initCourses;

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
if (!isPlayer _unit) exitWith {};
if (FCLA_Mission_Type != "_Entrenamiento") exitWith {};
if (isnil {_unit getVariable "isRecruiter"}) exitWith {};



_generalCondition = {
  params ["_target", "_player", "_params"];
  (isPlayer _player) && (_player getVariable "isRecruiter") && !(_target getVariable ["ace_captives_isSurrendering", false]) &&
  !(_target getVariable ["ace_captives_isHandcuffed", false]);
};



//Básicos.
_CBI = ["Parche_CBI", "CBI", "\FCLA_Interactions\Patches\data\icons\CBI.paa", {[_target, "Patch_CBI"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_CAI = ["Parche_CAI", "CAI", "\FCLA_Interactions\Patches\data\icons\CAI.paa", {[_target, "Patch_CAI"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_CPR = ["Parche_CPR", "CPR", "\FCLA_Interactions\Patches\data\icons\CPR.paa", {[_target, "Patch_CPR"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
{[_unit, 0, ["ACE_MainActions","ACE_Patches","ACE_BasicCourses"], _x] call ace_interact_menu_fnc_addActionToObject;} forEach [_CPR, _CAI, _CBI];


//Infantería.
_CMC = ["Parche_CMC", "CMC", "\FCLA_Interactions\Patches\data\icons\CMC.paa", {[_target, "Patch_CMC"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_CFG = ["Parche_CFG", "CFG", "\FCLA_Interactions\Patches\data\icons\CFG.paa", {[_target, "Patch_CFG"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_CFA = ["Parche_CFA", "CFA", "\FCLA_Interactions\Patches\data\icons\CFA.paa", {[_target, "Patch_CFA"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_CAL = ["Parche_CAL", "CAL", "\FCLA_Interactions\Patches\data\icons\CAL.paa", {[_target, "Patch_CAL"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_CEE = ["Parche_CEE", "CEE", "\FCLA_Interactions\Patches\data\icons\CEE.paa", {[_target, "Patch_CEE"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
{[_unit, 0, ["ACE_MainActions","ACE_Patches","ACE_InfantryCourses"], _x] call ace_interact_menu_fnc_addActionToObject;} forEach [_CEE, _CAL, _CFA, _CFG, _CMC];


//Blindados.
_CIM = ["Parche_CIM", "CIM", "\FCLA_Interactions\Patches\data\icons\CIM.paa", {[_target, "Patch_CIM"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_CTC = ["Parche_CTC", "CTC", "\FCLA_Interactions\Patches\data\icons\CTC.paa", {[_target, "Patch_CTC"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
{[_unit, 0, ["ACE_MainActions","ACE_Patches","ACE_ArmoredCourses"], _x] call ace_interact_menu_fnc_addActionToObject;} forEach [_CTC, _CIM];


//Reconocimiento.
_COR = ["Parche_COR", "COR", "\FCLA_Interactions\Patches\data\icons\COR.paa", {[_target, "Patch_COR"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_CTS = ["Parche_CTS", "CTS", "\FCLA_Interactions\Patches\data\icons\CTS.paa", {[_target, "Patch_CTS"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_CFT = ["Parche_CFT", "CFT", "\FCLA_Interactions\Patches\data\icons\CFT.paa", {[_target, "Patch_CFT"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_OPVNT = ["Parche_OPVNT", "OPVNT", "\FCLA_Interactions\Patches\data\icons\OPVNT.paa", {[_target, "Patch_OPVNT"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
{[_unit, 0, ["ACE_MainActions","ACE_Patches","ACE_ReconCourses"], _x] call ace_interact_menu_fnc_addActionToObject;} forEach [_OPVNT, _CFT, _CTS, _COR];


//Fuerzas especiales.
_PARA = ["Parche_PARA", "PARA", "\FCLA_Interactions\Patches\data\icons\PARA.paa", {[_target, "Patch_PARA"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_CBC = ["Parche_CBC", "CBC", "\FCLA_Interactions\Patches\data\icons\CBC.paa", {[_target, "Patch_CBC"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_FES = ["Parche_FES", "FES", "\FCLA_Interactions\Patches\data\icons\FES.paa", {[_target, "Patch_FES"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
{[_unit, 0, ["ACE_MainActions","ACE_Patches","ACE_SpecialForcesCourses"], _x] call ace_interact_menu_fnc_addActionToObject;} forEach [_FES, _CBC, _PARA];


//Aereos.
_CPH = ["Parche_CPH", "CPH", "\FCLA_Interactions\Patches\data\icons\CPH.paa", {[_target, "Patch_CPH"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
_CPA = ["Parche_CPA", "CPA", "\FCLA_Interactions\Patches\data\icons\CPA.paa", {[_target, "Patch_CPA"] call FCLA_Interactions_fnc_applyPatche;}, _generalCondition] call ace_interact_menu_fnc_createAction;
{[_unit, 0, ["ACE_MainActions","ACE_Patches","ACE_AirCourses"], _x] call ace_interact_menu_fnc_addActionToObject;} forEach [_CPA, _CPH];
