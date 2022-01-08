
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para activar/desactivar la propulsión automática que poseen
 * los helicópteros.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Alternar propulsión automática", {
  _defaultValue = if (missionNamespace getVariable ["FCLA_Disable_Auto_Hover", false]) then {1;} else {0;};
  ["ASCENSOS",
	 [
    ["TOOLBOX", ["Propulsión automática", "Al desactivarse la propulsión automática (Auto Hover) que poseen los helicópteros no se podra usar."],
     [
      _defaultValue,
      1,
      2,
      ["Activada", "Desactivada"],
      nil
     ],
     true
    ]
	 ],
   {
     (_this select 0) params ["_disableAutoHover"];
     _disableAutoHover = if (_disableAutoHover == 0) then {"ACTIVATED";} else {"DEACTIVATED";};

     _module = createAgent ["FCLA_Module_Auto_Hover", _this select 1, [], 0, "CAN_COLLIDE"];
     _module setVariable ["FCLA_Disable_Auto_Hover", _disableAutoHover, true];
     _text = if (_disableAutoHover == "ACTIVATED") then {"LA PROPULSIÓN AUTOMÁTICA HA SIDO ACTIVADA";} else {"LA PROPULSIÓN AUTOMÁTICA HA SIDO DESACTIVADA";};
     [_text] call ZEN_Common_fnc_showMessage;
   }, {}, _this select 0] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Auto_Hover.paa"] call ZEN_Custom_Modules_fnc_Register;
