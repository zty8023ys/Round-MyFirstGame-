if (depth == -20) {
    switch(identity) {
        case 1:     
            // 单人游戏
            with(oButtom) {
                visible = false;
            }
            oInformation.depth = -18;
            oInformation.visible = true;
            break;
        
        case 2: 
            // 局域网
            with(oButtom) {
                visible = false;
            }
            oInformation.depth = -15;
            oInformation.visible = true;
            break;
            
        case 3:
            // 帮助
            with(oButtom) {
                visible = false;
            }
            oInformation.depth = -19;
            oInformation.visible = true;
            break;

        case 4:
            // 退出
            game_end();
            break;
    }
}

if (depth == -21) {
    switch(identity) {
        case 1: 
        // 状态
            with(oButtom) {
                visible = false;
            }
            oInformation.depth = -17;
            oInformation.visible = true;
            break;
        
        case 2:
        // 升级
            with(oButtom){
                depth = -22;
                alarm[0] = 1;
            }
            break;
            
        case 3:
        // 技能
            with(oButtom) {
                visible = false;
            }
            oInformation.depth = -16;
            oInformation.visible = true;
            break;
            
        case 4:
        // 结束
            scr_next_round();
            break;
    }
}

// level up
if (depth == -22 && timeout) {
        switch(identity) {
            case 1: 
            // 兑换1点
                with(oHeroStats) {
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
                with(oHeroStats) {
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
                break;
                
            case 3:
            // 战斗升级
                if(oHeroStats.movepoint >= 2 && lflag){
                    oHeroStats.movepoint -= 2;
                    lflag = false;
                    room = atk01;
                }
                break;
                
            case 4:
            // 返回
                with(oButtom) {
                    depth = -21;
                    timeout = false;
                }
                break;
        }
}
