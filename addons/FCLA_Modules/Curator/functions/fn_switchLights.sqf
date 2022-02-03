
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Alterna las luces en la posicion y radio indicados.
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
    ["TOOLBOX", "Excluir vehiculos",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["SLIDER", ["Radio", "Aquellas luces comprendidas dentro del radio definido se veran afectadas, tomando como origen del radio la posicion donde se coloco el modulo.\n- Nota: si colocas -1 todas las luces del mapa seran afectadas."],
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
     (_this select 1) params ["_position", "_attachedObject"];
     (_this select 0) params ["_state", "_excludeVehicles", "_rad"];
     _rad = round _rad;
     _state = if (_state == 0) then {"On";} else {"Off";};
     _excludeVehicles = if (_excludeVehicles == 0) then {true;} else {false;};

     [_position, _rad, _state, _excludeVehicles] call FCLA_Common_fnc_switchLights;
     _text = if (_state == "On") then {"LAS LUCES FUERON ENCENDIDAS";} else {"LAS LUCES FUERON APAGADAS";};
     [_text] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Power_Switch.paa"] call ZEN_Custom_Modules_fnc_Register;
