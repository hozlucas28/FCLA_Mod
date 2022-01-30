
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
  _defaultValue = if (isNil "FCLA_Auto_Hover") then {0;} else {
    if (FCLA_Auto_Hover == "Activated") then {0;} else {1;};
  };


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
     _disableAutoHover = if (_disableAutoHover == 0) then {"Activated";} else {"Deactivated";};

     ["FCLA_Auto_Hover", _disableAutoHover] call CBA_fnc_publicVariable;
     ["FCLA_Module_Deactivate_Auto_Hover", []] call CBA_fnc_globalEvent;
     _text = if (_disableAutoHover == "Activated") then {"LA PROPULSIÓN AUTOMÁTICA HA SIDO ACTIVADA";} else {"LA PROPULSIÓN AUTOMÁTICA HA SIDO DESACTIVADA";};
     [_text] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Auto_Hover.paa"] call ZEN_Custom_Modules_fnc_Register;
