/// scr_create_buffer_by_protocol_id(pro_id, arg1, ...);
var pro_id = argument[0];
var protocol = scr_protocol_get(pro_id);
assert(protocol[0], protocol[0]);
var buffer = scr_buffer_create(pro_id);
for (i = 0; i < protocol[1]; i++) {
    buffer_write(buffer, protocol[i+2], argument[i+1]);
}
assert(buffer, "from protocol");
return buffer;
