
#region //players 
#macro CHAR_1  0
#macro CHAR_2  1


#macro MAX_CHARS  2
#endregion

#region Game Variables 
#macro GRAVITY_FORCE  0.5
#macro WALK_SPD       2
#macro SPRINT_SPD     4
#macro JUMP_FORCE     -10

#macro DBLTAP_CD      20
#macro THROW_BACKWARD 0

#macro MAX_HP		200
#endregion

#region //controllers - player object controllers
#macro CONT_P1  0    // will be controlled using WASD
#macro CONT_P2  1	// controlld using arrow keys
#macro CONT_COM 2   // AI
#endregion

#region States -- player states
#macro STATE_FREE  0 // free to do anything
#macro STATE_ATTACK 1
#macro STATE_SPRINT 2
#macro STATE_STEPBACK 3
#macro STATE_THROW 4
#macro STATE_HURT  5
#macro STATE_BLOCK 6
#macro STATE_LOSE 7
#macro STATE_WIN 8
#endregion

#region
#macro ATK_P1 0
#macro ATK_P2 1
#macro ATK_K1 2
#macro ATK_K2 3

#endregion

#region
#macro EFF_NONE 0
#macro EFF_KNOCKUP 1
#macro EFF_KNOCKBACK 2

#endregion
