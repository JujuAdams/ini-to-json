/// @description Closes JSON writing, and saves the JSON to disk
///              This script also returns the JSON string
/// 
/// @jujuadams 2019-11-24

if (!variable_global_exists("__json_ini_map") || !variable_global_exists("__json_ini_filename")) return false;

var _filename = global.__json_ini_filename;
var _string = json_ini_close_to_string();

var _buffer = buffer_create(string_byte_length(_string), buffer_fixed, 1);
buffer_write(_buffer, buffer_text, _string);
buffer_save_async(_buffer, _filename, 0, buffer_get_size(_buffer));
buffer_delete(_buffer);

return _string;