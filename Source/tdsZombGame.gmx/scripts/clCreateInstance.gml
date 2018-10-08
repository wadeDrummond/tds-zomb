///clCreateInstance(x, y, index, count);

var _xPos = real(argument0);
var _yPos = real(argument1);
var _Index = asset_get_index(argument2);
var _Count = ceil(real(argument3));

if (object_exists(_Index))
    {
        repeat(_Count)
            {
                instance_create(_xPos, _yPos, _Index);
            }
        clAddMessage("Created " + string(_Count) + " instance(s) of + " + string(_Index) + " at (" + string(_xPos) + ", " + string(_yPos) + ".)", c_green);
    }
else
    {
        clAddMessage("Could not find object with index of " + string(_Index) + ".", c_red);
    }
