///scr_deal_damage(damage,defence);
var damage = argument[0];
var defence = argument[1];
return damage * (1 - defence/(defence+50));
