///collision_triangle(x1, y1, x2, y2, x3, y3, id);

var firstTest = collision_line(argument0, argument1, argument2, argument3, argument6, false, 0);
var secondTest = collision_line(argument2, argument3, argument4, argument5, argument6, false, 0);
var thirdTest = collision_line(argument4, argument5, argument0, argument1, argument6, false, 0);
var fourthTest = point_in_triangle(argument6.x, argument6.y, argument0, argument1, argument2, argument3, argument4, argument5);

return (firstTest or secondTest or thirdTest or fourthTest);
