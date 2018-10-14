///animation_hit_frame(current_frame, frame, image_speed)
/*
    This script will return true if the image_index of your
    sprite hits a specific frame.
*/

var cframe = argument0;
var frame = argument1;
var _speed = argument2; // The frame to check for
// Will return true if an animation is on a specific frame
return (cframe >= frame+1 - _speed) && (cframe < frame+1);
