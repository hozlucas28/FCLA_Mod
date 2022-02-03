
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica los objetivos del campo de tiro para que sean funcionales.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (_synchronizedObjects isEqualTo []) || (!_isActivated)) exitWith {};



//Verificar argumento.
_modulePos = getPos _module;
_moduleArea = _module getVariable ["objectArea", [0, 0, 0, false, -1]];
_nearTargets = nearestObjects [_modulePos, ["TargetBase", "Target_Swivel_01_base_F"], selectMax [_moduleArea select 0, _moduleArea select 1]];
_targetsInArea = _nearTargets select {_x inArea [_module, _moduleArea select 0, _moduleArea select 1, _moduleArea select 2, _moduleArea select 3, _moduleArea select 4]};
_compatibleSynchronizedObjects = _synchronizedObjects select {_x isKindOf "Thing"};
if ((count _compatibleSynchronizedObjects) != 1) exitWith {["FCLA_Module_Shooting_Range", "- MODULO: CAMPO DE TIRO", "¡Error! El/Un modulo 'Campo de tiro' no se pudo inicializar con exito."] call FCLA_Common_fnc_errorMessage;};



//Estado inicial de los objetivos.
{
  _x allowDamage false;
  _x animate ["Terc", 0];
  _x setVariable ["BIS_poppingEnabled", false, true];

  _x addEventHandler ["HitPart", {
    (_this select 0) params ["_target", "_shooter", "_proyectile", "_position", "_velocity", "_selection", "_ammo", "_vestor", "_radius", "_surfaceType", "_isDirect"];
    if (((_selection select 0) != "plate") && ((_selection select 0) != "target")) exitWith {};
    _target animate ["Terc", 1];
  }];
} forEach _targetsInArea;


//Crear controlador.
_controller = _compatibleSynchronizedObjects select 0;
_controller allowDamage false;
if (_controller isKindOf "Land_Laptop_unfolded_F") then {_controller setObjectTextureGlobal [0, "\a3\missions_f_bootcamp\data\img\laptop\electronics_screens_laptop_targeterror_co.paa"];};

_controller addAction ["<t size='1.2' color='#58D68D'>Resetear Blancos</t>", {
  params ["_target", "_caller", "_actionId", "_arguments"];
  {_x animate ["Terc", 0];} forEach _arguments;
}, _targetsInArea, 1.5, true, true, "", "", 2.5, false, "", ""];

_controller addAction ["<t size='1.2' color='#D4D658'>Comiencen (sonido)</t>", {
  params ["_target", "_caller", "_actionId", "_arguments"];
  _soundObj = createSoundSource ["FCLA_SFX_Shooting_Range_Alarm", getPos _target, [], 0];
  _soundClass = getText (configFile >> "CfgVehicles" >> "FCLA_SFX_Shooting_Range_Alarm" >> "sound");
  _soundDuration = getNumber (configFile >> "CfgSFX" >> _soundClass >> "duration");
  [{deleteVehicle _this}, _soundObj, _soundDuration] call CBA_fnc_waitAndExecute;
}, [], 1.5, true, true, "", "", 2.5, false, "", ""];


//Eliminar modulo.
deleteVehicle _module;
