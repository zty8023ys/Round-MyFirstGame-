///scr_go_room(room);
var goroom = argument[0];

switch(goroom) {
    case r0 :
        with(oHero) {
            hp = maxhp;
        }
        oHero.x = 224;
        oHero.y = 192;
        oHero.visible = false;
    break;
    
    case atk01:
        oHero.visible = true;
    break;
    
    case atk02:
        instance_create(256,160,oGround);
        oHero.x = scr_if(instance_exists(oServer),300,192);
        oHero.y = 192;
        oHero.visible = true;
        oEX.x = scr_if(instance_exists(oServer),192,300);
        oEX.visible = true;
    break;
    
    case atk03: 
        oHero.visible = true;
    break;
}

room = goroom;
