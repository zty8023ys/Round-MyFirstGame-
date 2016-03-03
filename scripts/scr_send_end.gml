///scr_send_end(socket);
var buffer = buffer_create(1024,buffer_fixed,1);

buffer_seek(buffer, buffer_seek_start, 0);

buffer_write(buffer, buffer_u8,GAME_END);

network_send_packet(argument[0],buffer,buffer_tell(buffer));

buffer_delete(buffer);
