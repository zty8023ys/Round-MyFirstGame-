/// scr_impulse(obj,dir,lenth);

var obj = argument[0];
var dir = argument[1];
var lenth = argument[2];

var xforce = lengthdir_x(lenth,dir);
var yforce = lengthdir_y(lenth,dir);
with(obj) {
    while(lenth > 0 ) {
        x += lengthdir_x(.01,dir);
        y += lengthdir_y(.01,dir);
        lenth -= .01;
    }
}
