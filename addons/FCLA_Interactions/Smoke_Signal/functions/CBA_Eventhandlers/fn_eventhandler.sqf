
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un eventhandler que permite XXX.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Smoke_Signal", {
  params ["_projectile"];







  params ["_pos", "_color"];
  if (!isserver) exitwith {};



  switch _color do
  {
  	case "White": {_color = [1,1,1]};
  	case "Red": {_color = [1,0.253,0]};
  	case "Blue": {_color = [0.266,0.537,1]};
  	case "Green": {_color = [0.1,0.5,0.05]};
  	case "Orange": {_color = [1,0.54,0.21]};
  	case "Yellow": {_color = [0.956,1,0.21]};
  	case "Purple": {_color = [0.8,0.432,0.8,1]};
  };
  [[_pos, _color],"\FCLA_Interactions\Smoke_Signal\scripts\Blow.sqf"] remoteExec ["execVM"];









  //Variables de referencia.
  params ["_projectilePos", "_color"];
  if (!hasInterface) exitWith {};



  _lightExp = createVehicle ["#lightpoint", _projectilePos, [], 0, "CAN_COLLIDE"];
  _lightExp setLightAttenuation [1,0,0,0,0,50];
  _lightExp setLightBrightness 2;
  _lightExp setLightDayLight true;
  _lightExp setLightFlareMaxDistance 2000;
  _lightExp setLightColor [1,1,1];
  _lightExp setLightAmbient [1,1,1];

  [_lightExp] spawn {
    _ob = _this#0;
    sleep 0.2;
    deleteVehicle _ob
  };

  drop [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d",8,0,40,0],"","Billboard",1,0.3,[_projectilePos#0,_projectilePos#1,(_projectilePos#2)+0.3],[0,0,0],3,10.2,8,0.01,[0,20],[[_color#0,_color#1,_color#2,1],[_color#0,_color#1,_color#2,0]],[0.1],0,0,"","",""];
  drop [["\A3\data_f\ParticleEffects\Universal\Universal",16,14,5,1],"","Billboard",1,0.5,[_projectilePos#0,_projectilePos#1,(_projectilePos#2)+0.1],[0,0,0],0,11,7,0,[1,10],[[1,1,1,1],[1,1,1,0]],[2],0,0,"","",""];
  drop [["\A3\data_f\ParticleEffects\Universal\Universal",16,12,3,0],"","Billboard",1,0.3,[_projectilePos#0,_projectilePos#1,(_projectilePos#2)+0.5],[0,0,0],0,11,7,0,[1,5],[[1,1,1,1],[1,1,1,0]],[1],0,0,"","",""];

  if (([player, _projectilePos] call CBA_fnc_getDistance) < 1000) then {
    playsound "FCLA_Smoke_Signal_Explosion";
  };
  sleep 0.2;

  _smoke_core = "#particlesource" createVehicleLocal _projectilePos;
  _smoke_core setParticleCircle [0,[0,0,0]];
  _smoke_core setParticleRandom [1,[1,1,1],[.5,.5,.5],1,0,[0,0,0,0],0,0];
  _smoke_core setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d",8,0,40,0],"","Billboard",1,FCLA_Smoke_Signal_Time,[0,0,0],[0,0,0],5,10.2,8,0.05,[5,20],[[_color#0,_color#1,_color#2,1],[_color#0,_color#1,_color#2,0.5],[_color#0,_color#1,_color#2,0.3],[_color#0,_color#1,_color#2,0]],[0.3],0,0,"","",_projectilePos];
  _smoke_core setDropInterval 0.01;

  [_smoke_core] spawn {
    _ob = _this#0;
    sleep 0.1;
    deleteVehicle _ob
  };

  _distance = [player, _projectilePos] call CBA_fnc_getDistance;
  if ((_distance > 1000) && (_distance < 2000)) then {
    sleep (0.5+ linearConversion [0,2000,[player, _projectilePos] call CBA_fnc_getDistance,0.5,2,false]);
    playSound "FCLA_Smoke_Signal_Echo"
  };













}] call CBA_fnc_addEventhandler;
