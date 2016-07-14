/// scr_ready_buffer(buffer);
var buffer = argument[0];
buffer_seek(buffer,buffer_seek_start,0);
buffer_write(buffer, buffer_u8, READY_MSGID);
buffer_write(buffer, buffer_f32, oHero.maxhp);
buffer_write(buffer, buffer_f32, oHero.defense);
return buffer;
