///scr_defence_state
defence_key = keylist[ord("D")];
notdefence_key = scr_if(keylist[ord("D")],false,true);
if (notdefence_key) {
    isdefence = false;
    defence *= .5;
    state = scr_move_state_new;
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
