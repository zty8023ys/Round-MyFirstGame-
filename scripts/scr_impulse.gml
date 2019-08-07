/// scr_impulse(creator,other,knockback);
var creator = argument[0];
var beAttack = argument[1];
var knockback = argument[2];

var dir = point_direction(creator.x, creator.y, beAttack.x, beAttack.y);
var xforce = lengthdir_x(knockback,dir);
var yforce = lengthdir_y(knockback,dir);

with (beAttack) {
    physics_apply_impulse(x, y, xforce, yforce);
}
