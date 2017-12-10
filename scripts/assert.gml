/// assert(cond, msg);
if (!argument[0]) {
    if (argument_count < 2){
        show_message("assert failed!");
    } else {
        show_message(argument[1]);
    }
} else {
    return argument[0];
}

