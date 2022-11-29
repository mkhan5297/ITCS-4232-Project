function CreateHit() {
var owner = argument0
var effect, dmg, x_offset, y_offset;
effect = argument1;
dmg = argument2;
x_offset = argument3;
y_offset = argument4;
var h = instance_create_layer(x+x_offset, y+y_offset, "Instances", obj_hit);

h.owner = owner;
h.effect = effect;
h.dmg = dmg;
h.x_offset = x_offset;
h.y_offset = y_offset;
}