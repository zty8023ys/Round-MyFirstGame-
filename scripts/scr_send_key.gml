/// scr_send_key(key, state);
/*
set a key to buffer and send
*/
// arg0 : key
// arg1 : 0 for up ; 1 for down

// KEY_MSGID = 1;
var buffer = scr_buffer_create(KEY_MSGID);

buffer_write(buffer, buffer_u16, argument[0] );
buffer_write(buffer, buffer_u8, argument[1] );

// Send to the socket
scr_send_buffer(buffer);
