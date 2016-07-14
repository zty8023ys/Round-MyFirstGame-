/// scr_wait_other();
if (global.r == 99 && room == r0) {
    // 当自己在99回合, 且还在r0房间
    with(oButton) {
        visible = false;
    }
    oInformation.depth = -14;
    oInformation.visible = true;
    var buffer = buffer_create(BUFFERSIZE,buffer_fixed,1);
    buffer = scr_ready_buffer(buffer);
    if (instance_exists(oServer)) {
        network_send_packet(client,buffer,buffer_tell(buffer));
    } else {
        network_send_packet(server,buffer,buffer_tell(buffer));
    }
    buffer_delete(buffer);
}
