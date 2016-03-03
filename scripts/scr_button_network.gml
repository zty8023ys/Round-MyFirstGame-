switch(identity) {
    case 1: 
        scr_server();
        break;
    
    case 2: 
        scr_client();
        break;
    
    case 3: 
        //广域网联机
        scr_button_ip();
        break;
    
    case 4: 
        //返回主菜单
        with(oButton) {
            depth = -20;
        }
        break;
}
