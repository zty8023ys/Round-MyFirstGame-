/// assert(cond, msg);
return argument[0];
if (!argument[0]) {
    if (argument_count < 2){
        print("assert failed!");
    } else {
        print("assert failed!" + string(argument[1]));
    }
}
return argument[0];


