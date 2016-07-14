///scr_received_packet(buffer);
var buffer = argument[0];

var msgid = buffer_read(buffer, buffer_u8);


switch(msgid) {

    case READY_MSGID :
        if (room == r0 && oInformation.depth == -14) {
            scr_read_buffer(buffer);
            var buffer = buffer_create(BUFFERSIZE,buffer_fixed,1);
            buffer = scr_ready_buffer(buffer);
            
            if (instance_exists(oServer)) {
                var send = network_send_packet(client,buffer,buffer_tell(buffer));
                buffer_delete(buffer);
            } else {
                var send = network_send_packet(server,buffer,buffer_tell(buffer));
                buffer_delete(buffer);
            }
            if (send) scr_go_room(atk02);
        }
        break;
    case KEY_MSGID :
        // Read the key that was sent
        if (room == atk02) {
            var sendkey = buffer_read(buffer, buffer_u8);
            // And it's up/down state
            oEX.keylist[sendkey] = buffer_read(buffer, buffer_u8);
        }
        break;
        
    case HP_MSGID :
            // get the hp from oEX
            oHero.hp = buffer_read(buffer,buffer_f32);
        break;

        
    case MAXHP_MSGID :
            oHero.maxhp = buffer_read(buffer, buffer_f32);
        break;
        
    case RECHP_MSGID :
            oEX.hp = buffer_read(buffer,buffer_f32);
        break;
        
                
    case POS_MSGID :
            with(oEX) {
                phy_position_x = buffer_read(buffer,buffer_f32);
                phy_position_y = buffer_read(buffer,buffer_f32);
            }            
            with(oHero) {
                phy_position_x = buffer_read(buffer,buffer_f32);
                phy_position_y = buffer_read(buffer,buffer_f32);
            }
        break;
        
    case GAME_END :
        show_message("You lose!");
        game_restart();
        break;
        
    case PING_MSGID :
        if (instance_exists(oServer)) {
            //scr_ping(client);
            network_send_packet(client,argument[0],buffer_tell(buffer));
            buffer_delete(argument[0]);
        } else if(instance_exists(oClient)) {
            oClient.isping = true;
        }
        break;
        
    case GRD_MSGID :
        oGround.ground = buffer_read(buffer,buffer_u8);
        break;
}
