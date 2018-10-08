///zombieInitCheckSpawn();

var badSpawn = (!place_empty(x, y) or (distance_to_object(objPlayer) < (view_wview + view_hview)));
while (badSpawn)
    {
        x = irandom(room_width);
        y = irandom(room_height);
        var badSpawn = (!place_empty(x, y));
    }
