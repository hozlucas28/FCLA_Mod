class CfgWeapons {
    class ACE_ItemCore;
    class InventoryItem_Base_F;

    class tfw_rf3080Item: ACE_ItemCore {
        author[] = {"Raspu"};
        scope = 2;
        displayName = "SATCOM Antenna";
		descriptionShort = "RF-3080-AT001";
        model = PATHTOF(data\model\rf3080_item.p3d);
        picture = PATHTOF(data\icons\icon_rf3080.paa);
		editorPreview = PATHTOF(data\editorui\rf3080.jpg);

        class ItemInfo: InventoryItem_Base_F {
            mass = 58;
        };
    };
};