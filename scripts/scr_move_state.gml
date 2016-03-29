///scr_move_state
scr_get_input();

if (isstun) {
    state = scr_stun_state;
    alarm[0] = stuntime;
}

dir_key = (up_key || down_key || left_key || right_key);
if (dir_key && !audio_is_playing(wark1)) {
    audio_play_sound(wark1, 10, false);
}
// get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

if (dash_key && dir_key && stamina >= dashcost) {
    isdash = true;
    state = scr_dash_state;
    stamina -= dashcost;
    alarm[0] = room_speed / 6;
}

if (attack_key) {
    isattack = true;
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


//get hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//move
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
