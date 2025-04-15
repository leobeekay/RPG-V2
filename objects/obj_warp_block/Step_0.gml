if place_meeting(x, y, obj_player)
{
    show_debug_message("Warp block triggered!");
    show_debug_message("Target Room: " + string(target_rm));
    show_debug_message("Target Position: (" + string(target_x) + ", " + string(target_y) + ")");

    obj_player.x = target_x;
    obj_player.y = target_y;
    room_goto(target_rm);
}
