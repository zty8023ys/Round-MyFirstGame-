/*
TODO :
    C/S 模式
    消息队列
    发送操作
    

    对战 :
        敌方方位指示器
        优化局域网内生命值的计算
        
    各种音效:
        获胜音效
        失败音效
        
        
        
    WIFI热点联机
    技能更新:借力打力(反伤)

    
    

    
DONE :
    //显示耐力条
    //优化攻速算法
    //优化伤害计算
    //修复了非主机玩家卡顿的问题
    //强化符文，变为全域效果
    //安卓虚拟四向方向键变八向方向键
    //不同单位伤害单独计算
    //字体大小
    //离线游戏
    //移植安卓(虚拟按键)
    //版本验证
    //血量一百太少了,所以采取五倍血量
    //修复选择符文鼠标离开选项时的BUG
    //战斗升级时死亡返回按钮界面
    //战斗升级地图 增加随机宝箱
    //技能更新:暗影迷踪(隐身)
    
    对战 :
        //基本移动
        //攻击&冲刺
        //击溃同步
        //生命同步
        //位置同步
        //结束条件
        //减小可移动空间
        //增加陷阱(毒地面和恢复地面)
    
    /*
    广域网联机方案: VPN!
        外网IP直连，无法穿透路由器，失败
        pptp vpn服务器+ddns，成功,需要防火墙支持
        teamview自带vpn连接，成功，但是ping值太高
        Hamachi,暂时失败有待验证,双方关掉防火墙就行了!!!广域网联机成功!
    */    
/*        
    //各种音效:
        //背景音乐
        //脚步声
        //攻击音效
        //冲刺音效
        //获得经验
        //升级音效
        //受伤音效
        //M 键开关背景音乐
        //删除了背景音乐

   
    单人游戏BOSS---史莱姆之王 生命值2000 攻击力50 防御力50
    技能1 : 冲刺,cd 10s,冲向英雄，伤害200,眩晕1秒.冲刺速度等于玩家冲刺速度,冲刺距离为二倍玩家距离.
    技能2 : 重击,cd 5s,强化下次攻击，伤害100,眩晕1秒.
    技能3 : 分则能成,cd 0,每当损失500血量时触发一次,分出两个小型史莱姆,
            每个小型史莱姆有300生命值,攻击力20,防御力20,拥有蓄力冲刺技能
            CD20s,伤害50,眩晕1秒.冲刺速度等于玩家冲刺速度,冲刺距离等于玩家距离.
