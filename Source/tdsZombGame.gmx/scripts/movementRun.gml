///movementRun(acceleration, max_speed, Up, Left, Down, Right)

/*
    Call this script in order to enable horizontal
    running on a movement entity.
*/

var acc = argument[0]; // Acceleration value
var maxspd = argument[1]; // Maximum run speed
var up_input = argument[2]; // Right movement input
var left_input = argument[3]; // Left movement input
var down_input = argument[4]; // Right movement input
var right_input = argument[5]; // Left movement input

var hacc = (right_input - left_input)*acc;
var vacc = (down_input - up_input)*acc;

horizontal_move_input = hacc != 0;
vertical_move_input = vacc != 0;

if (horizontal_move_input and vertical_move_input)
    {
        maxspd = maxspd * diagonalMultiplier;
        animDiagonalFactor = 0.75;
    }
else
    {
        animDiagonalFactor = 1;
    }

movementAddHorizontalVerticalMax(hacc, vacc, maxspd * sign(hacc), maxspd * sign(vacc));
