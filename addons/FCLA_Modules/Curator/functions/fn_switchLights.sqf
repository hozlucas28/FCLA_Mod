
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para enciender/apagar las luces en la posición y radio indicados.
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
     false
    ],
    ["TOOLBOX", "Excluir vehículos",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["SLIDER", ["Radio", "Aquellas luces comprendidas dentro del radio definido se veran afectadas, tomando como origen del radio la posición donde se colocó el módulo.\n• Nota: si colocas -1 todas las luces del mapa seran afectadas."],
     [
      -1,
      5000,
      250,
      0
     ],
     false
    ]
	 ],
   {
     (_this select 0) params ["_state", "_excludeVehicles", "_rad"];
     _rad = [_rad, 0] call BIS_fnc_cutDecimals;
     _state = if (_state == 0) then {"On";} else {"Off";};
     _excludeVehicles = if (_excludeVehicles == 0) then {true;} else {false;};

     [_this select 1, _rad, _state, _excludeVehicles] call FCLA_Common_fnc_switchLights;
     _text = if (_state == "On") then {"LAS LUCES FUERON ENCENDIDAS";} else {"LAS LUCES FUERON APAGADAS";};
     [_text] call ZEN_Common_fnc_showMessage;
   }, {}, _this select 0] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Power_Switch.paa"] call ZEN_Custom_Modules_fnc_Register;
