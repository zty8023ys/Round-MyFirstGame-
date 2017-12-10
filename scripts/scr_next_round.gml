// next round
if (r < 10) {
    with(oHero) {
        r += 1;
        maxmovepoint = r;
        movepoint = maxmovepoint;
        lflag = true;
        if(critchance_lv){
            critchanceflag = true;
            critchance += raddcritchance; 
        }
        if(lifeleech_lv) {
            lifeleechflag = true;
            lifeleech += raddlifeleech;
        }
        if(dealperhp_lv) {
            dealperhpflag = true;
            dealperhp += radddealperhp;
        }
        if(dashreduce_lv && dashreduceeffect < updashreduce) {
            dashreduceflag = true;
            dashreduceeffect = min(updashreduce,dashreduceeffect+rdashreduce);
            dashcost = DASH_COST - dashreduceeffect;
        }
        if(phase_lv) {
            phasetime += raddphase;
            phaseflag = true;
        }
    }
} else {
    r = 99;
    if (!global.lan) {
        scr_go_room(atk03);
    }else{
        scr_wait_other();
    }
}

