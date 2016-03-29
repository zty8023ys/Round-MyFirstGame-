///scr_go_room(room);
var goroom = argument[0];


if (goroom == r0) {
    oHero.visible = false;
} else {
    oHero.x = 192;
    oHero.y = 192;
    oHero.visible = true;
    if (global.lan && goroom ==atk02) {
        oEX.x = 384;
        oEX.y = 192;
        oEX.visible = true;
    }
}
with(oHero) {
    hp = maxhp;
}

room = goroom;
