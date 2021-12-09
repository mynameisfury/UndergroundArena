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


switch (state){
	case PLAYERSTATE.Neutral: 
		PlayerStateNeutral(); 
		if(hsp !=0) image_xscale = sign(hsp);
		if(hsp == 0){
			sprite_index = spIdle1;	
		}
		if(hsp != 0){
		//	sprite_index = spLightPunch;				
		}
		if(!onGround){
				
		}
		if (crouched){
		sprite_index = spCrouch;
		hsp = 0;
	}	
	break;
	
	case PLAYERSTATE.Attacking:		
	
		PlayerStateAttacking(activeMove);
		sprite_index = activeMove.characterSprite;
		if(activeMove != undefined){
			if(totalFrames <= 0){
				state = PLAYERSTATE.Neutral;
				activeMove = undefined;
				}

		}
		totalFrames--;
		//remainingFrames--;
		
		////state = PLAYERSTATE.Neutral;
		//if (remainingFrames == 0){
			
		//state = PLAYERSTATE.Neutral;	
		//}
		
			
		//alarm[1] = remainingFrames;
			
			
	break;
	
	
	case PLAYERSTATE.Hitstun: PlayerStateHitstun(); break;
	case PLAYERSTATE.Blockstun: PlayerStateBlockstun(); break;
	case PLAYERSTATE.Blocking: PlayerStateBlocking(); break;
	case PLAYERSTATE.InAir: PlayerStateInAir(); break;
	case PLAYERSTATE.Invincible: PlayerStateInvincible(); break;
	case PLAYERSTATE.Armored: PlayerStateArmored(); break;
	//case PLAYERSTATE.Dashing: PlayerStateDash(); break;
}



  //moves should inherit their fields from the objMove model and be constructed in the character code and 
  //then injected into the PlayerStateAttacking function eg: move mediumPunch = new objMove {fields}
  if (keyMediumPunch){
	//instance_create_layer(x,y, "Hitboxes", objHitbox);
	activeMove = mediumHit;
	mediumHit.currentFrame = 0;
	totalFrames = activeMove.startupFrames + activeMove.activeFrames + activeMove.recoveryFrames;
	state = PLAYERSTATE.Attacking;
  }
  
if(keyboard_check(vk_lshift)){
	instance_create_layer(x,y, "Hitboxes", objHitbox);	
	
}

// Inherit the parent event
event_inherited();

