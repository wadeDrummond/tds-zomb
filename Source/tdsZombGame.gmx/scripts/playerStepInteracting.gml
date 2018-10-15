///playerStepInteracting();

canInteract = false;
isPickup = false;
itemInteractID = noone;

with (parInventoryItem)
    Selected = false;

with (instance_nearest(x, y, parInteractable))
    {
        if (distance_to_object(other) <= (other.pickupRadius))
            {
                other.isPickup = (object_is_ancestor(object_index, parInventoryItem));
                other.canInteract = true;
                other.itemInteractID = id;
                other.itemInteractTitle = Name;
                Selected = true;
            }
    }

if (canInteract)
    {
        itemInteractLerp = lerp(itemInteractLerp, 1, itemLerpSpeed);
        
        if (Interact)
            {
                if (instance_exists(itemInteractID))
                    {
                        if (isPickup)
                            {
                                switch(itemInteractID.object_index)
                                    {
                                        case objWoodenPlank:
                                            {
                                                resMap[? Resources.woodenPlanks] += 1;
                                                resTextScale[0] = 1.65;
                                                Shake += 2;
                                                instance_destroy(itemInteractID);
                                                break;
                                            }
                                                
                                    }
                                    
                                soundPlayRandomPitch(choose(sndPickup1, sndPickup2, sndPickup3), 0.85, 1.05);
                            }
                        else
                            {
                                with (itemInteractID)
                                    {
                                        xInteract = other.x;
                                        yInteract = other.y;
                                        event_user(0);
                                    }
                            }
                    }
            }
    }
else
    {
        itemInteractLerp = lerp(itemInteractLerp, 0, itemLerpSpeed);
    }
