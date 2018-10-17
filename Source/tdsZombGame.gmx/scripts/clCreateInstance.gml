///clCreateInstance(x, y, index, count);

var _xPos = real(argument0);
var _yPos = real(argument1);
var _Index = asset_get_index(argument2);
var _Count = ceil(real(argument3));

if (object_exists(_Index))
    {
        repeat(_Count)
            var _returnedID = instance_create(_xPos, _yPos, _Index);
        clAddMessage("Created " + string(_Count) + " instance(s) of " + string(argument2) + " at (" + string(_xPos) + ", " + string(_yPos) + ".)", c_green);
        
        if (_Count == 1)
            clAddMessage("Singular count ID returned: " + string(_returnedID) + ".", c_green);
        
    }
else
    clAddMessage("Could not find object with index of " + string(_Index) + ".", c_red);
