///scr_send_maxhp(maxhp,socket);
var maxhp = argument[0];
var buffer = scr_buffer_create(MAXHP_MSGID);
buffer_write(buffer, buffer_f32, maxhp);

var socket = argument[1];
network_send_packet(socket,buffer,buffer_tell(buffer));
buffer_delete(buffer);
