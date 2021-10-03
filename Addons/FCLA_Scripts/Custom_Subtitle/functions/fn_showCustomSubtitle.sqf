
/* ----------------------------------------------------------------------------
Function: FCLA_Scripts_fnc_showCustomSubtitle

Description:
    Muestra los parametros enviados en forma de subtítulos.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_name", "_text", "_colour", "_timeToHide"];
disableSerialization;



private "_display";
titleRsc ["RscDynamicText", "PLAIN"];
waitUntil {_display = uiNamespace getVariable "BIS_dynamicText"; !(isNull _display)};
_ctrl = _display displayCtrl 9999;
uiNamespace setVariable ["BIS_dynamicText", displayNull];
_ctrlBackground = _display ctrlCreate ["RscText", 99999];
_w = 0.4 * safeZoneW;
_x = safeZoneX + (0.5 * safeZoneW - (_w / 2));
_y = safeZoneY + (0.73 * safeZoneH);
_h = safeZoneH;
_ctrl ctrlSetPosition [_x, _y, _w, _h];
_ctrl ctrlSetFade 1;
_ctrl ctrlCommit 0;

_text = parseText format ["<t align = 'center' shadow = '2' size = '0.52'><t color = '%1'>" + _name + ":</t> <t color = '#d0d0d0'>" + _text + "</t></t>", _colour];
_ctrl ctrlSetStructuredText _text;
_ctrl ctrlSetFade 0;
_ctrl ctrlCommit 0.5;

sleep _timeToHide;
_ctrl ctrlSetFade 1;
_ctrl ctrlCommit 0.5;
true
