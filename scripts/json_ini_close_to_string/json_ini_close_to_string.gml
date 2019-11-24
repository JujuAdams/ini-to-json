/// @description Closes the current JSON and returns a string containing all of the JSON's data
///
/// @jujuadams 2019-11-24

var _string = json_encode(global.__json_ini_map);

ds_map_destroy(global.__json_ini_map);
global.__json_ini_map = undefined;
global.__json_ini_filename = undefined;

return _string;