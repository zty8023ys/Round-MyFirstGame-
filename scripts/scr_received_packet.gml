///scr_received_packet(buffer);
var buffer = argument[0];

var msgid = buffer_read(buffer, buffer_u8);


switch(msgid) {

    case READY_MSGID :
        if (room == r0 && oInformation.depth == -14) {
            scr_read_ready_buffer(buffer);
            var buffer = scr_ready_buffer();
            
            var send = scr_send_buffer(buffer);
            
            if (send) scr_go_room(atk02);
        }
        break;
        
    case KEY_MSGID :
        // Read the key that was sent
        if (room == atk02) {
            var sendkey = buffer_read(buffer, buffer_u16);
            // And it's up/down state
            oEX.keylist[sendkey] = buffer_read(buffer, buffer_u8);
        }
        break;
    
    case HP_MSGID :
            // get the hp from oEX
            var who = buffer_read(buffer,buffer_u32);
            var hp = buffer_read(buffer,buffer_f32);
            who.hp = hp;
            who.temphp = who.hp;
        break;
        
    case MAXHP_MSGID :
            buffer_read(buffer, buffer_u32);
            oHero.maxhp = buffer_read(buffer, buffer_f32);
            oHero.hp = min(oHero.maxhp, oHero.hp);
        break;
 
    case POS_MSGID :
            with(oEX) {
                phy_position_x = buffer_read(buffer,buffer_f32);
                phy_position_y = buffer_read(buffer,buffer_f32);
                face = buffer_read(buffer,buffer_u8);
            }
        break;
        
    case GAME_END :
        show_message("You lose!");
        game_restart();
        break;


    case GRD_MSGID :
        oGround.ground = buffer_read(buffer,buffer_u8);
        oGround.image_index = oGround.ground;
        break;
            
    case MSG_PING :
        var ping = handle(protocol, scr_protocol_get(MSG_PING));
        
        if (instance_exists(oServer)) {
            scr_ping();
        } else{
            if(instance_exists(oClient)) {
                oClient.isping = true;
            }
        }
        break;
        
}
