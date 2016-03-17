# Round-MyFirstGame-

使用Gamemaker:Studio制作的一款局域网对战策略类Arpg游戏。
基本架构已经完成，正在对数值进行平衡，增加新技能与天赋系统。
**图片素材来源于 [HeartBeast Studios](http://www.heartbeaststudios.com/)**
# 游戏截图
![主页面](/image/主页面.png)
![帮助界面+单人游戏](/image/帮助界面+单人游戏.png)
![联机界面](/image/联机界面.png)
![状态界面+技能界面.](/image/状态界面+技能界面.png)
![升级界面](/image/升级界面.png)
![战斗界面](/image/战斗界面.png)
![战斗界面3](/image/战斗界面3.png)

#[点我下载电脑版](http://45.58.54.172/game/round/Round_v1.2.1.exe)
#[点我下载安卓版](http://45.58.54.172/game/round/Round_v1.2.1.apk)
#广域网联机方案:
* 1.VPN,以WIN8.1为例,网络右键-属性-设置新的连接或网络-连接到工作区-否,创建新连接-使用我的Internet连接-Internet地址:ztory.f3322.net-创建-在右侧单击新出现的VPN-连接-帐号round-密码round-确定-已连接后打开游戏即可
* 2.Hamchi,使用方法以及下载地址: [点我下载Hamachi](http://45.58.54.172/game/hamachi.zip)

# **由于我用的是单文件形式,所以360有可能会误报.保证无毒.**

#更新日志
# 即将到来:
* 单人模式:英雄的试练
* 新技能:借力打力(反伤)
* 新技能:暗影迷踪(隐身)
* 战斗升级地图增加随机宝箱,提高受益


# v1.2
## 系统更新：
* 对战地图增加障碍物,减小战斗空间。
* 地图元素更新!对战模式新增"命运地面",随机增减血。
* 安卓版放出!更新虚拟按键,并且可与PC端联机对战。
* 广域网辅助联机软件推荐:Hamachi,详细用法和下载地址已更新
* 增加版本验证功能,从该版本以后所有玩家都会玩到最新版。
* 暂时取消背景音乐。
 
## 平衡性改动：
* 生命值大幅度增加,变为五倍血量。


# v1.1
## 系统更新：
* 添加多种音效。
* 为双方增加识别名称,变更对手颜色,可以更加清晰的分辨敌我。
* 战斗升级时死亡返回上一界面。
* 去掉左上角鼠标位置坐标。

## BUG修复：
* 修复了一个选择符文时可能出现的重大BUG。



# v1.0正式版：
## 系统更新：
* 完成了局域网对战功能。
* 快去和你的小伙伴对战吧!
 
## BUG修复：
* 修复了史莱姆原地抽风的bug。


#v0.3
##系统更新：
* 删除了对象oHeroStats，将其完全转移到oHero中，为下一步增加联网系统做准备。
* 删除了冗余的精灵，对象以及脚本。


#v0.2
##系统更新：
* 为英雄和怪物增加血条
* 升级选项加入兑换全部行动点选项
* 第10回合点击结束按钮后，进入BOSS房间（未创建BOSS)
##平衡性改动：
* 加强击溃技能：降低生命值→降低生命上限；


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
