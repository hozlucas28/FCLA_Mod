class CfgPatches
{
	class tfw_radios_rf3080
	{
		units[]=
		{
			"tfw_rf3080",
			"tfw_rf3080Object"
		};
		weapons[]=
		{
			"tfw_rf3080Item"
		};
		requiredVersion=1;
		requiredAddons[]=
		{
			"task_force_radio",
			"task_force_radio_items",
			"ace_apl",
			"ace_interaction"
		};
		author="Raspu";
		version="1.1.0.0";
		versionStr="1.1.0.0";
		versionAr[]={1,1,0,0};
	};
};
class Extended_PreStart_EventHandlers
{
	class tfw_radios_rf3080
	{
		init="call compile preProcessFileLineNumbers '\y\tfw_radios\addons\rf3080\XEH_preStart.sqf'";
	};
};
class Extended_PreInit_EventHandlers
{
	class tfw_radios_rf3080
	{
		init="call compile preProcessFileLineNumbers '\y\tfw_radios\addons\rf3080\XEH_preInit.sqf'";
	};
};
class Extended_PostInit_EventHandlers
{
	class tfw_radios_rf3080
	{
		init="call compile preProcessFileLineNumbers '\y\tfw_radios\addons\rf3080\XEH_postInit.sqf'";
	};
};
class Extended_Init_EventHandlers
{
	class tfw_rf3080Object
	{
		class tfw_radios_rf3080
		{
			init="_this call tfw_radios_dragging_fnc_initObject";
		};
	};
};
class CBA_Extended_EventHandlers;
class CfgVehicles
{
	class Man;
	class CAManBase: Man
	{
		class ACE_SelfActions
		{
			class tfw_radios_rf3080_place
			{
				displayName="Place SATCOM Antenna";
				condition="'tfw_rf3080Item' in (items player + assignedItems player)";
				statement="[_player, 'tfw_rf3080Item'] call tfw_radios_rf3080_fnc_place";
				showDisabled=0;
				priority=2;
				icon="\y\tfw_radios\addons\rf3080\data\icons\interact_icon.paa";
			};
		};
	};
	class Item_Base_F;
	class tfw_rf3080: Item_Base_F
	{
		author[]=
		{
			"Raspu"
		};
		scope=2;
		scopeCurator=2;
		displayName="SATCOM Antenna";
		descriptionShort="RF-3080-AT001";
		editorPreview="";
		vehicleClass="Items";
		class TransportItems
		{
			class _xx_tfw_rf3080Item
			{
				name="tfw_rf3080Item";
				count=1;
			};
		};
	};
	class ThingX;
	class tfw_rf3080Object: ThingX
	{
		class EventHandlers
		{
			class CBA_Extended_EventHandlers: CBA_Extended_EventHandlers
			{
			};
			init="_this execVM ('\y\tfw_radios\addons\rf3080\scripts\TXRXincr.sqf')";
		};
		ace_dragging_canDrag=1;
		ace_dragging_dragPosition[]={0,1.2,0};
		ace_dragging_dragDirection=0;
		ace_dragging_cancarry=1;
		ace_dragging_carryposition[]={0,1.2,0};
		ace_dragging_carrydirection=0;
		scope=2;
		displayName="SATCOM Antenna";
		model="\y\tfw_radios\addons\rf3080\data\model\tfw_rf3080.p3d";
		editorPreview="";
		class ACE_Actions
		{
			class ACE_MainActions
			{
				selection="ace_interaction";
				distance=5;
				condition=1;
				class ACE_Pickup
				{
					selection="";
					displayName="Pickup SATCOM Antenna";
					distance=5;
					condition=1;
					statement="[_player, _target] call tfw_radios_rf3080_fnc_pickup";
					showDisabled=0;
					exceptions[]={};
					priority=5;
					icon="\y\tfw_radios\addons\rf3080\data\icons\interact_icon.paa";
				};
			};
		};
	};
};
class CfgWeapons
{
	class ACE_ItemCore;
	class InventoryItem_Base_F;
	class tfw_rf3080Item: ACE_ItemCore
	{
		author[]=
		{
			"Raspu"
		};
		scope=2;
		displayName="SATCOM Antenna";
		descriptionShort="RF-3080-AT001";
		model="\y\tfw_radios\addons\rf3080\data\model\rf3080_item.p3d";
		picture="\y\tfw_radios\addons\rf3080\data\icons\icon_rf3080.paa";
		editorPreview="\y\tfw_radios\addons\rf3080\data\editorui\rf3080.jpg";
		class ItemInfo: InventoryItem_Base_F
		{
			mass=58;
		};
	};
};
