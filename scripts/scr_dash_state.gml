///scr_dash_state

dir = face * 90;
len = spd * 4; // 冲刺速度为距离的4倍

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
