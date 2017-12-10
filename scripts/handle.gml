/// scr_handle(obj, scr, arg1, arg2, ...);
assert(argument_count < 17,"handle arguments must less than 17")
var ret;
with (argument[0]) {
    switch(argument_count) {
        case 2:
            ret = script_execute(argument[1]);
        break;
        case 3:
            ret = script_execute(argument[1],argument[2]);
        break;
        case 4:
            ret = script_execute(argument[1],argument[2],argument[3]);
        break;
        case 5:
            ret = script_execute(argument[1],argument[2],argument[3],argument[4]);
        break;
        case 6:
            ret = script_execute(argument[1],argument[2],argument[3],argument[4],argument[5]);
        break;
        case 7:
            ret = script_execute(argument[1],argument[2],argument[3],argument[4],argument[5],argument[6]);
        break;
        case 8:
            ret = script_execute(argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7]);
        break;
        case 9:
            ret = script_execute(argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8]);
        break;
        case 10:
            ret = script_execute(argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9]);
        break;
        case 11:
            ret = script_execute(argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10]);
        break;
        case 12:
            ret = script_execute(argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11]);
        break;
        case 13:
            ret = script_execute(argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11],argument[12]);
        break;
        case 14:
            ret = script_execute(argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11],argument[12],argument[13]);
        break;
        case 15:
            ret = script_execute(argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11],argument[12],argument[13],argument[14]);
        break;
        case 16:
            ret = script_execute(argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11],argument[12],argument[13],argument[14],argument[15]);
        break;
    }
}
return assert(ret);

