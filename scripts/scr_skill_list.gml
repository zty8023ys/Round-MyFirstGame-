///skill list

//恩赐解脱(暴击)
critchance_mp = 2;  // 升级消耗行动点
critchance_lv = 0;  // 初始技能等级
addcritchance = 5;  // 每级增加效果
raddcritchance = 1; // 每回合增加效果
critchanceflag = true; // 当前回合是否可以学习技能

//嗜血狂暴(吸血)
lifeleech_mp = 2;
lifeleech_lv = 0;
addlifeleech = 1;
raddlifeleech = .5;
lifeleechflag = true;

//破釜沉舟(百分比)
dealperhp_mp = 3;
dealperhp_lv = 0;
dealperhp = 0; // 当前技能效果
adddealperhp = 3;
radddealperhp = 1;
maxperlevel = 20;
dealperhpflag = true;

//凌波微步(减耗)
dashreduce_mp = 4;
dashreduce_lv = 0;
dashreduce = .5;
rdashreduce = .2;
updashreduce = 3; // 减耗上限
dashreduceeffect = 0; // 当前减耗数值
dashreduceflag = true;



// 暗影迷踪(隐身)
canphase = false;
phase_mp = 3;
phase_lv = 0;
phasetime = 0; // 当前技能效果
addphase = 1;
raddphase = .5;
phaseflag = true;
phasecost = 10;
