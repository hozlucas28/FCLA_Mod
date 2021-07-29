
/********************************************************************************|
|                              "FCLA - DESARROLLO"                               |
|********************************************************************************/



/* -------------------------------- GENERAL -------------------------------- */

[
	"FCLA_Mission_Type", "LIST",
	["Misión", "Determina el tipo de misión, para asi inicializar automaticamente funciones/scripts según sea el tipo seleccionado. Algunas funciones/scripts solo\nfuncionaran si el tipo de misión seleccionado es el adecuado."],
	["FCLA Desarrollo","• General"],
	[
	 ["Not_assigned", "Oficial", "Training"],
	 ["Sin asignar", "Oficial", "Entrenamiento"], 0
	],
	GLOBAL,
	{[format ["FCLA Development (addon options) - Mission type = %1.", _this]] remoteExec ["diag_log", 2];},
	true
] call CBA_fnc_addSetting;


[
	"FCLA_TS_Channel_Name", "EDITBOX",
	["Canal de TeamSpeak", "Nombre del canal de TeamSpeak que se usara durante la misión."],
	["FCLA Desarrollo","• General"],
	"Servidor Oficial",
	GLOBAL,
	{
		tf_radio_channel_name = _this;
		[format ["FCLA Development (addon options) - TeamSpeak channel (name) = %1.", _this]] remoteExec ["diag_log", 2];
	},
	true
] call CBA_fnc_addSetting;


[
	"FCLA_TS_Channel_Password", "EDITBOX",
	["Contraseña del canal", "Contraseña del canal de TeamSpeak que se usara durante la misión."],
	["FCLA Desarrollo", "• General"],
	"12345",
	GLOBAL,
	{
		radio_channel_password = _this;
		[format ["FCLA Development (addon options) - TeamSpeak channel (password) = %1.", _this]] remoteExec ["diag_log", 2];
	},
	true
] call CBA_fnc_addSetting;


[
	"FCLA_Create_Diary", "CHECKBOX",
	["¿Crear diary?", "Al activar se creara una instrucción llamada 'Comunidad FCLA', disponible al abrir el mapa (sección superior izquierda), donde se podrán encontrar links e información útil sobre FCLA."],
	["FCLA Desarrollo", "• General"],
	true,
	GLOBAL,
	{
		[] spawn FCLA_Development_fnc_initDiarys;
		[format ["FCLA Development (addon options) - Create diary? = %1.", _this]] remoteExec ["diag_log", 2];
	},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_isPromotionDay", "CHECKBOX",
	["¿Día de ascensos?", "Al activar los jugadores se equiparan con un traje formal, a su vez las cajas de loadouts solo dispondran de una acción para equiparse con el traje.\n ¡ESTA OPCIÓN FUNCIONA SI EL TIPO DE MISIÓN ES DE ENTRENAMIENTO!"],
	["FCLA Desarrollo","• General"],
	false,
	GLOBAL,
	{
		if (FCLA_Mission_Type != "Training") exitWith {};
		[format ["FCLA Development (addon options) - Promotion day? = %1.", _this]] remoteExec ["diag_log", 2];
	},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Presentation_Video", "CHECKBOX",
	["¿Video de presentación?", "Si se activa al entrar al escenario se vera un video de presentación de la comunidad. ¡ESTA OPCIÓN FUNCIONA DE MANERA LOCAL!"],
	["FCLA Desarrollo", "• General"],
	true,
	LOCAL,
	{
		if (!(isNil "FCLA_Skip_Presentation_Video_addonOption")) exitWith {};
		cutText ["", "BLACK OUT"];
		"\FCLA_Data\Videos\Community_Presentation_1.ogv" call BIS_fnc_EXP_camp_playTimelineVideo;
		[{
			player setVariable ["FCLA_Presentation_Video_Finished", true, true];
			cutText ["", "BLACK IN", 5];
			[{player setVariable ["FCLA_Presentation_Video_Finished", nil, true];}, [], 5] call CBA_fnc_waitAndExecute;
		}, [], 40.5] call CBA_fnc_waitAndExecute;
	},
	true
] call CBA_fnc_addSetting;


[
	"FCLA_Donations_Message", "CHECKBOX",
	["¿Mensaje de donaciones?", "Al activar se generara un mensaje en forma de recordatorio sobre las donaciones al servidor, el cual se repetira según el tiempo indicado debajo."],
	["FCLA Desarrollo", "• General"],
	true,
	GLOBAL,
	{
		[format ["FCLA Development (addon options) - Donations message? = %1.", _this]] remoteExec ["diag_log", 2];
	},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Donations_Message_Delay", "SLIDER",
	["Delay (mensaje de donaciones)", "Tiempo en minutos para que vuelva a aparecer el mensaje."],
	["FCLA Desarrollo", "• General"],
	[15, 90, 45, 0],
	GLOBAL,
	{[format ["FCLA Development (addon options) - Donations message delay = %1.", _this]] remoteExec ["diag_log", 2];},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Save_Position_onDisconnect", "CHECKBOX",
	["¿Guardar ultima ubicación?", "Al activar se guardara la ultima ubicación del jugador antes de su desconexión, hasta que el server se reinicie."],
	["FCLA Desarrollo", "• General"],
	true,
	GLOBAL,
	{[format ["FCLA Development (addon options) - Save position on disconnect = %1.", _this]] remoteExec ["diag_log", 2];},
	true
] call CBA_fnc_addSetting;


[
	"FCLA_Show_Client_FPS", "CHECKBOX",
	["¿Mostrar FPS de los jugadores?", "Al activar se mostraran los FPS de los jugadores, resaltando aquellos con menos de 18 FPS. ¡ESTA OPCIÓN FUNCIONA DE MANERA LOCAL!"],
	["FCLA Desarrollo", "• General"],
	false,
	LOCAL,
	{if (_this) then {[] spawn FCLA_Development_fnc_initShowFPS;};},
	false
] call CBA_fnc_addSetting;



/* --------------------------------- UIDS ---------------------------------- */

[
	"FCLA_customVest_UID_Lorflord", "EDITBOX",
	["Lorflord", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198153898683",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_customVest_UID_Kovalsky", "EDITBOX",
	["Kovalsky", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198010584812",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_customVest_UID_Byron", "EDITBOX",
	["Byron", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198178496662",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_customVest_UID_Legion", "EDITBOX",
	["Legion", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561197982853635",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_customVest_UID_hozLucas", "EDITBOX",
	["Lucas28", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198137876583",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_customVest_UID_Naretick", "EDITBOX",
	["Naretick", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198059595506",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_customVest_UID_Sagara", "EDITBOX",
	["Sagara", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198173170422",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_customVest_UID_Ghostkiller", "EDITBOX",
	["Ghostkiller", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198304995327",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;
