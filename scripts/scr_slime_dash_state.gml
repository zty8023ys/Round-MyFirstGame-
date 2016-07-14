///scr_dash_state
if (instance_exists(oHero)){
    dir = point_direction(x, y, oHero.x, oHero.y);
    len = oHero.spd * 2; // 冲刺速度和玩家相同
} else {
    dir = 0;
    len = 0;
}
// get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

// creat dash effect
var dash = instance_create(x, y, oDashEffect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;
dash.image_blend = image_blend;

