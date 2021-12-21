
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Agrega una acción al dispositivo, enviado como argumento 0, para hacekearlo.
 *
 * Arguments:
 *            0: Dispositivo al que se le asociara la acción. <OBJECT|VEHICLE>
 *            1: Título de la acción, opcional. <STRING> (default: "Hackear dispositivo")
 *            2: Imagen de la acción, opcional. <STRING> (default: "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa")
 *            3: ¿Se necesita un dispositivo de hackeo?, opcional. <BOOL> (default: true)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Examples:
 *             //Opcionales no definidos.
 *            [Laptop_1] call FCLA_Common_fnc_hackDevice;
 *
 *             //Opcionales definidos.
 *            [Laptop_1, "Título personalizado", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_requestleadership_ca.paa", false] call FCLA_Common_fnc_hackDevice;
 *
 * Notes:
 * Cuando el dispositivo esta siendo hackeado se le asigna la
 * variable de tipo objeto "FCLA_Hacking" con el valor <true>.
 *
 * Una vez el dispositivo sea hackeado se le asociara la variable de
 * tipo objeto "FCLA_Hacked" con el valor <true>. Por defecto la variable de
 * tipo objeto mencionada no tendra valor, es decir, nulo.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_device", objNull, [objNull], 0],
        ["_title", "Hackear dispositivo", [""], 0],
        ["_actionPicture", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa", [""], 0],
        ["_needHackingDevice", true, [true], 0]
       ];
if ((isNull _device) || (_title == "")) exitWith {false};



//Crear acción.
[
	_device,
	_title,
	_actionPicture,
	_actionPicture,
	"(alive _target) && (_this distance _target <= 2.5) && !(_target getVariable ['FCLA_Hacking', false]) && !(_target getVariable ['FCLA_Hacked', false]) && !([_this, [1, 2, 3, 5, 15, 16]] call FCLA_Common_fnc_severalConditions)",
	"(alive _target) && (_caller distance _target <= 2.5) && ((!(_arguments select 0)) || ([_caller, 'FCLA_Hacking_Device'] call BIS_fnc_hasItem)) && !(_target getVariable ['FCLA_Hacking', false]) && !(_target getVariable ['FCLA_Hacked', false]) && !([_caller, [1, 2, 3, 5, 15, 16]] call FCLA_Common_fnc_severalConditions)",
	{},
	{},
	{ //Sentencias al completar.
		params ["_target", "_caller", "_actionId", "_arguments"];
    _target setVariable ["FCLA_Hacking", true, true];
    disableSerialization;


    //Crear display.
    _display = (findDisplay 46) createDisplay "RscDisplayEmpty";
    _ctrlBackground = _display ctrlCreate ["RscPicture", -1];
    _ctrlHackingLines = _display ctrlCreate ["RscStructuredText", -1];
    _ctrlWritingBox = _display ctrlCreate ["RscText", -1];
    _ctrlFakeBox = _display ctrlCreate ["RscEdit", -1];
    _ctrlBoxToWrite = _display ctrlCreate ["RscEdit", -1];
    _ctrlIntroductoryVideo = _display ctrlCreate ["RscVideo", -1];
    _ctrlEndingVideo = _display ctrlCreate ["RscVideo", -1];


    //Posición de los controles.
    _ctrlWritingBox ctrlSetPosition [0.29375 * safezoneW + safezoneX, 0.753 * safezoneH + safezoneY, 0.4125 * safezoneW, 0.022 * safezoneH];
    _ctrlFakeBox ctrlSetPosition [0.29375 * safezoneW + safezoneX, 0.753 * safezoneH + safezoneY, 0.4125 * safezoneW, 0.022 * safezoneH];
    _ctrlBoxToWrite ctrlSetPosition [0.29375 * safezoneW + safezoneX, 0.753 * safezoneH + safezoneY, 0.4125 * safezoneW, 0.022 * safezoneH];
    _ctrlBackground ctrlSetPosition [0.0565625 * safezoneW + safezoneX, -0.53 * safezoneH + safezoneY, 0.892031 * safezoneW, 2.26 * safezoneH];
    _ctrlHackingLines ctrlSetPosition [0.29375 * safezoneW + safezoneX, 0.225 * safezoneH + safezoneY, 0.4125 * safezoneW, 0.528 * safezoneH];
    _ctrlIntroductoryVideo ctrlSetPosition [0.29375 * safezoneW + safezoneX, 0.225 * safezoneH + safezoneY, 0.4125 * safezoneW, 0.528 * safezoneH];
    _ctrlEndingVideo ctrlSetPosition [0.29375 * safezoneW + safezoneX, 0.225 * safezoneH + safezoneY, 0.4125 * safezoneW, 0.528 * safezoneH];
    _ctrlWritingBox ctrlCommit 0;
    _ctrlFakeBox ctrlCommit 0;
    _ctrlBoxToWrite ctrlCommit 0;
    _ctrlBackground ctrlCommit 0;
    _ctrlHackingLines ctrlCommit 0;
    _ctrlIntroductoryVideo ctrlCommit 0;
    _ctrlEndingVideo ctrlCommit 0;


    //Color de los controles.
    _ctrlWritingBox ctrlSetTextColor [0, 1, 0, 1];
    _ctrlFakeBox ctrlSetTextColor [0, 0, 0, 0];
    _ctrlBoxToWrite ctrlSetTextColor [0, 1, 0, 1];
    _ctrlHackingLines ctrlSetTextColor [0, 1, 0, 1];


    //Contenido de los controles.
    _savedInsignia = _caller getVariable ["FCLA_Insignia", FCLA_Default_Patche];
    _hackingLaptopPatch = switch (toUpper _savedInsignia) do {
      case "FCLA_TAKANA": {"\FCLA_Common\data\Hacking_Laptop_Takana.paa"};
      case "FCLA_JAGUAR": {"\FCLA_Common\data\Hacking_Laptop_Jaguar.paa"};
      case "FCLA_CONDOR": {"\FCLA_Common\data\Hacking_Laptop_Condor.paa"};
      case "FCLA_SALAMANDRA": {"\FCLA_Common\data\Hacking_Laptop_Salamandra.paa"};
      case "FCLA_ANACONDA": {"\FCLA_Common\data\Hacking_Laptop_Anaconda.paa"};
      case "FCLA_QUETZAL": {"\FCLA_Common\data\Hacking_Laptop_Quetzal.paa"};
      default {"\FCLA_Common\data\Hacking_Laptop_FCLA.paa"};
    };
    _ctrlBoxToWrite ctrlSetText "> Press any key to write...";
    _ctrlBackground ctrlSetText _hackingLaptopPatch;
    _ctrlHackingLines ctrlSetFontHeight 0.035;


    //Evenhanthandler para detectar el teclado.
    _ctrlBoxToWrite ctrlSetEventHandler ["KeyUp","
      params ['_displayOrControl', '_key', '_shift', '_ctrl', '_alt'];
      _unit = call CBA_fnc_currentUnit;
      _lastLetterNumber = _unit getVariable ['FCLA_Letter_Number', 0];
      _displayOrControl ctrlSetTextColor [0, 0, 0, 0];
      _unit setVariable ['FCLA_Letter_Number', _lastLetterNumber + 1, true];
    "];


    //Reproducir video introductorio.
    ctrlSetFocus _ctrlFakeBox;
    _ctrlBoxToWrite ctrlShow false;
    _ctrlIntroductoryVideo ctrlSetText "\FCLA_Data\Videos\Hacking_Initialized_Without_Sound.ogv";
    [{
      (_this select 0) ctrlSetFade 1;
      (_this select 0) ctrlCommit 1;
      [{_this ctrlShow true; ctrlSetFocus _this;}, _this select 1, 1] call CBA_fnc_waitAndExecute;
    }, [_ctrlIntroductoryVideo, _ctrlBoxToWrite], 10] call CBA_fnc_waitAndExecute;
    [_caller, "FCLA_Hacking_Initialized", nil, 25] call FCLA_Common_fnc_globalSay3D;


    //Bloquear movilidad y posicionar laptop.
    [_caller, "amovpercmstpslowwrfldnon_amovpsitmstpslowwrfldnon", "switchMove"] call FCLA_Common_fnc_playAnimation;
    [{
      params ["_caller", "_display"];
      (!isNull _display) && ((animationState _caller) != "amovpercmstpslowwrfldnon_amovpsitmstpslowwrfldnon");
    }, {
      params ["_caller", "_display"];
      _laptop = createVehicle ["Land_Laptop_03_black_F", getPos _caller, [], 0, "CAN_COLLIDE"];
      _laptop attachTo [_caller, [-0.08, 0.39, 0.365]];
      _laptop allowDamage false;
      _laptop enableSimulationGlobal false;
      _laptop setVectorDirAndUp [[-0.25, 0.989465, 0], [0, 0, 1]];
      _caller setVariable ["FCLA_Current_Hacking_Laptop", _laptop, true];
      [_caller, "ACE_HandcuffedFFV", "switchMove"] call FCLA_Common_fnc_playAnimation;
    }, [_caller, _display]] call CBA_fnc_waitUntilAndExecute;


    //Condicional para interrumpir hackeo.
    [{
      params ["_target", "_caller", "_arguments", "_display"];
      _tooFar = _caller distance _target > 3;
      _areNotAlive = (!alive _target) || (!alive _caller);
      _alreadyHacked = _target getVariable ['FCLA_Hacked', false];
      _hasNotHackDevice = (_arguments select 0) && !([_caller, "FCLA_Hacking_Device"] call BIS_fnc_hasItem);
      _severalConditions = [_caller, [1, 2, 3, 5, 15, 16]] call FCLA_Common_fnc_severalConditions;
      (isNull _display) || (_tooFar) || (_areNotAlive) || (_alreadyHacked) || (_hasNotHackDevice) || (_severalConditions);
    }, {
      params ["_target", "_caller", "_arguments", "_display"];
      if ((isNull _display) || (_target getVariable ['FCLA_Hacked', false])) exitWith {};
      _display closeDisplay 1;
    }, [_target, _caller, _arguments, _display]] call CBA_fnc_waitUntilAndExecute;


    //Colocar código a medida que se teclea.
    _linesOnDisplay = [];
    _numberOfLinesDisplayed = 0;
    _linesOfCode = (loadFile "\FCLA_Common\functions\Hack_Device\codes\Hacking_Lines.txt") splitString "@";
    _numberOfLines = count _linesOfCode;

    while {(alive _target) && (!isNull _display) && (_numberOfLinesDisplayed < _numberOfLines) && (_caller distance _target < 2.5) && ((!(_arguments select 0)) || ([_caller, "FCLA_Hacking_Device"] call BIS_fnc_hasItem)) && !([_caller] call FCLA_Common_fnc_severalConditions)} do {
    	_lineToWrite = _linesOfCode select _numberOfLinesDisplayed;
      _lastLetterNumber = _caller getVariable ['FCLA_Letter_Number', 0];
    	_lastWritten = _lineToWrite select [0, _lastLetterNumber];
      _numberOfLettersOfLineToWrite = count (toArray _lineToWrite);
      _numberOfLettersOfLastWritten = count (toArray _lastWritten);

      if ((_numberOfLettersOfLastWritten) == (_numberOfLettersOfLineToWrite)) then {
        _numberOfLinesDisplayed = _numberOfLinesDisplayed + 1;
        _caller setVariable ['FCLA_Letter_Number', nil, true];
        _ctrlHackingLines ctrlSetStructuredText (composeText _linesOnDisplay);

        if ((_numberOfLinesDisplayed + 1) > _numberOfLines) exitWith {_linesOnDisplay append [_lineToWrite, linebreak];};
        _linesOnDisplay append [_lineToWrite, linebreak, (_linesOfCode select (_numberOfLinesDisplayed + 1)), linebreak];
      } else {
        _ctrlWritingBox ctrlSetText _lastWritten;
      };
    };


    //Reproducir video de finalización si el hackeo se completo.
    if (_numberOfLinesDisplayed >= _numberOfLines) then {
      _ctrlBoxToWrite ctrlShow false;
      _ctrlHackingLines ctrlShow false;
      _target setVariable ["FCLA_Hacked", true, true];
      _ctrlEndingVideo ctrlSetText "\FCLA_Data\Videos\Hacking_Initialized_Without_Sound.ogv";
      [_caller, "FCLA_Hacking_Initialized", nil, 25] call FCLA_Common_fnc_globalSay3D;
      [_target, _actionId] remoteExec ["BIS_fnc_holdActionRemove", 0, true];

      [{
        (_this select 4) ctrlSetFade 1;
        (_this select 4) ctrlCommit 0.5;
        [{
          params ["_target", "_caller", "_actionId", "_ctrlHackingLines"];
          _ctrlHackingLines ctrlShow true;
          _ctrlHackingLines ctrlSetStructuredText parseText format [loadFile "\FCLA_Common\functions\Hack_Device\codes\Hack_Completed.txt", name _caller, "%"];
        }, _this, 1] call CBA_fnc_waitAndExecute;
      }, [_target, _caller, _actionId, _ctrlHackingLines, _ctrlEndingVideo], 10] call CBA_fnc_waitAndExecute;
    };


    //Devolver movilidad y eliminar laptop.
    [{isNull (_this select 1)}, {
      deleteVehicle ((_this select 0) getVariable ["FCLA_Current_Hacking_Laptop", objNull]);
      (_this select 0) setVariable ["FCLA_Current_Hacking_Laptop", nil, true];
      [_this select 0, "amovpsitmstpslowwrfldnon_amovpercmstpslowwrfldnon", 2] call ACE_Common_fnc_doAnimation;
    }, [_caller, _display]] call CBA_fnc_waitUntilAndExecute;


    //Eliminar variables de tipo objeto.
    _target setVariable ["FCLA_Hacking", nil, true];
    _caller setVariable ["FCLA_Letter_Number", nil, true];
	},
	{ //Sentencias al interrumpirse.
    params ["_target", "_caller", "_actionId", "_arguments"];
    if ((!(_arguments select 0)) || ([_caller, "FCLA_Hacking_Device"] call BIS_fnc_hasItem)) exitWith {};
    _line = ["[Sistema]", "Se necesita un dispositivo de hackeo."];
    ["FCLA_Show_Subtitles", [objNull, [_line], "System", 3], _caller] call CBA_fnc_targetEvent;
  },
	[_needHackingDevice],
	1,
	1.5,
	false,
	false,
	true
] remoteExec ["BIS_fnc_holdActionAdd", 0, _device];
true
