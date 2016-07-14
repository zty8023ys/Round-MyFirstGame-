    draw_text(320,32,"技能列表");    
    with(oHero) {
        draw_set_halign(fa_center);
        draw_text(544,64,"行动点" + string(movepoint) + "/" + string(maxmovepoint));
        draw_set_halign(fa_left);
        draw_set_valign(fa_middle);
        draw_text(64,firstbtny, "暗影迷踪：进入隐身状态"+string(phasetime)+"秒 #受到或造成伤害将中断隐身效果(快捷键:C) #目前等级： " + string(phase_lv)+ "(升级所需行动点：" + string(phase_mp)+")" );
        //draw_text(64,firstbtny+SKILLGAP, "嗜血狂暴：生命值恢复所造成伤害的"+string(lifeleech)+"% #目前等级： " + string(lifeleech_lv)+ "(升级所需行动点：" + string(lifeleech_mp)+")");
        //draw_text(64,firstbtny+SKILLGAP*2, "破釜沉舟：击中降低敌人"+string(dealperhp)+"%生命上限 #(没击降低生命最高为技能等级*20) #目前等级： " + string(dealperhp_lv)+ "(升级所需行动点：" + string(dealperhp_mp)+")" );
        //draw_text(64,firstbtny+SKILLGAP*3, "凌波微步：冲刺技能消耗耐力减少"+string(dashreduceeffect)+"点 #目前等级： " + string(dashreduce_lv)+ "(升级所需行动点：" + string(dashreduce_mp)+")");
        
        draw_set_colour(c_red);
        draw_button(firstbtnx-16,firstbtny-16,firstbtnx+16,firstbtny+16,!(mouse_check_button(mb_left)&&scr_area(firstbtnx,firstbtny,32,32)));
        //draw_button(firstbtnx-16,firstbtny+SKILLGAP-16,firstbtnx+16,firstbtny+SKILLGAP+16,!(mouse_check_button(mb_left)&&scr_area(firstbtnx,firstbtny+SKILLGAP,32,32)));
        //draw_button(firstbtnx-16,firstbtny+SKILLGAP*2-16,firstbtnx+16,firstbtny+SKILLGAP*2+16,!(mouse_check_button(mb_left)&&scr_area(firstbtnx,firstbtny+SKILLGAP*2,32,32)));
        //draw_button(firstbtnx-16,firstbtny+SKILLGAP*3-16,firstbtnx+16,firstbtny+SKILLGAP*3+16,!(mouse_check_button(mb_left)&&scr_area(firstbtnx,firstbtny+SKILLGAP*3,32,32)));
        draw_set_colour(c_black);
        draw_set_halign(fa_center);
        draw_text(firstbtnx,firstbtny,"+");
        //draw_text(firstbtnx,firstbtny+SKILLGAP,"+");
        //draw_text(firstbtnx,firstbtny+SKILLGAP*2,"+");
        //draw_text(firstbtnx,firstbtny+SKILLGAP*3,"+");
    }
    
