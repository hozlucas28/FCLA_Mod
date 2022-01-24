
/********************************************************************************|
|              CONTROLADORES DE PANTALLA - "PROPULSIÓN AUTOMÁTICA"               |
|********************************************************************************/

//Activa/Desactiva la propulsión automática.
["KeyDown", {
	params ["_displayOrControl", "_key", "_shift", "_ctrl", "_alt"];
	_player = call CBA_fnc_currentUnit;
	_inAirVehicle = (vehicle _player) isKindOf "Air";
  _disableAutoHover = toUpper (missionNamespace getVariable ["FCLA_Auto_Hover", "Activated"]);
	if ((_inAirVehicle) && (_disableAutoHover == "DEACTIVATED") && ((_key in (actionKeys "AutoHover")) || (_key in (actionKeys "AutoHoverCancel")))) then {true;} else {false;};
}] call CBA_fnc_addDisplayHandler;
