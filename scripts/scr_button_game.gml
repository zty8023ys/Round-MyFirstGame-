switch(identity) {
    case 1: 
    // 状态
        with(oButton) {
            visible = false;
        }
        oInformation.depth = -17;
        oInformation.visible = true;
        break;
    
    case 2:
    // 升级
        with(oButton){
            depth = -22;
            alarm[0] = 1;
        }
        break;
        
    case 3:
    // 技能
        with(oButton) {
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
