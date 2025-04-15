draw_set_font(font_debug); // Use your debug font or comment out if none
draw_set_color(c_yellow);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var y_pos = 10;
for (var i = 0; i < array_length(debug_log); i++) {
    draw_text(10, y_pos, debug_log[i]);
    y_pos += 20;
}