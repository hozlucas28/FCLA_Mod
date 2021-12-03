
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Enciende/Apaga las luces en la posición y radio indicado.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Alternar luces", {
  ["ALTERNAR LUCES",
	 [
    ["TOOLBOX", "Estado",
     [
      1,
      1,
      2,
      ["Encender", "Apagar"],
      nil
     ]
    ],
    ["SLIDER", "Radio",
     [
      0,
      25000,
      150,
      0
     ]
    ]
	 ],
   {
     (_this select 0) params ["_state", "_rad"];
     (_this select 1) params ["_position"];

     _state = if (_state == 0) then {"On";} else {"Off";};
     [_position, _rad, _state] call FCLA_Common_fnc_switchLights;

     _text = if (_state == "On") then {"LAS LUCES FUERON ENCENDIDAS";} else {"LAS LUCES FUERON APAGADAS";};
     [_text] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\x\zen\addons\modules\ui\light_ca.paa"] call ZEN_Custom_Modules_fnc_Register;
