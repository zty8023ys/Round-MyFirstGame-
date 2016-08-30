switch(identity) {
    case 1:     
        // 单人游戏
        with(oButton) {
            visible = false;
        }
        oInformation.depth = -18;
        oInformation.visible = true;
        break;
    
    case 2: 
        // 局域网
        with(oButton) {
            depth = -23;
        }
        break;
        
    case 3:
        // 帮助
        with(oButton) {
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
