/// @description Attempts to open and decode a JSON file stored on disk
///              If the file doesn't exist, an empty ds_map is returned instead
///
/// @param filename
///
/// @jujuadams 2019-11-24

global.__json_ini_filename = argument0;

if (!file_exists(global.__json_ini_filename))
{
    show_debug_message("Warning! json_ini_open() could not find \"" + string(global.__json_ini_filename) + "\". Using blank ds_map instead");
    global.__json_ini_map = ds_map_create();
}
else
{
    var _buffer = buffer_load(global.__json_ini_filename);
    var _string = buffer_read(_buffer, buffer_text);
    buffer_delete(_buffer);
    global.__json_ini_map = json_decode(_string);
    
    if (global.__json_ini_map < 0)
    {
        show_debug_message("Warning! json_ini_open() failed to decode JSON found in \"" + string(global.__json_ini_filename) + "\". Using blank ds_map instead");
        global.__json_ini_map = ds_map_create();
        return false;
    }
}

return true;