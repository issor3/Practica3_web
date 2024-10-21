/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ysp += 0.2

xsp = 0

if keyboard_check(vk_left)
{
        xsp = -4
}

if keyboard_check(vk_right)
{
        xsp = +4
		
}

if place_meeting(x, y+1, oSolid)
{
        ysp = 0
        if keyboard_check(vk_up)
        {
                ysp = -5
				
				
        }
}

move_and_collide(xsp, ysp, oSolid)

if (place_meeting(x, y, oFlag))
{
	var room_name = room_get_name(room);
	guardar_dato(room_name, score);
	
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