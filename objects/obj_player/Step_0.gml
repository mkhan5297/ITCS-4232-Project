/// @description Character Control



right = (controller == CONT_P1)?ord("D"):vk_right
left  = (controller == CONT_P1)?ord("A"):vk_left
up    = (controller == CONT_P1)?ord("W"):vk_up
down  = (controller == CONT_P1)?ord("S"):vk_down
p1    = (controller == CONT_P1)?ord("U"):vk_numpad4
p2    = (controller == CONT_P1)?ord("J"):vk_numpad1
k1    = (controller == CONT_P1)?ord("I"):vk_numpad5
k2    = (controller == CONT_P1)?ord("K"):vk_numpad2







//Character Control
CharacterControl()

//Animation Control
AnimationControl()

//Collision
CollisionAndMovements()