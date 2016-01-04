// next round
oHeroStats.hp = oHeroStats.maxhp; // 每回合满血


if (r < 10) {
    with(oHeroStats) {
        r += 1;
        maxmovepoint = r;
        movepoint = maxmovepoint;
        lflag = true;
        critchanceflag = true;
        lifeleechflag = true;
        dealperhpflag = true;
        dashreduceflag = true;
        
    }
}

