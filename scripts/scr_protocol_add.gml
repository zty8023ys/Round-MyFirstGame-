/// scr_add_protocol(id, typeCount, type1, type2, ...);
var array;
assert(argument_count > 1);
assert(argument_count == argument[1] + 2, "argument count " + string(argument_count) + " args " + string(argument[1]));
for ( i = 0; i < argument_count; i++ ) {
    array[i] = argument[i];
}
ds_map_add(protocols, argument[0], array);

