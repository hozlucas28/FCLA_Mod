
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite desactivar la propulsión automática que poseen los helicópteros.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["KeyDown", {
	params ["_displayOrControl", "_key", "_shift", "_ctrl", "_alt"];
  _disableAutoHover = toUpper (missionNamespace getVariable ["FCLA_Auto_Hover", "Activated"]);
	if ((_disableAutoHover == "DEACTIVATED") && ((_key in (actionKeys "AutoHover")) || (_key in (actionKeys "AutoHoverCancel")))) then {true;} else {false;};
}] call CBA_fnc_addDisplayHandler;
