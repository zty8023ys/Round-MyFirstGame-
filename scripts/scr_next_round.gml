// next round
if (r < 10) {
    with(oHero) {
        r += 1;
        maxmovepoint = r;
        movepoint = maxmovepoint;
        lflag = true;
        critchanceflag = true;
        if(critchance_lv) critchance += raddcritchance; 
        lifeleechflag = true;
        if(lifeleech_lv) lifeleech += raddlifeleech;
        dealperhpflag = true;
        if(dealperhp_lv) dealperhp += radddelperhp;
        dashreduceflag = true;
        if(dashreduce_lv && dashreduceeffect < updashreduce) {
            dashreduceeffect = min(updashreduce,dashreduceeffect+rdashreduce);
            dashcost = DASH_COST - dashreduceeffect;
        }
    }
} else {
    r = 99;
    if (!global.lan) {
        scr_go_room(atk02);
    }
}
