/// scr_send_recovery_hp(hp,socket);

var hp = argument[0];
hp = min(hp,oHero.maxhp);
var buffer = buffer_create(1024,buffer_fixed,1);
buffer_seek(buffer,buffer_seek_start,0);

buffer_write(buffer, buffer_u8, RECHP_MSGID);
buffer_write(buffer, buffer_f32, hp);

var socket = argument[1];
network_send_packet(socket,buffer,buffer_tell(buffer));
buffer_delete(buffer);
