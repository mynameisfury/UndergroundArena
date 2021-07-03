 if(hasControl){
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);
//downForward = keyboard_check(vk_down) && keyboard_check(vk_right);
upRight = keyboard_check_pressed(vk_up) && keyboard_check(vk_right);
//downBack = keyboard_check(vk_down) && keyboard_check(vk_left);
upLeft = keyboard_check_pressed(vk_up) && keyboard_check(vk_left);
keyLightPunch = keyboard_check_pressed(vk_lshift);
keyMediumPunch = keyboard_check_pressed(vk_space);



//keyDash = keyboard_check(vk_space)
}
else
{
	keyUp = 0;
	keyRight = 0;
	keyLeft = 0;
	keyDown = 0;
}





var move = keyRight - keyLeft;

//vsp = vsp + grv;

//timer for input buffers. timer could count up and if the same button is pressed within that time then it comes out as a dash?



if (!keyDown){
	crouched = false;
}
if (crouched){
	sprite_index = spCrouch;
	hsp = 0;
	//objFighter.y = 0;

}
if (!crouched){
	sprite_index = spIdle1;
	

}

//grounded actions
if (onGround)
{
	hsp = move * walksp;
	if (keyDown){
	crouched = true;
	move = 0;
	}

	if (upRight){
		vsp = -jumpSpd;
		while(!onGround){
			move = -1;		
		}
	}
	if (upLeft){
		vsp = -jumpSpd;
		while(!onGround){
			move = -1;		
		}
	}
	else if (keyUp){
	vsp = -jumpSpd;
	}
	if(keyboard_check_pressed(vk_left)){
  if(ableToDash){
    hsp -= dashDistance;
  }
  else{
    ableToDash = true
    alarm[0] = 10
  }
  
  	if(keyMediumPunch){
		for (i=0; i < spFanThrow.image_number; i++){
		sprite_index = spFanThrow;  
		}
		  
	}
  
  //if (keyLightPunch){
	//  sprite_index = spLightPunch;
	//  var hitbox = new objHitbox();
	//  with (hitbox){
	//	  sprite_index = spLightPunchHitbox;
	//  }
	//  instance_create_layer(x,y, "Hitboxes", hitbox); 
  //}
  
  
  
  
}
if(keyboard_check_pressed(vk_right)){
	  if(ableToDash){
		  //for (i = 0; i < dashSpeed; i++){
			  
			//  move *= dashDistance;
		  //}
	    hsp += dashDistance;
	  }
	  else{
	    ableToDash = true
	    alarm[0] = 10
	  }
	}
}

//


// Inherit the parent event
event_inherited();

