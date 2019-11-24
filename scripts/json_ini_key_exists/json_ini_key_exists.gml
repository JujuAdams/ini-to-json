/// @description Returns if a key exists in the current JSON
///
/// @param sectionName
/// @param key
///
/// @jujuadams 2019-11-24

var _section = argument0;
var _key     = argument1;

var _section_map = global.__json_ini_map[? _section];
if (_section_map == undefined) return false;
if (!ds_map_exists(_section_map, _key)) return false;

return true;