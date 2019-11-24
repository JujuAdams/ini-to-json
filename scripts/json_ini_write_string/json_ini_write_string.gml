/// @description Writes a string to the current JSON
///
/// @param section
/// @param key
/// @param value
///
/// @jujuadams 2019-11-24

var _section = argument0;
var _key     = argument1;
var _value   = argument2;

if (!is_string(_value))
{
    show_debug_message("Warning! Value being written to section=\"" + string(_section) + "\", key=\"" + string(_key) + "\" is not a string");
    _value = string(_value);
}

return json_ini_write(_section, _key, _value);