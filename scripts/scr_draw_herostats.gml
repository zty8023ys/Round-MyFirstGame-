    with(oHero) {
        draw_set_halign(fa_center);
        draw_text(544,64,"行动点" + string(movepoint) + "/" + string(maxmovepoint));
        draw_text(320,32,"英雄状态");
                
        //draw the stats
        draw_set_halign(fa_left);
        switch(global.rune) {
            case 1: draw_text(64,96,"符文：焚");break;
            case 2: draw_text(64,96,"符文：磐");break;
            case 3: draw_text(64,96,"符文：怒");break;
        }
        draw_text(64,128,"等级：  " + string(level) + "(" + string(xp) + "/" + string(maxxp) + ")");
        draw_text(64,160,"生命值：" + string(hp) + "/" + string(maxhp));
        draw_text(64,192,"攻击力：" + string(attack));
        draw_text(64,224,"防御力：" + string(defense));
        if (lifeleech > 0) {
            draw_text(64,256,"生命偷取：" + string(lifeleech) + "%");
            if (critchance > 0) {
                draw_text(64,288,"暴击几率：" + string(critchance) + "%");
                draw_text(64,320,"暴击伤害：" + string(critdamage) + "%");
            }
        } else {
            if (critchance > 0) {
                draw_text(64,256,"暴击几率：" + string(critchance) + "%");
                draw_text(64,288,"暴击伤害：" + string(critdamage) + "%");
            }
        }
    }
