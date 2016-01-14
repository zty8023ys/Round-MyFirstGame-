///scr_get_input
//pause_key = keyboard_check_pressed(ord("P"));

up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));

dir_key = keyboard_check(up_key || down_key || left_key || right_key);

dash_key = keyboard_check_pressed(ord("Z"));
attack_key = keyboard_check_pressed(ord("X"));


// get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);
