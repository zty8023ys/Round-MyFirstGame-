///scr_check_for_hero
if (blind) {
    state = scr_monster_wander_state;
} else {
    if (instance_exists(oHero)) {
       targetx = oHero.x;
       targety = oHero.y;
       var dis = distance_to_object(oHero);
       if (dis < sight) {
           state = scr_monster_chase_state;
       } else {
           scr_monster_wander_state();
       }
    } else {
        state = scr_monster_idle_state;
    }
}
