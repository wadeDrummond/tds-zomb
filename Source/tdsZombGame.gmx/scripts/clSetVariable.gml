///clSetVariable(instance, var_index, var_value);

Instance = argument0;
varIndex = argument1;
varValue = argument2;

if ((string_count('"', varValue) > 0) or string_count("'", varValue) > 0)
    {
        varType = "string";
    }
else
    {
        varType = "real";
    }
    
string_replace_all(varValue, '"', '');
string_replace_all(varValue, "'", "'");

if (string(real(Instance)) == Instance)
    {
        if (instance_exists(Instance))
            {
                ID = real(Instance);
                if (varType == "real") tempVal = real(varValue);
                else tempVal = varValue;
                with (ID) variable_instance_set(id, other.varIndex, other.tempVal);
                clAddMessage("Set variable (" + varIndex + ") to (" + string(varValue) + ") with (" + Instance + ") having ID " + string(ID) + ", using varType " + varType + ".", c_green);          
            }
        else
            {
                clAddMessage("Failed to find an object or instance titled " + string(Instance) + ". Index returned " + string(ID) + ".", c_red);
            }
    }
else
    {
        ID = asset_get_index(Instance);
     
        if (object_exists(ID))
            {
                if (varType == "real") tempVal = real(varValue);
                else tempVal = varValue;
                with (ID) variable_instance_set(id, other.varIndex, other.tempVal);
                clAddMessage("Set variable (" + varIndex + ") to (" + string(varValue) + ") of all (" + Instance + ")'s, using varType " + varType + ".", c_green);
            }
        else
            {
                clAddMessage("Failed to find an object or instance titled " + string(Instance) + ". Index returned " + string(ID) + ".", c_red);
            }
    }
