///scr_go_room(room);
var goroom = argument[0];
oHero.x = 192;
oHero.y = 192;

if (global.lan) {
    oEX.x = 384;
    oEX.y = 192;
}

if(goroom == atk01) {
    oHero.visible = true;
}

if (goroom == atk02) {
    oHero.visible = true;
    if (global.lan) {
        oEX.visible = true;
    }
}


if (goroom == r0) {
    oHero.visible = false;
}
with(oHero) {
    hp = maxhp;
}

room = goroom;
