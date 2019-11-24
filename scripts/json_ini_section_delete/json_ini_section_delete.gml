/// @description Deletes a section from the current JSON, including all child keys
///
/// @param sectionName
///
/// @jujuadams 2019-11-24

var _section = argument0;

var _section_map = global.__json_ini_map[? _section];
if (_section_map == undefined) exit;

ds_map_destroy(_section_map);
ds_map_delete(global.__json_ini_map, _section);