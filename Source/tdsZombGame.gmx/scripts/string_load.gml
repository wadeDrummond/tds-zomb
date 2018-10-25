///string_load(filename);

var _filename = argument0;

var _buffer = buffer_load(_filename);
var _string = buffer_read(_buffer, buffer_string);
buffer_delete( _buffer );

return _string;
