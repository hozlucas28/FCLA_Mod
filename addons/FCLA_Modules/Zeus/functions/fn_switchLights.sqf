
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
     ],
     true
    ],
    ["SLIDER", "Radio",
     [
      0,
      25000,
      150,
      0
     ],
     true
    ]
	 ],
   {
     (_this select 0) params ["_stateSelected", "_radSelected"];

     _stateSelected = if (_stateSelected == 0) then {"On";} else {"Off";};
     [_this select 1, _radSelected, _stateSelected] call FCLA_Common_fnc_switchLights;

     _text = if (_stateSelected == "On") then {"LAS LUCES FUERON ENCENDIDAS";} else {"LAS LUCES FUERON APAGADAS";};
     [_text] call ZEN_Common_fnc_showMessage;
   }, {}, _this select 0] call ZEN_Dialog_fnc_Create;
}, "\x\zen\addons\modules\ui\light_ca.paa"] call ZEN_Custom_Modules_fnc_Register;
