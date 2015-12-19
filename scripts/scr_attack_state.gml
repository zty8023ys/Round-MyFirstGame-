/// scr_attack_state

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

    var xx = phy_position_x;
    var yy = phy_position_y;
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
    with(oHeroStats) {
        crit = scr_chance(critchance/100);
        if (crit) {
            truedamage = attack * (critdamage/100);
        } else {
            truedamage = attack;
        }
        damage.damage = truedamage;
        damage.knockback = knockback;
    }
    attacked = true;
}
