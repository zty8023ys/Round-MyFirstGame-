/// scr_ready_buffer();
var buffer = scr_buffer_create(READY_MSGID);
buffer_write(buffer, buffer_s32, global.seed);
buffer_write(buffer, buffer_f32, oHero.maxhp);
buffer_write(buffer, buffer_f32, oHero.defence);
buffer_write(buffer, buffer_f32, oHero.phasetime);
return buffer;
