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

activeMove = undefined;
	
mediumHit = new objMove(6,4,22,8,3,60,true,spLightPunchHitbox2,spFanThrow)
