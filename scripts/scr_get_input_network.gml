///scr_get_input_network();

up_key = keylist[vk_up];
down_key = keylist[vk_down];
left_key = keylist[vk_left];
right_key = keylist[vk_right];

dir_key = (up_key || down_key || left_key || right_key);

dash_key = keylist[ord("Z")];
attack_key = keylist[ord("X")];
phase_key = keylist[ord("C")];
defence_key = keylist[ord("D")];
notdefence_key = scr_if(keylist[ord("D")],false,true);

