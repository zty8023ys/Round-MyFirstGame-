///scr_received_packet(buffer);
var buffer = argument[0];

var msgid = buffer_read(buffer, buffer_u8);


    // Get the socket ID - this is the CLIENT socket ID. We can use this as a "key" for this client
    var clientid = async_load[? "id"];

    if( msgid==KEY_MSGID )    
    {
        // Read the key that was sent
        var key = buffer_read(buff, buffer_s16 );
        // And it's up/down state
        var updown = buffer_read(buff, buffer_s16 );
    
        // translate keypress into an index for our player array.
        if( key==vk_left ) {
            key=LEFT_KEY;
        }
        else if( key==vk_right ) {
            key=RIGHT_KEY;
        }
        else if( key==vk_space ) {
            key=JUMP_KEY;
        }
         
        // translate updown into a bool for the player array       
        if( updown==0 ){
            inst.keys[key] = false;
        }else{
            inst.keys[key] = true;
        }
    }
