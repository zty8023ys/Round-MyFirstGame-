/// scr_if(expression, true, false);
var expression = argument[0];
if (expression) {
    return argument[1];
}
return argument[2];
