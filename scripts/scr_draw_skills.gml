    draw_text(320,32,"技能列表");
    with(oHero) {
        draw_set_halign(fa_center);
        draw_text(544,64,"行动点" + string(movepoint) + "/" + string(maxmovepoint));
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_text(64,72, 
        "恩赐解脱：攻击时有"+string(critchance)+"%几率暴击 #目前等级： " + string(critchance_lv)+ "(升级所需行动点：" + string(critchance_mp)+")" 
        
        + "##嗜血狂暴：生命值恢复所造成伤害的"+string(lifeleech)+"% #目前等级： " + string(lifeleech_lv)+ "(升级所需行动点：" + string(lifeleech_mp)+")"
        
        + "##破釜沉舟：攻击降低"+string(dealperhp)+"%生命上限(最高技能等级*20) #目前等级： " + string(dealperhp_lv)+ "(升级所需行动点：" + string(dealperhp_mp)+")" 
            
        + "##凌波微步：冲刺技能消耗耐力减少"+string(dashreduceeffect)+"点 #目前等级： " + string(dashreduce_lv)+ "(升级所需行动点：" + string(dashreduce_mp)+")"
        
        
        );    
        draw_set_colour(c_red);
        draw_button(450-16,100-16,450+16,100+16,!(mouse_check_button(mb_left)&&scr_area(450,100,32,32)));
        draw_button(450-16,175-16,450+16,175+16,!(mouse_check_button(mb_left)&&scr_area(450,175,32,32)));
        draw_button(450-16,250-16,450+16,250+16,!(mouse_check_button(mb_left)&&scr_area(450,250,32,32)));
        draw_button(450-16,325-16,450+16,325+16,!(mouse_check_button(mb_left)&&scr_area(450,325,32,32)));
        draw_set_colour(c_black);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text(450,100,"+");
        draw_text(450,175,"+");
        draw_text(450,250,"+");
        draw_text(450,325,"+");
    }
    
