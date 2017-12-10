// scr_send_buffer_to_server(buffer);
var buffer = argument[0];
var result = network_send_raw(server,buffer,buffer_tell(buffer));
//var result = network_send_packet(scr_chose_socket(),buffer,buffer_tell(buffer));
buffer_delete(buffer);
return result;
