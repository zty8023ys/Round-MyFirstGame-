// next round
if (r < 10) {
    with(oHero) {
        r += 1;
        maxmovepoint = r;
        movepoint = maxmovepoint;
        lflag = true;
        critchanceflag = true;
        if(critchance_lv) critchance += 1; 
        lifeleechflag = true;
        if(lifeleech_lv) lifeleech += 1;
        dealperhpflag = true;
        if(dealperhp_lv) dealperhp += .5;
        dashreduceflag = true;
        if(dashreduce_lv) {
            dashcost -= .2;
            if(dashcost <= 1) {
                dashcost = 1;
            }
        }
    }
} else {
    r = 99;
    if (!global.lan) {
        scr_go_room(atk02);
    }
}
