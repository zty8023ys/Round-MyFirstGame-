///skill list

//恩赐解脱(暴击)
critchance_mp = 3;  // 升级消耗行动点
critchance_lv = 0;  // 初始技能等级
addcritchance = 5;  // 每级增加效果
raddcritchance = 1; // 每回合增加效果
critchanceflag = true; // 当前回合是否可以学习技能

//嗜血狂暴(吸血)
lifeleech_mp = 2;
lifeleech_lv = 0;
addlifeleech = 5;
raddlifeleech = 2;
lifeleechflag = true;

//破釜沉舟(百分比)
dealperhp_mp = 3;
dealperhp_lv = 0;
dealperhp = 0; // 当前技能效果
adddelperhp = 4;
radddelperhp = 1;
dealperhpflag = true;

//凌波微步(减耗)
dashreduce_mp = 4;
dashreduce_lv = 0;
dashreduce = .5;
rdashreduce = .2;
updashreduce = 3; // 减耗上限
dashreduceeffect = 0; // 当前减耗数值
dashreduceflag = true;
