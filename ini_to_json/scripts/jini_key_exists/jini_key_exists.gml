/// @param section
/// @param key

var _section = argument0;
var _key     = argument1;

var _section_map = global.__json_ini_map[? _section ];
if ( _section_map == undefined )
{
    show_error( "Section \"" + string( _section ) + "\" not found", false );
    return false;
}

if ( !ds_map_exists( _section_map, _key ) )
{
    show_error( "Key \"" + string( _key ) + "\" not found for section \"" + string( _section ) + "\"", false );
    return false;
}

return true;