/// level up
with(oHeroStats){
    xp -= maxxp;
    level += 1;
    maxxp = level * 2;
    attack += addattack;
    defense += adddefense;
    maxhp += addhp;
    hp = maxhp;
    oHero.hp = hp;
    stamina = maxstamina;
}
