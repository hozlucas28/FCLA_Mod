
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un modulo para reproducir un sonido personalizado de manera
 * tridimensional.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Reproducir sonido (personalizado)", {
  ["SONIDO (PERSONALIZADO)",
	[
   ["EDIT", "Classname del sonido",
	  [
	   "",
	   nil,
	   nil
	  ],
    false
	 ],
   ["SLIDER", ["Radio", "Determina la distancia a la que se oira el sonido."],
    [
     100,
     5000,
     250,
     0
    ],
    false
   ]
	],
  {
    (_this select 0) params ["_soundClass", "_rad"];
    (_this select 1) params ["_position", "_attachedObject"];
    _rad = round _rad;

    _module = createAgent ["FCLA_Module_Play_Custom_Sound_Empty", _position, [], 0, "CAN_COLLIDE"];
    _module setVariable ["FCLA_Sound_On_Loop", true, true];
    _module setVariable ["FCLA_Classname_Sound", _soundClass, true];
    _module setVariable ["objectArea", [_rad, _rad, 0, false, _rad], true];
    [_module, [], true] call FCLA_Modules_fnc_playCustomSound3DEN;

    _curatorLogic = getAssignedCuratorLogic player;
    ["ZEN_Common_addObjects", [[_module], _curatorLogic]] call CBA_fnc_serverEvent;
    ["SONIDO PERSONALIZADO GENERADO CON EXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Sound.paa"] call ZEN_Custom_Modules_fnc_Register;
