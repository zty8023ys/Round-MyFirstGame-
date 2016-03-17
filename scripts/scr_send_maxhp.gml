///scr_send_maxhp(maxhp,socket);
var maxhp = argument[0];
var buffer = buffer_create(BUFFERSIZE,buffer_fixed,1);
buffer_seek(buffer,buffer_seek_start,0);

buffer_write(buffer, buffer_u8, MAXHP_MSGID);
buffer_write(buffer, buffer_f32, maxhp);

var socket = argument[1];
network_send_packet(socket,buffer,buffer_tell(buffer));
buffer_delete(buffer);
