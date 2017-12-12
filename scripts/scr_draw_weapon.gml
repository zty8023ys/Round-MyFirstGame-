///scr_draw_weapon(weapon);
if (argument[0] != 0) {
    var weapon = instance_create(argument[1],argument[2],oWeaponBloodMoment);
    weapon.creator = id;
    weapon.depth = id.depth - 1;
}
