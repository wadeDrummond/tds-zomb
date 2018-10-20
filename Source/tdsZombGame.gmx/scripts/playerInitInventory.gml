///playerInitInventory();

enum Resources
    {
        woodenPlanks
    }

resMap = ds_map_create();
resMap[? Resources.woodenPlanks] = 5;

resTextScale[0] = 0;

resourceCount = 1;

hotbarSlotCount = 6;

for (var i = 0; i < hotbarSlotCount; i ++)
    {
        hotbarSlot[i, 0] = -1;
        hotbarSlot[i, 1] = -1;
        hotbarSlot[i, 2] = -1;
        hotbarSlot[i, 3] = -1;
    }

canPickup = false;
pickupRadius = 96;
itemInteract = "";
itemPickupID = noone;
itemLerpSpeed = 0.1;
itemInteractLerp = 0;
