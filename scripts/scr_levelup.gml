/// level up
with(oHero){
    if (room != r0) {
        audio_play_sound(nextlevel,10,false);
    }
    xp -= maxxp;
    level += 1;    
    attack += addattack;
    defence += adddefence;
    maxhp += addhp;
    hp = maxhp;
    stamina = maxstamina;
    switch(level) {
        case 1:
            maxxp = 8;
            break;
        case 2:
            maxxp = 12;
            break;
        case 3:
            maxxp = 16;
            break;
        case 4:
            maxxp = 20;
            break;
        case 5:
            maxxp = 24;
            break;
        case 6:
            maxxp = 28;
            break;
        case 7:
            maxxp = 32;
            break;
        case 8:
            maxxp = 36;
            break;
        case 9:
            maxxp = 40;
            break;
        default :
            maxxp = 999;
            break;
    }

}
