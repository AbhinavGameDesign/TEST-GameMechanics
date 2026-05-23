//get inputs 
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
jump_keyPressed = keyboard_check(vk_space);

//getting xspd and yspd
	//xspd based on button presses
	xspd = (right_key - left_key) * mspeed
	//gravity
	yspd += grav;
	
	//jump
	if jump_keyPressed && place_meeting(x, y+1,obj_tiles)
	{
		yspd = jumpspd;
	}


//collison
	//xcollison
	if place_meeting(x + xspd,y,obj_tiles)
	{
		var _pixelCheck = sign(xspd);
		while !place_meeting(x + _pixelCheck,y,obj_tiles)
		{
			x += _pixelCheck
		}
		
		xspd = 0;
	}
	
x += xspd
	
	//ycollison
	if place_meeting(x,y + yspd,obj_tiles)
	{
		var _pixelCheck = sign(yspd)
		while !place_meeting(x,y + _pixelCheck,obj_tiles)
		{
			y += _pixelCheck;
		}
		
		yspd = 0;
	}

y += yspd