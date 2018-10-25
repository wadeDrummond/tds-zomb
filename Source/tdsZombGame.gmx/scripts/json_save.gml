///json_save(filename, json, type);

var _filename = argument0;
var _json     = argument1;
var _type     = argument2;

if ( _type != ds_type_list ) && ( _type != ds_type_map ) return false;

var _root = ds_map_create();
if ( _type == ds_type_list ) ds_map_add_list( _root, "ROOT", _json );
else if ( _type == ds_type_map ) ds_map_add_map( _root, "ROOT", _json );

var _string = json_encode( _root );
var _buffer = buffer_create( string_byte_length( _string )+1, buffer_fixed, 1 );
buffer_write( _buffer, buffer_string, _string );
buffer_save( _filename, _buffer );
buffer_delete( _buffer );

_root[? "ROOT" ] = undefined;
ds_map_destroy( _root );
return true;
