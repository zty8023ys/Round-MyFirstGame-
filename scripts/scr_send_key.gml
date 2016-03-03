/// scr_send_key(key,DownOrUp,socket);
/*
send a key through socket
*/
///  arg0 : key
///  arg1 : down=0, up=1
///  arg2 : socket

var buffer = buffer_create(1024,buffer_fixed,1);

buffer_seek(buffer, buffer_seek_start, 0);


// KEY_MSGID = 1;
buffer_write(buffer, buffer_u8, KEY_MSGID );
buffer_write(buffer, buffer_u8, argument[0] );
buffer_write(buffer, buffer_u8, argument[1] );
var socket = argument[2];
// Send to the socket
network_send_packet( socket, buffer, buffer_tell(buffer) );
buffer_delete(buffer);
