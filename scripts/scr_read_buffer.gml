/// scr_read_buffer(buffer);
var buffer = argument[0];
oEX.maxhp = buffer_read(buffer,buffer_f32);
oEX.hp = oEX.maxhp;
oEX.defense = buffer_read(buffer, buffer_f32);
oControl.seed = buffer_read(buffer, buffer_u32);
