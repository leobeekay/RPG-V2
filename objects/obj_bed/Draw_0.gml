// Get the reference to the player
var _player = instance_nearest(x, y, obj_player);

// Define the pillow side (assuming the pillow is at the top of the bed sprite)
var _pillow_y = y - sprite_height/2; // Adjust this value based on your bed sprite
var _foot_y = y + sprite_height/2;   // Adjust this value based on your bed sprite

// Store previous depth for comparison
var _prev_depth = depth;

// Check if player is near the bed
if (_player != noone) {
    // If player is closer to pillow side than foot side, bed should be drawn above player
    if (_player.y <= _pillow_y + sprite_height/4) {
        // Draw the bed after the player (above the player)
        depth = _player.depth - 1;
    } else {
        // Draw the bed before the player (underneath the player)
        depth = _player.depth + 1;
    }
    
    // Log depth values when depth changes or player moves
    static _last_player_x = 0;
    static _last_player_y = 0;
    
    if (_prev_depth != depth || _last_player_x != _player.x || _last_player_y != _player.y) {
        show_debug_message("Player position: (" + string(_player.x) + ", " + string(_player.y) + ")");
        show_debug_message("Player depth: " + string(_player.depth) + " | Bed depth: " + string(depth));
        show_debug_message("Player at " + (_player.y <= _pillow_y + sprite_height/4 ? "pillow side" : "foot side"));
        
        // Update last known position
        _last_player_x = _player.x;
        _last_player_y = _player.y;
    }
} else {
    // Default depth when player is not near
    depth = -bbox_bottom;
}

// Draw the bed
draw_self();