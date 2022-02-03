
/********************************************************************************|
|                               "FCLA DESARROLLO"                                |
|********************************************************************************/



/* -------------------------------- GENERAL -------------------------------- */

[
	"FCLA_Mission_Type", "LIST",
	["Mision", "Determina el tipo de mision, para asi inicializar automaticamente funciones/scripts segun sea el tipo seleccionado. Algunas funciones/scripts solo\nfuncionaran si el tipo de mision seleccionado es el adecuado."],
	["FCLA Desarrollo", "[ x ] General"],
	[
	 ["Not_assigned", "Oficial", "Training"],
	 ["Sin asignar", "Oficial", "Entrenamiento"], 0
	],
	GLOBAL,
	{},
	true
] call CBA_fnc_addSetting;


[
	"FCLA_TS_Channel_Name", "EDITBOX",
	["Canal de TeamSpeak", "Nombre del canal de TeamSpeak que se usara durante la mision."],
	["FCLA Desarrollo", "[ x ] General"],
	"Servidor Oficial",
	GLOBAL,
	{["TF_Radio_Channel_Name", _this] call CBA_fnc_publicVariable;},
	true
] call CBA_fnc_addSetting;


[
	"FCLA_TS_Channel_Password", "EDITBOX",
	["Contrasena del canal", "Contrasena del canal de TeamSpeak que se usara durante la mision."],
	["FCLA Desarrollo", "[ x ] General"],
	"12345",
	GLOBAL,
	{["Radio_Channel_Password", _this] call CBA_fnc_publicVariable;},
	true
] call CBA_fnc_addSetting;


[
	"FCLA_Donations_Message", "CHECKBOX",
	["Mensaje de donaciones", "Al activar se generara un mensaje en forma de recordatorio sobre las donaciones al servidor, el cual se repetira segun el tiempo indicado debajo."],
	["FCLA Desarrollo", "[ x ] General"],
	true,
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Donations_Message_Delay", "SLIDER",
	["Delay (mensaje de donaciones)", "Tiempo en minutos para que vuelva a aparecer el mensaje."],
	["FCLA Desarrollo", "[ x ] General"],
	[15, 90, 45, 0],
	GLOBAL,
	{},
	true
] call CBA_fnc_addSetting;



/* --------------------------------- UIDS ---------------------------------- */

[
	"FCLA_Commanders_UIDs", "EDITBOX",
	["Mandos", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	#include "\FCLA_Core\PreInit\includes\Commanders.hpp",
	GLOBAL,
	{FCLA_Commanders_UIDs = parseSimpleArray ([_this, """", "'"] call CBA_fnc_replace);},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Editors_UIDs", "EDITBOX",
	["Editores", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	#include "\FCLA_Core\PreInit\includes\Editors.hpp",
	GLOBAL,
	{FCLA_Editors_UIDs = parseSimpleArray ([_this, """", "'"] call CBA_fnc_replace);},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Instructors_UIDs", "EDITBOX",
	["Instructores", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	#include "\FCLA_Core\PreInit\includes\Instructors.hpp",
	GLOBAL,
	{FCLA_Instructors_UIDs = parseSimpleArray ([_this, """", "'"] call CBA_fnc_replace);},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Lorflord_UID", "EDITBOX",
	["Lorflord", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198153898683",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Kovalsky_UID", "EDITBOX",
	["Kovalsky", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198010584812",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Byron_UID", "EDITBOX",
	["Byron", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198178496662",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Legion_UID", "EDITBOX",
	["Legion", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561197982853635",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_hozlucas28_UID", "EDITBOX",
	["Lucas28", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198137876583",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Naretick_UID", "EDITBOX",
	["Naretick", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198059595506",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Sagara_UID", "EDITBOX",
	["Sagara", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198173170422",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Ghostkiller_UID", "EDITBOX",
	["Ghostkiller", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198304995327",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;


[
	"FCLA_Mario_UID", "EDITBOX",
	["Mario", "Si no sabes que es esto, no lo modifiques."],
	["FCLA Desarrollo", "UIDs"],
	"76561198260536786",
	GLOBAL,
	{},
	false
] call CBA_fnc_addSetting;
