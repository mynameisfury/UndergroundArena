// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveFunctions(){

}
function objMove(startupFrames,activeFrames,recoveryFrames,hitStun,blockStun,damage,isCancelable,hitboxSprite,characterSprite) constructor
{
	self.startupFrames = startupFrames;
	self.activeFrames = activeFrames;
	self.recoveryFrames = recoveryFrames;
	self.hitStun = hitStun;
	self.blockStun = blockStun;
	self.damage = damage;
	self.isCancelable = isCancelable;
	self.hitboxSprite = hitboxSprite;
	self.characterSprite = characterSprite;	
	
	ThrowMove = function(x,y){
		var hitBox = instance_create_layer(x,y, "Hitboxes", objHitbox);
		hitBox.sprite_index = hitboxSprite;
		//with(objFighter){
		//	objFighter.sprite_index = characterSprite;
		//}
	}
}

//function objHitbox(sprite) constructor
//{
//	self.sprite_index = sprite;
	
//}
