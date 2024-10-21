/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ysp += 0.1
xsp = 0

if keyboard_check(vk_left)
{
        xsp = -1
}

if keyboard_check(vk_right)
{
        xsp = +1
}

if place_meeting(x, y+1, oSolid)
{
        ysp = 0
        if keyboard_check(vk_up)
        {
                ysp = -2        
        }
}

move_and_collide(xsp, ysp, oSolid)

if (place_meeting(x, y, oFlag))
{
    room_goto_next();
}
if (place_meeting(x, y, oSpike))
{
    room_restart();
}


var star = instance_place(x, y, oStar);


if (star != noone)
{
    score += 1; 
	audio_play_sound(snd_star, 1, false);
    with (star)
    {
        instance_destroy();
    }
}