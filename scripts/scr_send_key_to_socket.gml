/// scr_send_key_to_socket(socket)
var client = argument[0];
if (instance_exists(oHero)) {
    scr_send_key(vk_up,keyboard_check(vk_up),client);

    scr_send_key(vk_down,keyboard_check(vk_down),client);

    scr_send_key(vk_right,keyboard_check(vk_right),client);

    scr_send_key(vk_left,keyboard_check(vk_left),client);

    scr_send_key(ord("Z"),oHero.isdash,client);

    scr_send_key(ord("X"),oHero.isattack,client);

    scr_send_key(ord("C"),oHero.isphase,client);
    
}
