
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra un dialogo que permite buscar armas, chalecos, uniformes, etc. según
 * el desplegable de búsqueda (izquierdo/derecho) del arsenal.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

#include "\A3\Ui_f\hpp\defineResinclDesign.inc"

#define defineBase\
	_mods = configSourceModList (configFile >> "CfgWeapons") ;\
	_ctrl = ctrlParent (_this select 0) displayCtrl (ctrlIDC (_this select 0)-IDC_RSCDISPLAYARSENAL_SORT+IDC_RSCDISPLAYARSENAL_LIST) ;\
	_curSel = _ctrl lbData lbCurSel _ctrl ;\
	_statsExtremes = uiNamespace getVariable "bis_fnc_arsenal_weaponStats";

#define SetModValue(Cfg) \
[_ctrl,_curSel,_mods] spawn {\
	params ["_ctrl","_curSel","_mods"] ;\
	lbSortByValue _ctrl ;\
	isNil {\
		for "_i" from 0 to lbSize _ctrl-1 do {\
			_data = _ctrl lbData _i ;\
			if (_data == _curSel) then {_ctrl lbSetCurSel _i} ;\
			if (_data != "") then {\
				_addons = (configSourceAddonList (configFile >> Cfg >> _data)) ;\
				_wpnMods = configSourceModList (configfile >> "CfgPatches" >> _addons select 0) ;\
				_mod = call {\
					if (count _wpnMods != 0) then {\
						_wpnMods select 0\
					} else {\
						""\
					}\
				} ;\
				_ctrl lbSetValue [_i,_mods find _mod] ;\
			} ;\
		} ;\
	} ;\
} ;

#define defineWpn\
	_wpnClass = (configFile >> "CfgWeapons" >> _data) ;\
	_mag = getArray (_wpnClass >> "magazines") ;\
	if (count _mag != 0) then {\
		_mag = _mag select 0 ;\
	} else {\
		_mag = "Default" ;\
	} ;\
	_magClass = (configFile >> "CfgMagazines" >> _mag) ;\
	_ammo = getText (_magClass >> "ammo") ;\
	private "_ammoClass" ;\
	if (_ammo != "") then {\
		_ammoClass = (configFile >> "CfgAmmo" >> _ammo) ;\
	} else {\
		_ammoClass = (configFile >> "CfgAmmo" >> "Default") ;\
	} ;

#define IDCS_LEFT\
	IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON,\
	IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON,\
	IDC_RSCDISPLAYARSENAL_TAB_HANDGUN,\
	IDC_RSCDISPLAYARSENAL_TAB_UNIFORM,\
	IDC_RSCDISPLAYARSENAL_TAB_VEST,\
	IDC_RSCDISPLAYARSENAL_TAB_BACKPACK,\
	IDC_RSCDISPLAYARSENAL_TAB_HEADGEAR,\
	IDC_RSCDISPLAYARSENAL_TAB_GOGGLES,\
	IDC_RSCDISPLAYARSENAL_TAB_NVGS,\
	IDC_RSCDISPLAYARSENAL_TAB_BINOCULARS,\
	IDC_RSCDISPLAYARSENAL_TAB_MAP,\
	IDC_RSCDISPLAYARSENAL_TAB_GPS,\
	IDC_RSCDISPLAYARSENAL_TAB_RADIO,\
	IDC_RSCDISPLAYARSENAL_TAB_COMPASS,\
	IDC_RSCDISPLAYARSENAL_TAB_WATCH,\
	IDC_RSCDISPLAYARSENAL_TAB_FACE,\
	IDC_RSCDISPLAYARSENAL_TAB_VOICE,\
	IDC_RSCDISPLAYARSENAL_TAB_INSIGNIA

#define IDCS_RIGHT\
	IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC,\
	IDC_RSCDISPLAYARSENAL_TAB_ITEMACC,\
	IDC_RSCDISPLAYARSENAL_TAB_ITEMMUZZLE,\
	IDC_RSCDISPLAYARSENAL_TAB_ITEMBIPOD,\
	IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG,\
	IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL,\
	IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW,\
	IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT,\
	IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC\

#define IDCS	[IDCS_LEFT,IDCS_RIGHT]



