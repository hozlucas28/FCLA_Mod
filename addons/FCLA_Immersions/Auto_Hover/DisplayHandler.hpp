
/********************************************************************************|
|              CONTROLADORES DE PANTALLA - "PROPULSIÓN AUTOMÁTICA"               |
|********************************************************************************/

//Activa/Desactiva la propulsión automática.
["KeyDown", {
	params ["_displayOrControl", "_key", "_shift", "_ctrl", "_alt"];
	_player = call CBA_fnc_currentUnit;
	_inAirVehicle = (vehicle _player) isKindOf "Air";
	_disableAutoHover = if (isNil "FCLA_Auto_Hover") then {"Activated";} else {FCLA_Auto_Hover;};
	if ((_inAirVehicle) && (_disableAutoHover == "Deactivated") && ((_key in (actionKeys "AutoHover")) || (_key in (actionKeys "AutoHoverCancel")))) then {true;} else {false;};
}] call CBA_fnc_addDisplayHandler;
