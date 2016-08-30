/// scr_read_ready_buffer(buffer);
var buffer = argument[0];

global.seed = buffer_read(buffer,buffer_s32);
random_set_seed(global.seed);
oEX.maxhp = buffer_read(buffer,buffer_f32);
oEX.hp = oEX.maxhp;
oEX.defence = buffer_read(buffer,buffer_f32);
oEX.phasetime = buffer_read(buffer,buffer_f32);

oHero.temphp = oHero.hp;
oEX.temphp = oEX.hp;
