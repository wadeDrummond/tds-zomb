///clSetGlobalVariable(var_index, var_value);

var Known;
var varIndex = argument0;
var varValue = argument1;

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

if (variable_global_exists(varIndex))
    {
        Known = true;
        clAddMessage("Attempting to set " + varIndex + "to (" + string(varValue) + "), using varType " + varType + ".", c_green);
    }
else
    {
        Known = false;
        clAddMessage("Attempting to Initialize " + varIndex + "to (" + string(varValue) + "), using varType " + varType + ".", c_lime);
    }
    
if (varType == "real") tempVal = real(varValue);
else tempVal = varValue;

variable_global_set(varIndex, varValue);
