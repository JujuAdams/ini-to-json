/// @param filename

global.__json_ini_filename = argument0;

if ( !file_exists( global.__json_ini_filename ) )
{
    global.__json_ini_map = ds_map_create();
}
else
{
    var _buffer = buffer_load( global.__json_ini_filename );
    var _string = buffer_read( _buffer, buffer_text );
    buffer_delete( _buffer );
    global.__json_ini_map = json_decode( _string );
}

return true;