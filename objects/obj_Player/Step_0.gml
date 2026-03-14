if (global.doGameStep) 
{
	global.doGameStep = false;
}

if (keyboard_check_pressed(vk_space) or 
	keyboard_check_pressed(ord("W")) or  
	keyboard_check_pressed(ord("A")) or  
	keyboard_check_pressed(ord("S")) or  
	keyboard_check_pressed(ord("D"))) 
{
	global.doGameStep = true;
	
	var _destX = x;
	var _destY = y;
	switch (keyboard_lastkey)
	{
		case ord("W"): 
			_destY -= GRID_SIZE;
			break;
		case ord("A"):
			_destX -= GRID_SIZE;
			break;
		case ord("S"):
			_destY += GRID_SIZE;
			break;
		case ord("D"):
			_destX += GRID_SIZE;
			break;
	}
	if (place_meeting(_destX, _destY, obj_Floor) and not place_meeting(_destX, _destY, obj_Collidable)) {
		x = _destX;
		y = _destY;
		
		if (keyboard_lastkey != vk_space) 
		{
			energy -= 1;
		}
	}
	else {
		var _inst = instance_place(_destX, _destY, obj_Collidable);
		if (_inst != noone) 
		{
			_inst.collideWithPlayer(self);
		}
	}
}

