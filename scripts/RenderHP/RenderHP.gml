
function RenderHP(){
//draw p1 heatlh bar
var sp_height = sprite_get_height(spr_healthbar);
var sp_width = sprite_get_width(spr_healthbar);
var x_margin = 10;
var y_margin = 20;
draw_sprite_ext(spr_healthbar, 0, x_margin, y_margin, 2, 2, 0, c_white, 1);
draw_sprite_part_ext(spr_healthbar, 1, 0, 0, sp_width * (p1.hp/MAX_HP), sp_height, x_margin, 20, 2, 2, c_green, 1);


//draw p2 health bar
var width = view_wport[0];
draw_sprite_ext(spr_healthbar, 0, width - x_margin, y_margin, -2, 2, 0, c_white, 1);
draw_sprite_part_ext(spr_healthbar, 1, 0, 0, sp_width * (p2.hp/MAX_HP), sp_height, width - x_margin, y_margin, -2, 2, c_green, 1);

}