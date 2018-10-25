///playerStepDeactivateRegion();

/*
regionFactor = 12;
xRegionCheck = round_n(view_xview, room_width / regionFactor);
yRegionCheck = round_n(view_yview, room_height / regionFactor);

if ((xRegionCheck != xLastRegion) or (yRegionCheck != yLastRegion))
    {
        var x1 = xRegionCheck - view_wview;
        var y1 = yRegionCheck - view_hview;
        var x2 = xRegionCheck + view_wview;
        var y2 = yRegionCheck + view_hview;
        
        instance_deactivate_object_region(x1, y1, x2, y2, false, true, parInGame);
        instance_activate_object_region(x1, y1, x2, y2, true, false, parInGame);
    }
    
xLastRegion = xRegionCheck;
yLastRegion = yRegionCheck;
