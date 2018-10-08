///clParseInput(Input);

var _tempInput = string_parse(argument0, " ", true);

var grSize = ds_list_size(_tempInput);
var grCommand = _tempInput[| 0];

if (grSize > 1)
    {
        for(var i = 0; i < grSize; i ++)
            {
                if (_tempInput[| i] == "px")
                    {
                        _tempInput[| i] = string(objPlayer.x);
                    }
                if (_tempInput[| i] == "py")
                    {
                        _tempInput[| i] = string(objPlayer.y);
                    }
                if (_tempInput[| i] == "mx")
                    {
                        _tempInput[| i] = string(mouse_x);
                    }
                if (_tempInput[| i] == "my")
                    {
                        _tempInput[| i] = string(mouse_y);
                    }
            }
    }

return _tempInput;
