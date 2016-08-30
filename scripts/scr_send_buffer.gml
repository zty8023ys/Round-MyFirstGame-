/// scr_send_buffer(buffer);
var buffer = argument[0];
var result = network_send_packet(scr_chose_socket(),buffer,buffer_tell(buffer));
buffer_delete(buffer);
return result;
