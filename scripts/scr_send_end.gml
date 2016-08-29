///scr_send_end(socket);
var buffer = scr_buffer_create(GAME_END);

network_send_packet(argument[0],buffer,buffer_tell(buffer));

buffer_delete(buffer);
