///scr_defence_state
defence_key = keyboard_check_pressed(ord("D"))
notdefence_key = keyboard_check_released(ord("D"));
if (notdefence_key) {
    isdefence = false;
    defence *= .5;
    isstun = false;
    stuntime = 0;
    state = scr_move_state;
}else {
    if (!isdefence) {
        isdefence = true;
        defence *= 2;
        switch(sprite_index) {
        
            case sHeroUp : sprite_index = sHeroDefenceUp;
            break;
            
            case sHeroDown : sprite_index = sHeroDefenceDown;
            break;
            
            case sHeroLeft : sprite_index = sHeroDefenceLeft;
            break;
            
            case sHeroRight : sprite_index = sHeroDefenceRight;
            break;
        }
        image_speed = 0;
        image_index = 0;
    }
}
