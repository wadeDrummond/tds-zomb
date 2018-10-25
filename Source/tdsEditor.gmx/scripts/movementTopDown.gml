///movementTopDown(acceleration, run_speed, Up, Left, Down, Right, Deceleration)

/*
    Call this script to enable basic platform physics on
    a movement entity. It will enable running, jumping, and
    wall jumping. If you want to mix and match the possible
    platform actions you can use the individual "enable_action"
    scripts separately in the step event of the movement entity.
    
    The reason you pass the inputs into this script is to
    decouple the actions from their inputs. You could even use
    this same script to enable platform actions on an AI.
    You would just pass in different inputs.
*/

var acceleration = argument[0]; // Run acceleration amount
var run_speed = argument[1]; // Maximum run speed
var up_input = argument[2];
var left_input = argument[3];
var down_input = argument[4];
var right_input = argument[5];
var decel = argument[6];

if ((up_input + left_input + down_input + right_input) > 0)
    {
        movementInput = true;
    }
else
    {
        movementInput = false;
    }
    
if randomToggled
    {
        if (randomInputs)
            {
                up_input = randomUp;
                left_input = randomLeft;
                down_input = randomDown;
                right_input = randomRight;
            }
    }

// Enable running

movementRun(acceleration, run_speed, up_input, left_input, down_input, right_input);
fric = decel;
