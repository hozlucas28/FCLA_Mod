
/********************************************************************************|
|                           VEHÍCULOS - "CÁMARA ESPÍA"                           |
|********************************************************************************/

//Redefinir acción ACE 3D.
class Ace_HuntIR_Open {
  displayName = "Activar monitor HuntIR";
  exceptions[] = {};
  icon = "\z\ace\addons\huntir\UI\w_huntir_monitor_ca.paa";
  condition = "([ACE_player, 'ACE_HuntIR_monitor'] call ace_common_fnc_hasItem) && !((([cursorTarget] call FCLA_Interactions_fnc_doorState) select 0) != '')";
  statement = "[ace_huntir_fnc_huntir] call CBA_fnc_execNextFrame;";
  showDisabled = 0;
};
