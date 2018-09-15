if ( !variable_global_exists( "__json_ini_map" ) || !variable_global_exists( "__json_ini_filename" ) ) return false;

var _string = json_encode( global.__json_ini_map );
var _buffer = buffer_create( string_byte_length( _string ), buffer_fixed, 1 );
buffer_write( _buffer, buffer_text, _string );
buffer_save( _buffer, global.__json_ini_filename );
buffer_delete( _buffer );

ds_map_destroy( global.__json_ini_map );
global.__json_ini_map = undefined;
global.__json_ini_filename = undefined;

return true;