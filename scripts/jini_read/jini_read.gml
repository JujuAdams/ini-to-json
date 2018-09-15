/// @param section
/// @param key
/// @param default

var _section = argument0;
var _key     = argument1;
var _default = argument2;

var _section_map = global.__json_ini_map[? _section ];
if ( _section_map == undefined )
{
    show_error( "Section \"" + string( _section ) + "\" not found", false );
    return _default;
}

if ( !ds_map_exists( _section_map, _key ) )
{
    show_error( "Key \"" + string( _key ) + "\" not found for section \"" + string( _section ) + "\"", false );
    return _default;
}

return _section_map[? _key ];