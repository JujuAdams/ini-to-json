/// @param section
/// @param key
/// @param value

var _section = argument0;
var _key     = argument1;
var _value   = argument2;

var _section_map = global.__json_ini_map[? _section ];
if ( _section_map == undefined )
{
    _section_map = ds_map_create();
    ds_map_add_map( global.__json_ini_map, _section, _section_map );
}

_section_map[? _key ] = _value;
return true;