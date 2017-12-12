///scr_move_state
// get the axis
scr_get_input_network();
if (dir_key && !audio_is_playing(wark1) && !phase_key) {
    audio_play_sound(wark1, 10, false);
}

// get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

if (dash_key && dir_key ) {
    state = scr_dash_state;
    alarm[0] = room_speed / 6;
}

if (attack_key) {
    state = scr_attack_state_new;
}



if (phase_key) {
    isphase = true;
} else {
    isphase = false;
    canplayphase = true;
}

if (phase_key && canplayphase) {
    canplayphase = false;
    alarm[3] = room_speed * phasetime;
    audio_play_sound(phase, 10, false);
}
if (defence_key) {
    state = scr_defence_state_new;
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
