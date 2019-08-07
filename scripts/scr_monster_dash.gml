/// scr_monster_dash(dashtime);
if (dashisready && !blind) {
    state = scr_slime_dash_state;
    dashisready = false;
    alarm[3] = argument[0]; // 冲刺时间
    alarm[2] = room_speed * dashcd;
}
