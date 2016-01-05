    draw_text(320,32,"选择一个符文");
    draw_text(320,200, "    焚 （增35%攻击力，减20%生命与防御）
    #磐 （增35%生命与防御，减20%攻击力）
    #怒 （增30%暴击几率，减35%暴击总伤害）");
    draw_set_colour(c_red);
    draw_button(128-16,320-16,128+16,320+16,!(mouse_check_button(mb_left)&&scr_area(128,320,32,32)));
    draw_button(192-16,320-16,192+16,320+16,!(mouse_check_button(mb_left)&&scr_area(192,320,32,32)));
    draw_button(256-16,320-16,256+16,320+16,!(mouse_check_button(mb_left)&&scr_area(256,320,32,32)));
    draw_set_colour(c_black);
    draw_text(128,320,"焚");
    draw_text(192,320,"磐");
    draw_text(256,320,"怒");
