
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo que genera una zona contaminada.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Zona contaminada (CBRN)", {
  ["ZONA CONTAMINADA",
	[
   ["SLIDER", ["Radio", "Determina el radio que tendra la zona contaminada, tomando como origen del radio al módulo.\n• Nota: si colocas -1 todo el mapa se vera afectado."],
    [
     -1,
     5000,
     500,
     0
    ],
    false
   ],
   ["COMBO", "Nivel de amenaza",
    [
     [
      1,
      2,
      3,
      4
     ],
     [
      ["1", "Se necesita máscara de oxígeno compatible."],
      ["2", "Se necesita máscara y mochila con oxígeno compatibles."],
      ["3", "Se necesita máscara, mochila con oxígeno y un traje NRBQ compatibles."],
      ["4", "No hay equipamiento que brinde protección alguna."]
     ],
     0
    ],
    false
   ]
	],
  {
    (_this select 0) params ["_rad", "_threatLevel"];
    (_this select 1) params ["_position", "_attachedObject"];
    _rad = round _rad;

    _module = createAgent ["FCLA_Module_CBRN_Contaminated_Zone_Empty", _position, [], 0, "CAN_COLLIDE"];
    _module setVariable ['FCLA_Threat_Level', _threatLevel, true];
    _module setVariable ['objectArea', [_rad, _rad, 0, false, _rad], true];
    [_module, [], true] call FCLA_Modules_fnc_setCBRNContaminatedZone3DEN;

    _curatorLogic = getAssignedCuratorLogic player;
    ["ZEN_Common_addObjects", [[_module], _curatorLogic]] call CBA_fnc_serverEvent;
    ["ZONA CONTAMINADA GENERADA CON ÉXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Contaminated_Zone.paa"] call ZEN_Custom_Modules_fnc_Register;
