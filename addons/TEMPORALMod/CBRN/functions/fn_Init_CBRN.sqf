
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_Init_CBRN

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

[] spawn {
  Sleep 1;
  if (isNil "FCLA_CBRN_Configuration_Activated") exitWith {};
  if (isServer) then {
    FCLA_CBRN_Simulation_Range = 500;
    publicVariable "FCLA_CBRN_Simulation_Range";
  };



  /* ----------------------------- EVENTHANDLERS ----------------------------- */





  //Por fotograma.
  [{
    _range = missionNameSpace getVariable ["FCLA_CBRN_Simulation_Range", 500];
    {
      if ((player distance2D _x) < _range) then {
        if !(simulationEnabled _x) then {_x enableSimulation true;};
      } else {
        if (simulationEnabled _x) then {_x enableSimulation false;};
      };
    } forEach FCLA_CBRN_localZones;
  }, 10] call CBA_fnc_addPerFrameHandler;


};
