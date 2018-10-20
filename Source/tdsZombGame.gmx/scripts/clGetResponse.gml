///getResponse(Text);

var grList = clParseInput(argument0);
var grSize = ds_list_size(grList);
var grCommand = grList[| 0];

var Argument, argumentCount;

Argument[0] = "";
Argument[1] = "";
Argument[2] = "";
Argument[3] = "";
Argument[4] = "";
Argument[5] = "";
Argument[6] = "";
Argument[7] = "";
Argument[8] = "";
Argument[9] = "";

if (grSize > 1)
    {
        for(var i = 0; i < grSize; i ++)
            {
                Argument[i] = grList[| i];
                argumentCount = array_length_1d(Argument);
            }
    }
else
    {
        Argument[0] = -1;
        argumentCount = 1;
    }
    
ds_list_destroy(grList);

var commandAmount = array_length_1d(Command);
for(var i = 0; i < commandAmount; i ++)
    {
        if (grCommand == Command[i])
            {
                if (grSize - 1) < commandArgumentMin[i]
                    {
                        clAddMessage("Error, expected at least " + string(commandArgumentMin[i]) + " arguments, got " + string(grSize - 1) + ".", c_red);
                        exit;
                    }

                clInterpretCommand(i, Argument, argumentCount);

                break;
            }
            
        else if (i >= (commandAmount - 1))
            clAddMessage("Invalid syntax.", c_red);
    }
