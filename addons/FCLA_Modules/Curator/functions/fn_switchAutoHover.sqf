
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
     (_this select 1) params ["_position", "_attachedObject"];

     private "_position";
     private _moduleGroup = createGroup [sideLogic, true];
     private _disableAutoHover = if (_disableAutoHover == 0) then {"ACTIVATED";} else {"DEACTIVATED";};
     "FCLA_Module_Auto_Hover" createUnit [_position, _moduleGroup, "
       this setPos _position;
       this setVariable ['FCLA_Disable_Auto_Hover', _disableAutoHover, true];
       this setVariable ['BIS_fnc_initModules_disableAutoActivation', false, true];
     "];

     _text = if (_disableAutoHover == "ACTIVATED") then {"LA PROPULSIÓN AUTOMÁTICA HA SIDO ACTIVADA";} else {"LA PROPULSIÓN AUTOMÁTICA HA SIDO DESACTIVADA";};
     [_text] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Auto_Hover.paa"] call ZEN_Custom_Modules_fnc_Register;
