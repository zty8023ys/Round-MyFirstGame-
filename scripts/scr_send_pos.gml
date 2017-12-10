/// scr_send_pos();
if (room == atk02 && instance_exists(oHero) && instance_exists(oEX)) {
        var buffer = scr_buffer_create(POS_MSGID);
        buffer_write(buffer,buffer_f32,oHero.phy_position_x);
        buffer_write(buffer,buffer_f32,oHero.phy_position_y);
        buffer_write(buffer,buffer_u8,oHero.face);
        
        scr_send_buffer(buffer);
}
