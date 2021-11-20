
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si el vehículo, enviado como argumento 0, cuenta con visión
 * nocturna/térmica en cualquiera de sus asientos (comandante, artillero, etc.).
 *
 * Arguments:
 *            0: Classname del vehículo a verificar. <STRING>
 *            1: ¿Excluir visión térmica?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * ¿Cuenta con visión nocturna/térmica? <BOOL>
 *
 * Note:
 * Funciona con los coches, los vehículos de personal y las torretas (no VANTs).
 *
 * Examples:
 *             //Visión térmica incluida.
 *             ["B_MRAP_01_hmg_F"] call FCLA_Common_fnc_checkVehicleVisionModes;
 *
 *             //Visión térmica excluida.
 *             ["B_MRAP_01_hmg_F", true] call FCLA_Common_fnc_checkVehicleVisionModes;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

/*

FALTA LISTARLO EN LAS FUNCIONES Y EN LA WIKI


fnc_Test_FCLA = {
  params [
          ["_unit", objNull, [objNull, teamMemberNull], 0],
          ["_excludeTi", false, [true], 0]
         ];

  private ["_result", "_findRecurse", "_class"];
	_findRecurse = {
		private ["_root", "_class", "_path", "_currentPath"];
		_root = (_this select 0);
		_path = +(_this select 1);
		for "_i" from 0 to count _root -1 do {
			_class = _root select _i;
			if (isClass _class) then {
				_currentPath = _path + [_i];
				{
          _result set [count _result, _class];
					_result set [count _result, _currentPath];
				} forEach getArray (_class >> "weapons");
				_class = _class >> "turrets";
				if (isClass _class) then {
					[_class, _currentPath] call _findRecurse;
				};
			};
		};
	};

  _result = [];
  _conditions = [];
  _vehicle = vehicle _unit;
  _typeOfVehicle = typeOf _vehicle;
  if (_vehicle == _unit) exitWith {false};
	_class = configFile >> "CfgVehicles" >> _typeOfVehicle >> "turrets";
	[_class, []] call _findRecurse;

  _turret = _result findIf {_x isEqualTo (_vehicle unitTurret _unit)};
  if (_turret <= -1) exitWith {
    _subClasses = (configFile >> "CfgVehicles" >> _typeOfVehicle >> "DriverOpticsIn") call BIS_fnc_getCfgSubClasses;
    if (((driver _vehicle) != _unit) || (_subClasses isEqualTo [])) exitWith {false};
    {
      _haveNightVision = ("NVG" in (getArray (configFile >> "CfgVehicles" >> _typeOfVehicle >> "DriverOpticsIn" >> _x >> "visionMode")));
      _haveTermicVision = ("TI" in (getArray (configFile >> "CfgVehicles" >> _typeOfVehicle >> "DriverOpticsIn" >> _x >> "visionMode"))) && ((getArray (configFile >> "CfgVehicles" >> _typeOfVehicle >> "DriverOpticsIn" >> _x >> "thermalMode")) isNotEqualTo []);
      _conditions pushBack ((_haveNightVision) || ((!_excludeTi) && (_haveTermicVision)));
    } forEach _subClasses;
    true in _conditions;
  };



  _cfgPatch = _result select (_turret - 1);
  _cfgPatch = [[_cfgPatch], "", {(str _x) + _accumulator}] call CBA_fnc_inject;
  _cfgPatch = [_cfgPatch, "bin\config.bin/CfgVehicles", ""] call CBA_fnc_replace;
  _cfgPatch = _cfgPatch splitString "/";




  _haveNightVision = ("NVG" in (getArray (configFile >> "CfgVehicles" >> _typeOfVehicle >> "Turrets" >> (_cfgPatch select 2) >> "ViewOptics" >> "visionMode")));
  _haveTermicVision = ("TI" in (getArray (configFile >> "CfgVehicles" >> _typeOfVehicle >> "Turrets" >> (_cfgPatch select 2) >> "ViewOptics" >> "visionMode"))) && ((getArray (configFile >> "CfgVehicles" >> _typeOfVehicle >> "Turrets" >> (_cfgPatch select 2) >> "ViewOptics" >> "thermalMode")) isNotEqualTo []);
  _return = (_haveNightVision) || ((!_excludeTi) && (_haveTermicVision));



  if (!_return) then {
    _subClasses = (configFile >> "CfgVehicles" >> _typeOfVehicle >> "Turrets" >> (_cfgPatch select 2) >> "OpticsIn") call BIS_fnc_getCfgSubClasses;
    if (_subClasses isEqualTo []) exitWith {false};
    {
      _haveNightVision = ("NVG" in (getArray (configFile >> "CfgVehicles" >> _typeOfVehicle >> "Turrets" >> (_cfgPatch select 2) >> "OpticsIn" >> _x >> "visionMode")));
      _haveTermicVision = (("TI" in (getArray (configFile >> "CfgVehicles" >> _typeOfVehicle >> "Turrets" >> (_cfgPatch select 2) >> "OpticsIn" >> _x >> "visionMode"))) || ("Ti" in (getArray (configFile >> "CfgVehicles" >> _typeOfVehicle >> "Turrets" >> (_cfgPatch select 2) >> "OpticsIn" >> _x >> "visionMode")))) && ((getArray (configFile >> "CfgVehicles" >> _typeOfVehicle >> "Turrets" >> (_cfgPatch select 2) >> "OpticsIn" >> _x >> "thermalMode")) isNotEqualTo []);
      _conditions pushBack ((_haveNightVision) || ((!_excludeTi) && (_haveTermicVision)));
    } forEach _subClasses;
    true in _conditions;
  } else {_return};
};

[player] call fnc_Test_FCLA;

*/
