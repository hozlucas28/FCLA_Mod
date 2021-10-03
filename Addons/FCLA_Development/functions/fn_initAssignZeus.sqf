
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_initAssignZeus

Description:
    Genera una acción de tipo 'holdAction' en el objeto enviado como parámetro
    para que el jugador que la active obtenga Zeus.

Parameters:
    _object - Objeto al cual se le agregara la acción.

Examples:
    (begin example)
    _stand = createVehicle ["Land_InfoStand_V1_F", (player modelToWorld [0, 5, 0]), [], 0, "NONE"];
    [_stand] spawn FCLA_Development_fnc_initAssignZeus;
    (end)

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_object"];
_isZeusEnhancedModNotLoaded = !(["zen_common"] call ACE_Common_fnc_isModLoaded);
if ((!isServer) || (_isZeusEnhancedModNotLoaded)) exitWith {false};


[_object,
 "<t color='#58D68D'>Obtener 'Zeus'</t>",
 "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_requestleadership_ca.paa",
 "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_requestleadership_ca.paa",
 "(_this distance _target < 1.5) && ([_this, true] call ACE_Common_fnc_isPlayer) && !([_this] call FCLA_Development_fnc_isCurator)",
 "(_caller distance _target < 1.5) && ([_caller, true] call ACE_Common_fnc_isPlayer) && !([_caller] call FCLA_Development_fnc_isCurator)",
 {},
 {},
 {
   params ["_target", "_caller", "_actionId", "_arguments"];
   [player] call ZEN_Common_fnc_createZeus;
   [["Zeus:", 1.25], ["| √ |", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;
   [format ["Mod FCLA - %1 obtuvo Zeus a travez de un 'holdAction'.", _name]] call ACE_Common_fnc_serverLog;;
 },
 {},
 [],
 1,
 1000,
 false,
false] remoteExec ["BIS_fnc_holdActionAdd", 0, _object];
