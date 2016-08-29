/// scr_send_hp(MSGID, who,hp);
var MSGID = argument[0];
var who = argument[1];
var hp = argument[2];

var netobject = scr_if(instance_exists(oServer), oServer, oClient);

with (netobject) {
    var buffer = scr_buffer_create(MSGID);
    buffer_write(buffer, buffer_u32, who);
    buffer_write(buffer, buffer_f32, hp);
    scr_send_buffer(buffer);
}
