///playerStepInventoryPickups();

canPickup = false;
itemPickupID = noone;

with (parInventoryItem)
    {
        Selected = false;
    }
    
with (instance_nearest(x, y, parInventoryItem))
    {
        if (distance_to_object(other) <= (other.pickupRadius))
            {
                other.canPickup = true;
                other.itemPickupID = id;
                other.itemPickupTitle = Name;
                Selected = true;
            }
    }

if (canPickup)
    {
        itemPickupLerp = lerp(itemPickupLerp, 1, itemLerpSpeed);
        
        if (keyboard_check_pressed(ord("F")))
            {
                if (instance_exists(itemPickupID))
                    {
                        switch(itemPickupID.object_index)
                            {
                                case objWoodenPlank:
                                    {
                                        resMap[? Resources.woodenPlanks] += 1;
                                        instance_destroy(itemPickupID);
                                        
                                        resTextScale[0] = 1.65;
                                        
                                        break;
                                    }
                            }
                            
                        soundPlayRandomPitch(choose(sndPickup1, sndPickup2, sndPickup3), 0.85, 1.05);
                    }
            }
    }
else
    {
        itemPickupLerp = lerp(itemPickupLerp, 0, itemLerpSpeed);
    }
