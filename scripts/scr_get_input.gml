///scr_get_input

up_key = (keyboard_check(vk_up));
down_key = (keyboard_check(vk_down));
left_key = (keyboard_check(vk_left));
right_key = (keyboard_check(vk_right));

dash_key = keyboard_check_pressed(ord("Z"));
attack_key = keyboard_check_pressed(ord("X"));
phase_key = keyboard_check_pressed(ord("C"));
defence_key = keyboard_check_pressed(ord("D"))
notdefence_key = keyboard_check_released(ord("D"));
