class CBA_Extended_EventHandlers;

class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_SelfActions {
            class GVAR(place) {
                displayName = "Place SATCOM Antenna";
                condition = "'tfw_rf3080Item' in (items player + assignedItems player)";
                statement = [ARR_2(_player,'tfw_rf3080Item')] call FUNC(place);
                showDisabled = 0;
                priority = 2;
                icon = PATHTOF(data\icons\interact_icon.paa);
            };
        };
    };

    class Item_Base_F;
    class tfw_rf3080: Item_Base_F {
        author[] = {"Raspu"};
        scope = 2;
        scopeCurator = 2;
        displayName = "SATCOM Antenna";
		descriptionShort = "RF-3080-AT001";
		editorPreview = "";
        vehicleClass = "Items";
        class TransportItems {
            MACRO_ADDITEM(tfw_rf3080Item,1);
        };
    };

    class ThingX;
    class tfw_rf3080Object: ThingX {
        class EventHandlers {
            class CBA_Extended_EventHandlers: CBA_Extended_EventHandlers {};
			init = "_this execVM ('\y\tfw_radios\addons\rf3080\scripts\TXRXincr.sqf')";
        };

		ace_dragging_canDrag = 1;  // Can be dragged (0-no, 1-yes)
        ace_dragging_dragPosition[] = {0, 1.2, 0};  // Offset of the model from the body while dragging (same as attachTo)
        ace_dragging_dragDirection = 0;  // Model direction while dragging (same as setDir after attachTo)
        //EGVAR(dragging,canDrag) = 1;
        //EGVAR(dragging,dragPosition)[] = {0,1,0};
        //EGVAR(dragging,dragDirection) = 0;
		ace_dragging_cancarry = 1;
		ace_dragging_carryposition[] = {0, 1.2, 0};
		ace_dragging_carrydirection = 0;
        scope = 2;
        displayName = "SATCOM Antenna";
        model = PATHTOF(data\model\tfw_rf3080.p3d);
		editorPreview = "";
		
        class ACE_Actions {
            class ACE_MainActions {
                selection = "ace_interaction";
                distance = 5;
                condition = "true";

                class ACE_Pickup {
                    selection = "";
                    displayName = "Pickup SATCOM Antenna";
                    distance = 5;
                    condition = "true";
                    statement = [ARR_2(_player,_target)] call FUNC(pickup);
                    showDisabled = 0;
                    exceptions[] = {};
                    priority = 5;
                    icon = PATHTOF(data\icons\interact_icon.paa);
                };
            };
        };
    };
};
