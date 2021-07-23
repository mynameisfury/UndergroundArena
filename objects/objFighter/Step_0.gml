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

enum PLAYERSTATE{
	Neutral, 
	Hitstun,
	Blockstun,
	Attacking,
	Blocking,
	InAir,
	Invincible,
	Armored,
	Dashing
}
state = PLAYERSTATE.Neutral;

switch (state){
	case PLAYERSTATE.Neutral: PlayerStateNeutral(); break;
	case PLAYERSTATE.Hitstun: PlayerStateHitstun(); break;
	case PLAYERSTATE.Blockstun: PlayerStateBlockstun(); break;
	case PLAYERSTATE.Attacking: PlayerStateAttacking(); break;
	case PLAYERSTATE.Blocking: PlayerStateBlocking(); break;
	case PLAYERSTATE.InAir: PlayerStateInAir(); break;
	case PLAYERSTATE.Invincible: PlayerStateInvincible(); break;
	case PLAYERSTATE.Armored: PlayerStateArmored(); break;
	case PLAYERSTATE.Dashing: PlayerStateDash(); break;

}

//var move = keyRight - keyLeft;

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
//if (onGround)
//{
//	hsp = move * walksp;
//	if (keyDown){
//	crouched = true;
//	move = 0;
//	}

//	if (upRight){
//		vsp = -jumpSpd;
//		while(!onGround){
//			move = -1;		
//		}
//	}
//	if (upLeft){
//		vsp = -jumpSpd;
//		while(!onGround){
//			move = -1;		
//		}
//	}
//	else if (keyUp){
//	vsp = -jumpSpd;
//	}
//	if(keyboard_check_pressed(vk_left)){
//  if(ableToDash){
//    hsp -= dashDistance;
//  }
//  else{
//    ableToDash = true
//    alarm[0] = 10
//  }
  
//  	if(keyboard_check_pressed(vk_space)){
//		var fanThrow = new objMove(){
//		characterSprite = spBoundary;	
//		}
//		actingMove = fanThrow;
//		inMove = true;
		
		  
//	}
  
//  if (keyboard_check_pressed(vk_space)){
//	  sprite_index = spLightPunch;
//	  var hitbox = new objHitbox();
//	  with (hitbox){
//		  sprite_index = spLightPunchHitbox;
//	  }
//	  instance_create_layer(x,y, "Hitboxes", hitbox); 
//  }
  
  
  
  
//}

//if(inMove){
//	sprite_index = actingMove.characterSprite;
//	for (i=0; i < actingMove.characterSprite.image_number; i++){
//		hasControl = false;
//		}
//	 var hitbox = new objHitbox();
//	  with (hitbox){
//		  sprite_index = spLightPunchHitbox;
//	  }
//	  instance_create_layer(x,y, "Hitboxes", hitbox); 
//}
//if(keyboard_check_pressed(vk_right)){
//	  if(ableToDash){
		 
//	    hsp += dashDistance;
//	  }
//	  else{
//	    ableToDash = true
//	    alarm[0] = 10
//	  }
	
//}

//


// Inherit the parent event
event_inherited();

