///playerCollisionCheck(x, y, obj)

var _tempCheck = collision_line_point(x, y, argument0, argument1, argument2, true, true);
var ID = _tempCheck[0];

var _idPlace = instance_place(argument0, argument1, argument2);

/*
var _objIndex = _idPlace.object_index;
var _isDoor = object_is_ancestor(_objIndex, parDoor);
*/

var Check1 = _idPlace != noone;
var Check2 = false;

return (Check1 or Check2);
