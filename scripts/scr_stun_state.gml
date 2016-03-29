/// stun state
image_speed = 0;
image_index = 0;
if (!instance_exists(oStun) || !oStun.creator == id) {
    var stun = instance_create(x,y-18,oStun);
    stun.creator = id;
}