[missionNamespace,"arsenalOpened",{
	_this spawn {
		_disp = _this#0 ;
		{
			_ctrl = (_disp displayCtrl (IDC_RSCDISPLAYARSENAL_SORT + _x)) ;
			_ctrl ctrlAddEventHandler ["LBSelChanged",{
				if (_this#1 >= 2) then {
					defineBase
					_statsExtremes = uinamespace getvariable "bis_fnc_arsenal_weaponStats";
					_statsMin = _statsExtremes select 0;
					_statsMax = _statsExtremes select 1;
					for "_i" from 0 to lbSize _ctrl-1 do {
						_data = _ctrl lbData _i ;
						if (_data != "") then {
							_ctrl lbSetValue [_i,call {
								defineWpn
								if (_this#1 == 2) exitWith {
									_value = 0 ;
									{
										_value = _value max ((_wpnClass >> _x >> "reloadTime") call BIS_fnc_parseNumberSafe) ;
									} forEach getArray (_wpnClass >> "modes") ;
									(_value*100000)
								} ;
								if (_this#1 == 3) exitWith {
									_stats = [
										[configFile >> "CfgWeapons" >> _data],
										["dispersion"],[true],
										[_statsMin#1]
									] call bis_fnc_configExtremes ;
									_stats = _stats#1 ;
									100000+(_stats#0*10000)
								} ;
								if (_this#1 == 4) exitWith {
									100000-((_wpnClass >> "maxZeroing") call BIS_fnc_parseNumberSafe)
								} ;
								if (_this#1 == 5) exitWith {
									_stats = [
										[configFile >> "CfgWeapons" >> _data],
										["hit","initSpeed"],[true,false],
										[_statsMin#3,_statsMin#5]
									] call bis_fnc_configExtremes ;
									_stats = _stats#1 ;

									_statHit = linearConversion [_statsMin#3,_statsMax#3,_stats#0,0.01,1];
									_statInitSpeed = linearConversion [_statsMin#5,_statsMax#5,_stats#1,0.01,1];
									1000000-(sqrt((_statHit)^2 * (_statInitSpeed max 0))*10000)
								} ;
								if (_this#1 == 6) exitWith {
									1000000-((_wpnClass >> "WeaponSlotsInfo" >> "mass") call BIS_fnc_parseNumberSafe)
								} ;
							}] ;
						} ;
					} ;
					SetModValue("CfgWeapons")
				} ;
			}] ;
		} forEach [
			IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON,
			IDC_RSCDISPLAYARSENAL_TAB_HANDGUN
		] ;
		{
			_ctrl = (_disp displayCtrl (IDC_RSCDISPLAYARSENAL_SORT + _x)) ;
			_ctrl ctrlAddEventHandler ["LBSelChanged",{
				if (_this#1 >= 2) then {
					defineBase
					for "_i" from 0 to lbSize _ctrl-1 do {
						_data = _ctrl lbData _i ;
						if (_data != "") then {
							_ctrl lbSetValue [_i,call {
								defineWpn
								if (_this#1 == 2) exitWith {
									100000-((_wpnClass >> "maxZeroing") call BIS_fnc_parseNumberSafe)
								} ;
								if (_this#1 == 3) exitWith {
									_statsExtremes = uinamespace getvariable "bis_fnc_arsenal_weaponStats";
									_statsMin = _statsExtremes select 0;
									_statsMax = _statsExtremes select 1;
									_stats = [
										[configFile >> "CfgWeapons" >> _data],
										["hit"],[true],
										[_statsMin#3]
									] call bis_fnc_configExtremes ;
									_stats = _stats#1 ;

									_statHit = linearConversion [_statsMin#3,_statsMax#3,_stats#0,0.01,1];
									1000000-(_statHit*10000)
								} ;
								if (_this#1 == 4) exitWith {
									1000000-((_wpnClass >> "WeaponSlotsInfo" >> "mass") call BIS_fnc_parseNumberSafe)
								} ;
							}] ;
						} ;
					} ;
					SetModValue("CfgWeapons")
				} ;
			}] ;
		} forEach [
			IDC_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON
		] ;
		{
			_ctrl = (_disp displayCtrl (IDC_RSCDISPLAYARSENAL_SORT + _x)) ;
			_ctrl ctrlAddEventHandler ["LBSelChanged",{
				if (_this#1 >= 2) then {
					defineBase
					for "_i" from 0 to lbSize _ctrl-1 do {
						_data = _ctrl lbData _i ;
						if (_data != "") then {
							_ctrl lbSetValue [_i,call {
								_wpnClass = (configFile >> "CfgWeapons" >> _data) ;
								if (_this#1 == 2) exitWith {
									_value = 1 ;
									{
										_value = _value * ((_x >> "passThrough") call BIS_fnc_parseNumberSafe) ;
									} forEach ("true" configClasses (_wpnClass >> "ItemInfo" >> "HitpointsProtectionInfo")) ;
									_value*1000
								} ;
								if (_this#1 == 3) exitWith {
									_value = 1 ;
									{
										_value = _value max ((_x >> "armor") call BIS_fnc_parseNumberSafe) ;
									} forEach ("true" configClasses (_wpnClass >> "ItemInfo" >> "HitpointsProtectionInfo")) ;
									100000-_value*1000
								} ;
								if (_this#1 == 4) exitWith {
									1000000-((configFile >> "CfgVehicles" >> getText (_wpnClass >> "ItemInfo" >> "containerClass") >> "maximumLoad") call BIS_fnc_parseNumberSafe)
								} ;
								if (_this#1 == 5) exitWith {
									1000000-((_wpnClass >> "ItemInfo" >> "mass") call BIS_fnc_parseNumberSafe)
								} ;
							}] ;
						} ;
					} ;
					SetModValue("CfgWeapons")
				} ;
			}] ;
		} forEach [
			IDC_RSCDISPLAYARSENAL_TAB_UNIFORM,
			IDC_RSCDISPLAYARSENAL_TAB_VEST,
			IDC_RSCDISPLAYARSENAL_TAB_HEADGEAR
		] ;

		{
			_ctrl = (_disp displayCtrl (IDC_RSCDISPLAYARSENAL_SORT + _x)) ;
			_ctrl ctrlAddEventHandler ["LBSelChanged",{
				if (_this#1 >= 2) then {
					defineBase
					for "_i" from 0 to lbSize _ctrl-1 do {
						_data = _ctrl lbData _i ;
						if (_data != "") then {
							_ctrl lbSetValue [_i,call {
								_wpnClass = (configFile >> "CfgVehicles" >> _data) ;
								if (_this#1 == 2) exitWith {
									1000000-((_wpnClass >> "maximumLoad") call BIS_fnc_parseNumberSafe)
								} ;
								if (_this#1 == 3) exitWith {
									1000000-((_wpnClass >> "mass") call BIS_fnc_parseNumberSafe)
								} ;
							}] ;
						} ;
					} ;
					SetModValue("CfgVehicles")
				} ;
			}] ;
		} forEach [
			IDC_RSCDISPLAYARSENAL_TAB_BACKPACK
		] ;


		for "_i" from IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON to IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL do {
			_ctrl = (_disp displayCtrl (IDC_RSCDISPLAYARSENAL_SORT + _i)) ;
			_ctrl ctrlAddEventHandler ["LBSelChanged",{
				_ctrl = ctrlParent (_this#0) displayCtrl (ctrlIDC (_this#0)-IDC_RSCDISPLAYARSENAL_SORT+IDC_RSCDISPLAYARSENAL_LIST) ;
				for "_i" from 0 to lbSize _ctrl do {
					_ctrl lbSetColor [_i,[1,1,1,1]] ;
				} ;
			}] ;
			_ctrl = (_disp displayCtrl (IDC_RSCDISPLAYARSENAL_LIST + _i)) ;
		} ;

		for "_i" from IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON to IDC_RSCDISPLAYARSENAL_TAB_VOICE do {
			_ctrl = _disp displayCtrl (IDC_RSCDISPLAYARSENAL_ICON+_i) ;
			_ctrl ctrlAddEventHandler ["ButtonClick",{
				_ctrl = _this#0 ;
				_disp = ctrlParent _ctrl ;
				_ctrlSort = _disp displayCtrl (ctrlIDC _ctrl-IDC_RSCDISPLAYARSENAL_ICON+IDC_RSCDISPLAYARSENAL_SORT) ;
				_ctrlSort lbSetCurSel lbCurSel _ctrlSort ;
			}] ;

			_ctrl = _disp displayCtrl (IDC_RSCDISPLAYARSENAL_TAB+_i) ;
			_ctrl ctrlAddEventHandler ["ButtonClick",{
				_ctrl = _this#0 ;
				_disp = ctrlParent _ctrl ;
				_ctrlSort = _disp displayCtrl (ctrlIDC _ctrl-IDC_RSCDISPLAYARSENAL_TAB+IDC_RSCDISPLAYARSENAL_SORT) ;
				_ctrlSort lbSetCurSel lbCurSel _ctrlSort ;
			}] ;
			;
		} ;

		{
			_ctrl = IDCS#_forEachIndex ;
			_ctrl = _disp displayCtrl _ctrl+IDC_RSCDISPLAYARSENAL_SORT ;
			_ctrl lbSetCurSel _x ;
		} forEach (uiNamespace getVariable ["bis_fnc_arsenal_sort",[]]) ;

		_this#0 displayAddEventHandler ["KeyDown",{
			_disp = _this#0 ;
			if (_this#1 == 0x21 and (_this#3)) then {

				#define searchFnc(searchFrom,searchTo) _ctrlBase = _this select 0 ;\
					_disp2 = ctrlParent _ctrlBase ;\
					_disp = displayParent _disp2 ;\
					\
					_word = toLower ctrlText (_disp2 displayCtrl 1) ;\
					_mode = 0 ;\
					if (_word select [0,6] == "class ") then {\
						_mode = 1 ;\
						_word = (_word select [7]) ;\
					} ;\
					\
					if (_word == "") exitWith {} ;\
					\
					for "_i" from (searchFrom) to (searchTo) do {\
						_ctrl = (_disp displayCtrl (IDC_RSCDISPLAYARSENAL_LIST + _i)) ;\
						if (ctrlFade _ctrl == 0) exitWith {\
							if (_i in [\
								IDC_RSCDISPLAYARSENAL_TAB_CARGOMAG,\
								IDC_RSCDISPLAYARSENAL_TAB_CARGOTHROW,\
								IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT,\
								IDC_RSCDISPLAYARSENAL_TAB_CARGOMISC,\
								IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL\
							]) then {\
								_col = [1,0.5,0,1] ;\
								if (_mode == 0) then {\
									for "_i" from 0 to ((lnbSize _ctrl) select 0)-1 do {\
										if (_word in (toLower (_ctrl lnbText [_i,1]))) then {\
											_ctrl lnbSetValue [[_i,2],-9999] ;\
											_ctrl lnbSetColor [[_i,1],_col] ;\
										} else {\
											_ctrl lnbSetValue [[_i,2],9999] ;\
											_ctrl lnbSetColor [[_i,1],[1,1,1,0.5]] ;\
										} ;\
									} ;\
								} ;\
								if (_mode == 1) then {\
									for "_i" from 0 to ((lnbSize _ctrl) select 0)-1 do {\
										if (_word in (toLower (_ctrl lnbData [_i,1]))) then {\
											_ctrl lnbSetValue [[_i,2],-9999] ;\
											_ctrl lnbSetColor [[_i,1],_col] ;\
										} else {\
											_ctrl lnbSetValue [[_i,2],9999] ;\
											_ctrl lnbSetColor [[_i,1],[1,1,1,0.5]] ;\
										} ;\
									} ;\
								} ;\
								_ctrl lnbSortByValue [2] ;\
								_ctrl lnbSetCurSelRow 0 ;\
							} else {\
								_col = [1,0.5,0,1] ;\
								_found = false ;\
								_selectedFound = "#none" ;\
								if (_mode == 0) then {\
									for "_i" from 0 to lbSize _ctrl-1 do {\
										if (_word in (toLower (_ctrl lbText _i))) then {\
											_ctrl lbSetValue [_i,(_ctrl lbValue _i)-9999] ;\
											_ctrl lbSetColor [_i,_col] ;\
											_found = true ;\
											if (lbCurSel _ctrl == _i) then {\
												_selectedFound = _ctrl lbData _i ;\
											} ;\
										} else {\
											_ctrl lbSetValue [_i,(_ctrl lbValue _i)+9999] ;\
											_ctrl lbSetColor [_i,[1,1,1,0.5]] ;\
										} ;\
									} ;\
								} ;\
								if (_mode == 1) then {\
									for "_i" from 0 to lbSize _ctrl-1 do {\
										if (_word in (toLower (_ctrl lbData _i))) then {\
											_ctrl lbSetValue [_i,(_ctrl lbValue _i)-9999] ;\
											_ctrl lbSetColor [_i,_col] ;\
											_found = true ;\
											if (lbCurSel _ctrl == _i) then {\
												_selectedFound = _ctrl lbData _i ;\
											} ;\
										} else {\
											_ctrl lbSetValue [_i,(_ctrl lbValue _i)+9999] ;\
											_ctrl lbSetColor [_i,[1,1,1,0.5]] ;\
										} ;\
									} ;\
								} ;\
								_curSel = _ctrl lbData lbCurSel _ctrl ;\
								lbSortByValue _ctrl ;\
								if (_found and _selectedFound == "#none") then {\
									_ctrl lbSetCurSel 0 ;\
								} ;\
								for "_i" from 0 to lbSize _ctrl-1 do {\
									_value = _ctrl lbValue _i ;\
									call {\
										if (_value > 9000) exitWith {\
											_value = _value - 9999 ;\
										} ;\
										if (_value < -9000) exitWith {\
											_value = _value + 9999 ;\
										} ;\
									} ;\
									if ((_ctrl lbData _i == _curSel and !_found) || (_ctrl lbData _i == _selectedFound)) then {_ctrl lbSetCurSel _i} ;\
									_ctrl lbSetValue [_i,_value] ;\
								} ;\
							} ;\
						} ;\
					} ;\
					_disp2 closeDisplay 0 ;

				_disp2 = _disp createDisplay "RscDisplayEmpty" ;
				_disp2 ctrlCreate ["ctrlStaticBackgroundDisable",-1] ;
				_disp2 ctrlCreate ["ctrlStaticBackgroundDisableTiles",-1] ;

				_ctrl = _disp2 ctrlCreate ["RscBackground",-1] ;
				_ctrl ctrlSetPosition [0.5-0.4/2,0.4,0.4,0.1] ;
				_ctrl ctrlSetBackgroundColor [0,0,0,0.7] ;
				_ctrl ctrlCommit 0 ;

				_ctrl = _disp2 ctrlCreate ["RscEdit",1] ;
				_ctrl ctrlSetPosition [0.5-0.4/2+0.01,0.4+0.01,0.4-0.02,0.1-0.02] ;
				_ctrl ctrlSetFontHeight 0.05 ;
				_ctrl ctrlCommit 0 ;
				_ctrl ctrlAddEventHandler ["KeyDown",{
					if ((_this#1) == 0x1C and (_this#3)) exitWith {
						searchFnc(IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC,IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL)
					} ;
					if ((_this#1) == 0x1C) exitWith {
						searchFnc(IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON,IDC_RSCDISPLAYARSENAL_TAB_VOICE)
					} ;
				}] ;
				ctrlSetFocus _ctrl ;

				_ctrl = _disp2 ctrlCreate ["ctrlButton",2] ;
				_ctrl ctrlSetPosition [0.5-0.4/2,0.4+0.1+0.01,0.2,0.05] ;
				_ctrl ctrlSetText "Buscar (izquierda)" ;
				_ctrl ctrlSetTooltip "Buscara en el desplegable de la izquierda." ;
				_ctrl ctrlSetFont "PuristaMedium";
				_ctrl ctrlCommit 0 ;
				_ctrl ctrlAddEventHandler ["ButtonClick",{
					searchFnc(IDC_RSCDISPLAYARSENAL_TAB_PRIMARYWEAPON,IDC_RSCDISPLAYARSENAL_TAB_VOICE)
				}] ;

				_ctrl = _disp2 ctrlCreate ["ctrlButton",2] ;
				_ctrl ctrlSetPosition [0.5,0.4+0.1+0.01,0.2,0.05] ;
				_ctrl ctrlSetText "Buscar (derecha)" ;
				_ctrl ctrlSetTooltip "Buscara en el desplegable de la derecha." ;
				_ctrl ctrlSetFont "PuristaMedium" ;
				_ctrl ctrlCommit 0 ;
				_ctrl ctrlAddEventHandler ["ButtonClick",{
					searchFnc(IDC_RSCDISPLAYARSENAL_TAB_ITEMOPTIC,IDC_RSCDISPLAYARSENAL_TAB_CARGOMAGALL)
				}] ;
			} ;
		}] ;
	} ;
}] call BIS_fnc_addScriptedEventHandler;
