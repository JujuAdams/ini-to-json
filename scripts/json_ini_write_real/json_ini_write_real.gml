/// @description Writes a real value to the current JSON
///
/// @param section
/// @param key
/// @param value
///
/// @jujuadams 2019-11-24

var _section = argument0;
var _key     = argument1;
var _value   = argument2;

if (!is_real(_value) && !is_bool(_value) && !is_int32(_value) && !is_int64(_value))
{
    show_debug_message("Warning! Value being written to section=\"" + string(_section) + "\", key=\"" + string(_key) + "\" is not a real");
    _value = real(_value);
}

return json_ini_write(_section, _key, _value);