/// @description Deletes a key from the JSON
///
/// @param sectionName
/// @param key
///
/// @jujuadams 2019-11-24

var _section = argument0;
var _key     = argument1;

var _section_map = global.__json_ini_map[? _section];

if (_section_map == undefined) exit;
if (!ds_map_exists(_section_map, _key)) exit;

ds_map_delete(_section_map, _key);
if (ds_map_empty(_section_map)) ds_map_delete(global.__json_ini_map, _section);