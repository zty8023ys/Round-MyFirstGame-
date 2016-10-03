/// scr_attack_state

image_speed = attackspeed;

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
    /*var weapon = instance_create(x,y,oWeaponBloodMoment);
    weapon.creator = id;
    weapon.depth = id.depth - 1;
    weapon.image_angle = face * 90 - 2 * weapon.spd;
    */temphp = hp;
    var damage = instance_create(xx, yy, oDamage);
    damage.creator = id;
    crit = scr_chance(critchance/100);
    damage.damage = scr_if(crit,attack * (critdamage/100),attack);
    damage.knockback = knockback;
        
    if (!attacked) {
        var atksound = choose(atk1,atk2);
        audio_play_sound(atksound,10,false);
    }
    attacked = true;
    isattack = false;
}
