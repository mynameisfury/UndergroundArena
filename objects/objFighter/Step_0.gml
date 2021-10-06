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
	case PLAYERSTATE.Neutral: PlayerStateNeutral(); break;
	case PLAYERSTATE.Hitstun: PlayerStateHitstun(); break;
	case PLAYERSTATE.Blockstun: PlayerStateBlockstun(); break;
	case PLAYERSTATE.Blocking: PlayerStateBlocking(); break;
	case PLAYERSTATE.InAir: PlayerStateInAir(); break;
	case PLAYERSTATE.Invincible: PlayerStateInvincible(); break;
	case PLAYERSTATE.Armored: PlayerStateArmored(); break;
	case PLAYERSTATE.Dashing: PlayerStateDash(); break;

}

//var move = keyRight - keyLeft;



//  	if(keyboard_check_pressed(vk_space)){
//		var fanThrow = new objMove(){
//		characterSprite = spBoundary;	
//		}
//		actingMove = fanThrow;
//		inMove = true;
		
		  
//	}
  //moves should inherit their fields from the objMove model and be constructed in the character code and 
  //then injected into the PlayerStateAttacking function eg: move mediumPunch = new objMove {fields}
  if (keyMediumPunch){	  
	  //var test = mediumHit.characterSprite;
	PlayerStateAttacking(mediumHit)
  }
  
  
  
 

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



// Inherit the parent event
event_inherited();

