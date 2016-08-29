/// scr_wait_other();
if (!sendReady && global.r == 99 && room == r0 ) {
    sendReady = true;
    // 当自己在99回合, 且还在r0房间
    with(oButton) {
        visible = false;
    }
    oInformation.depth = -14;
    oInformation.visible = true;
    oControl.canBack = false;
    var buffer = scr_ready_buffer();
    sendReady = scr_send_buffer(buffer);
}
