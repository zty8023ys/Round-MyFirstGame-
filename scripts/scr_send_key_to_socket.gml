/// scr_send_key_to_socket()
if (instance_exists(oHero)) {
    if (keyboard_check(vk_up)) {
        scr_send_key(vk_up,1);
        sendUpKey = false;
    } else {
        if (!sendUpKey) {
            sendUpKey = true;
            scr_send_key(vk_up,0);
        }
    }
    if (keyboard_check(vk_down)) {
        scr_send_key(vk_down,1);
        sendDownKey = false;
    } else {
        if (!sendDownKey) {
            sendDownKey = true;
            scr_send_key(vk_down,0);
        }
    }
    if (keyboard_check(vk_right)) {
        scr_send_key(vk_right,1);
        sendRightKey = false;
    } else {
        if (!sendRightKey) {
            sendRightKey = true;
            scr_send_key(vk_right,0);
        }
    }
    if (keyboard_check(vk_left)) {
        scr_send_key(vk_left,1);
        sendLeftKey = false;
    } else {
        if (!sendLeftKey) {
            sendLeftKey = true;
            scr_send_key(vk_left,0);
        }
    }
    scr_send_key(ord("Z"),oHero.isdash);

    scr_send_key(ord("X"),oHero.isattack);

    scr_send_key(ord("C"),oHero.isphase);
    
    scr_send_key(ord("D"),oHero.isdefence);
}
