///moveStepPhysics()

/*
    This script updates the position of the movement entity
    according to its horizontal speeds and vertical speeds.
    This script should be called at the end of the STEP EVENT for each
    object you want using the movement scripts
*/

var yslope = 0; // Used to calculate movement along a slope
var xslope = 0;

// Get the total speeds
var hspd = hsp[0]+hsp[1];
var vspd = vsp[0]+vsp[1];


/*
// Move down a slope, Vertical
if (!playerCollisionCheck(x+hspd, y, collision_object) && abs(hspd) > 0) {
    while (!playerCollisionCheck(x+hspd, y-yslope, collision_object) && yslope >= -abs(hspd)) {
        yslope--;
    }
    
    // Make sure we actually need to move down
    if (yslope != 0 && playerCollisionCheck(x+hspd, y-yslope+1, collision_object)) {
        y -= yslope;
    }
}

// Move down a slope, Horizontal
if (!playerCollisionCheck(x, y+vspd, collision_object) && abs(vspd) > 0) {
    while (!playerCollisionCheck(x-xslope, y+vspd, collision_object) && xslope >= -abs(vspd)) {
        xslope--;
    }
    
    // Make sure we actually need to move down
    if (xslope != 0 && playerCollisionCheck(x-yslope+1, y+vspd, collision_object)) {
        x -= xslope;
    }
}

*/

// Horizontal check
if (playerCollisionCheck(x+hspd, y, collision_object)) {
    // Move up a slope
    while (playerCollisionCheck(x+hspd, y-yslope, collision_object) && yslope <= abs(hspd)) {
        yslope++;
    }
    
    if (playerCollisionCheck(x+hspd, y-yslope, collision_object)) {
        // Move to contact and bounce
        while (!playerCollisionCheck(x+sign(hspd), y, collision_object)) {
            x+=sign(hspd);
        }
        
        // Update the horizontal speeds
        hspd = 0;
        hsp[0] = 0;
        hsp[1] = -(hsp[1])*bounce;
        
        // Stop bounce at low values
        if (abs(hsp[1]) < 1) hsp[1] = 0;
    } else {
        y-=yslope;
    }
}
if (!playerCollisionCheck(x+hspd, y, collision_object)) {
    x += hspd;
}

// Vertical collision check
if (playerCollisionCheck(x, y+vspd, collision_object)) {
    while (!playerCollisionCheck(x, y+sign(vspd), collision_object)) {
        y+=sign(vspd);
    }
    
    // Update the vertical speeds
    vspd = 0;
    vsp[0] = 0;
    vsp[1] = -vsp[1]*bounce;
    
    // Stop bounce at low values
    if (abs(vsp[1]) < 1) vsp[1] = 0;
}
y += vspd;


// Apply friction x
if (horizontal_move_input == false) {
    hsp[0] = approach(hsp[0], 0, fric);
}

hsp[1] = approach(hsp[1], 0, fric);

// Apply friction y
if (vertical_move_input == false) {
    vsp[0] = approach(vsp[0], 0, fric);
}

vsp[1] = approach(vsp[1], 0, fric);

MoveH = hspd;
MoveV = vspd;

if ((MoveH != 0) or (MoveV != 0))
    {
        movementDirection = point_direction(0, 0, MoveH, MoveV);
    }
speedAnimPass = clamp((((abs(MoveH) + abs(MoveV)) / Speed) / 2), 0, 1);
