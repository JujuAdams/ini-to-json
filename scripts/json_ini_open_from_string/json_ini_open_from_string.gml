/// @description Decodes a JSON from a string, ready for reading/writing
///
/// @param filename
/// @param string
///
/// @jujuadams 2019-11-24

global.__json_ini_filename = argument0;
global.__json_ini_map      = json_decode(argument1);

if (global.__json_ini_map < 0)
{
    show_debug_message("Warning! json_ini_open_string() failed to decode JSON. Using blank ds_map instead");
    global.__json_ini_map = ds_map_create();
    return false;
}

return true;