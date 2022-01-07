
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Oculta/Muestra al Zeus. Esta función es utilizada por el menú contextual
 * correspondiente.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_state"];
_curatorLogic = getAssignedCuratorLogic player;



//Ocultar Zeus.
player setCaptive _state;
player allowDamage !_state;
["ZEN_Common_hideObjectGlobal", [player, _state]] call CBA_fnc_serverEvent;

//Ocultar águila.
_curatorEagle = _curatorLogic getVariable ["bird", objNull];
if (!isNull _curatorEagle) then {
  ["ZEN_Common_hideObjectGlobal", [_curatorEagle, _state]] call CBA_fnc_serverEvent;
  ["ZEN_Common_enableSimulationGlobal", [_curatorEagle, !_state]] call CBA_fnc_serverEvent;
};

//Notificar.
_text = if (_state) then {"$STR_zen_modules_ZeusIsNowVisible";} else {"$STR_zen_modules_ZeusIsNowHidden";};
[_text] call ZEN_Common_fnc_showMessage;
