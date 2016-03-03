/// scr_attack_state_new

image_speed = .5;

switch(sprite_index) {

    case sHeroUp : sprite_index = sHeroAttackUp;
    break;
    
    case sHeroDown : sprite_index = sHeroAttackDown;
    break;
    
    case sHeroLeft : sprite_index = sHeroAttackLeft;
    break;
    
    case sHeroRight : sprite_index = sHeroAttackRight;
    break;
}

    var xx = x;
    var yy = y;
if (image_index >= 3 && attacked == false) {
    switch(sprite_index) {
        case sHeroAttackUp :  
        yy = yy - 10; 
        break;
        
        case sHeroAttackDown :
        yy = yy + 11; 
        break;
        
        case sHeroAttackLeft : 
        xx -= 10;
        yy += 2;
        break;
        
        case sHeroAttackRight :
        xx += 10;
        yy += 2;
        break;
    }
    
    var damage = instance_create(xx, yy, oDamage);
    damage.creator = id;
    damage.damage = attack;
    damage.knockback = knockback;

    attacked = true;
    isattack = false;
}
