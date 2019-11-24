/// Include this file in your project if you'd like to remap the .ini functions to JSON equivalents automatically
///
/// @jujuadams 2019-11-24

//This block of macros replaces the standard ini_* function calls with the json_ini_* script equivalents
//This happens automatically and you don't need to change any other code
#macro ini_close             json_ini_close
#macro ini_close_async       json_ini_close_async
#macro ini_open              json_ini_open
#macro ini_key_delete        json_ini_key_delete
#macro ini_key_exists        json_ini_key_exists
#macro ini_open_from_string  json_ini_open_from_string
#macro ini_read_real         json_ini_read_real
#macro ini_read_string       json_ini_read_string
#macro ini_section_delete    json_ini_section_delete
#macro ini_section_exists    json_ini_section_exists
#macro ini_write_real        json_ini_write_real
#macro ini_write_string      json_ini_write_string

//This block of macros (when uncommented) exposes the native ini_* functions via the __ini_* namespace
//This is useful for debugging etc.
/*
#macro __ini_close             ini_close
#macro __ini_open              ini_open
#macro __ini_key_delete        ini_key_delete
#macro __ini_key_exists        ini_key_exists
#macro __ini_open_from_string  ini_open_from_string
#macro __ini_read_real         ini_read_real
#macro __ini_read_string       ini_read_string
#macro __ini_section_delete    ini_section_delete
#macro __ini_section_exists    ini_section_exists
#macro __ini_write_real        ini_write_real
#macro __ini_write_string      ini_write_string
*/