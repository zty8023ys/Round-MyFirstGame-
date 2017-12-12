// level up
if (depth == -22) {
        switch(identity) {
            case 1: 
            // 兑换1点
                with(oHero) {
                    if(movepoint >= 1){
                        movepoint -= 1;
                        xp += 4;
                        if (xp >= maxxp) {
                            scr_levelup();
                        }
                    }
                }
                break;
            
            case 2:
            // 兑换全部
                with(oHero) {
                    if (movepoint >= 1) {
                        while (movepoint >= 1) {
                            xp += 4;
                            if (xp >= maxxp) {
                                scr_levelup();
                            }
                            movepoint--;
                        }
                    }
                }
                with(oButton) {
                    depth = -21;
                    alarm[0] = 1;
                }
                break;
                
            case 3:
            // 战斗升级
                if(oHero.movepoint >= 2 && lflag){
                    oHero.movepoint -= 2;
                    lflag = false;
                    scr_go_room(atk01);
                }
                break;
                
            case 4:
            // 返回
                with(oButton) {
                    depth = -21;
                }
                break;
        }
}
