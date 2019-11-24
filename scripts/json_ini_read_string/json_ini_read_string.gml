/// @description Reads a string from the current JSON. If the key cannot be found, the default value is returned instead
///
/// @param section
/// @param key
/// @param default
///
/// @jujuadams 2019-11-24

var _section = argument0;
var _key     = argument1;
var _default = argument2;

var _value = json_ini_read(_section, _key, _default);

if (!is_string(_value))
{
    show_debug_message("Warning! Value found for section=\"" + string(_section) + "\", key=\"" + string(_key) + "\" is not a string");
    return string(_value);
}

return _value;