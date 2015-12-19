if (depth == -20) {
    switch(identity) {
        case 1:     
            //单人游戏
            with(oButtom) {
                visible = false;
            }
            oInformation.depth = -18;
            oInformation.visible = true;
            break;
        
        case 2: 
            break;
            
        case 3:
            //帮助
            with(oButtom) {
                visible = false;
            }
            oInformation.depth = -19;
            oInformation.visible = true;
            break;

        case 4:
            //退出
            game_end();
            break;
    }
}

if (depth == -21) {
    switch(identity) {
        case 1: 
        //状态
            with(oButtom) {
                visible = false;
            }
            oInformation.depth = -17;
            oInformation.visible = true;
            break;
        
        case 2:
        //升级
            if(oHeroStats.movepoint >= 1 && lflag){
                oHeroStats.movepoint -= 1;
                lflag = false;
                room = atk01;
            }
            break;
            
        case 3:
        //技能
            with(oButtom) {
                visible = false;
            }
            oInformation.depth = -16;
            oInformation.visible = true;
            break;
            
        case 4:
        //结束
            scr_next_round();
            break;
    }
}
