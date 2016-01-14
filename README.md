# Round-MyFirstGame-

使用Gamemaker:Studio制作的一款策略类Arpg游戏。
基本架构已经完成，正在学习联网方案，之后即可加入最终的PvP系统，最后会对数值进行平衡，增加新技能与天赋系统。
**素材来源于 [HeartBeast Studios](http://www.heartbeaststudios.com/)**

#鉴于百度越来越不要脸（把血友病吧卖个野鸡专家野鸡医院），以后会尽量不用百度的东西，抵制百度，从我做起！

#[点我下载（Google源）](https://drive.google.com/open?id=0B_iqAG1M4dRJODkwMjlfbWFhaVk)
#[点我下载（Dropbox源）](https://www.dropbox.com/s/b7fpl30s2o5ca8f/MyRPG.exe?dl=0)



#更新日志
#v0.3
##系统更新：
* 删除了对象oHeroStats，将其完全转移到oHero中，为下一步增加联网系统做准备。
* 删除了冗余的精灵，对象以及脚本。


#v0.2
##系统更新：
* 为英雄和怪物增加血条
* 升级选项加入兑换全部行动点选项
* 第10回合点击结束按钮后，进入BOSS房间（未创建BOSS，暂时展现为COMING SOON!）

##平衡性改动：
* 加强击溃技能：降低生命值→降低生命上限；（切记：过早的优化是万恶之源！）


#v0.1
##完成基本框架，包括
###1. 基本UI
* 信息栏：帮助，符文选择，英雄状态，技能学习
* 按钮：初始界面，游戏界面，升级界面

###2. 三个基本符文
* 焚：增加攻击力，降低生命与防御；
* 怒：增加暴击几率，降低暴击伤害；
* 磐：增加生命与防御，降低攻击力。

###3. 四个基本技能
* 恩赐解脱-暴击
* 嗜血狂怒-吸血
* 破釜沉舟-击溃
* 凌波微步-减耗
    
###4. 升级系统
* 1行动点兑换4经验值；
* 消耗2行动点战斗升级
    
###5. 战斗系统
* 基本操作：↑↓←→，X攻击，Z冲刺；
* 视野，击退，经验值，怪物基本AI，死亡几率掉落血球
