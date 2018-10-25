///playerInitCheckSpawn();

x = irandom(room_width);
y = irandom(room_height);

var badSpawn = (!place_empty(x, y));
while (badSpawn)
    {
        clAddMessage("Player spawned in an invalid space. (" + string(x) + ", " + string(y) + ")", c_red);
    
        x = irandom(room_width);
        y = irandom(room_height);
        var badSpawn = (!place_empty(x, y));
    }
    
view_xview = x - view_wview/2;
view_yview = y - view_hview/2;
