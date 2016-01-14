///go_room(room);
var goroom = argument[0];

if(goroom == atk01 || goroom == atk02) {
    oHero.visible = true;
    oHero.x = 544;
    oHero.y = 160;
}
if (goroom == r0) {
    oHero.visible = false;
}
with(oHero) {
    hp = maxhp;
}
room = goroom;
