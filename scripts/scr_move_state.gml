///scr_move_state
scr_get_input();

if (dash_key && dir_key && oHeroStats.stamina >= oHeroStats.dashcost) {
    state = scr_dash_state;
    oHeroStats.stamina -= oHeroStats.dashcost;
    alarm[0] = room_speed / 6;
}

if (attack_key) {
    state = scr_attack_state;
}

// get direction
dir = point_direction(0, 0, xaxis, yaxis);

// get length
if (xaxis == 0 && yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_face();
}

// get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

// control the sprite
image_speed = spd * .1;
if (len == 0) image_index = 0;

switch(face) {
    case RIGHT:
        sprite_index = sHeroRight;
    break;
    
    case UP:
        sprite_index = sHeroUp;
    break;
    
    case LEFT:
        sprite_index = sHeroLeft;
    break;
    
    case DOWN:
        sprite_index = sHeroDown;
    break;
}
