///scr_area(x,y,width,height);
//when mouse released, check mouse at buttom area or not
var btmx = argument[0];
var btmy = argument[1];
var width = argument[2]/2;
var height = argument[3]/2;

if (mouse_x >= btmx - width && mouse_x <= btmx + width && mouse_y  >= btmy - height && mouse_y <= btmy + height) {
    return true;
} else {
    return false;
}
