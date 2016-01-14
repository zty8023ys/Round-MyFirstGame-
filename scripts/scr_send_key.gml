/// scr_send_key(key,DownOrUp);
/*
send a key through socket
*/
///  arg0 : key
///  arg1 : down=0, up=1

buffer_seek(buffer, buffer_seek_start, 0);


// KEY_MSGID = 1;
buffer_write(buffer, buffer_s16, KEY_MSGID );
buffer_write(buffer, buffer_s16, argument0 );
buffer_write(buffer, buffer_s16, argument1 );

// Send to the socket
network_send_packet( socket, buffer, buffer_tell(buffer) );
