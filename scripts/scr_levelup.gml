/// level up
with(oHeroStats){
    xp -= maxxp;
    level += 1;
    maxxp = level * 2;
    attack += addattack;
    defense += adddefense;
    maxhp += addhp;
    hp = maxhp;
    if (instance_exists(oHero)) {
        oHero.hp = hp;
    }
    stamina = maxstamina;
}
