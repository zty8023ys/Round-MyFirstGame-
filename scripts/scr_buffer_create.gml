/// scr_buffer_create(MSGID);
var MSGID = argument[0];

var buffer = buffer_create(BUFFERSIZE,buffer_fixed,1);
buffer_seek(buffer,buffer_seek_start,0);
buffer_write(buffer, buffer_u8, MSGID);

return buffer;
