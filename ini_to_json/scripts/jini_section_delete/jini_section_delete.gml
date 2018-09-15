/// @param section

var _section = argument0;

var _section_map = global.__json_ini_map[? _section ];
if ( _section_map == undefined )
{
    show_error( "Section \"" + string( _section ) + "\" not found", false );
    return false;
}

ds_map_delete( global.__json_ini_map, _section );
return true;