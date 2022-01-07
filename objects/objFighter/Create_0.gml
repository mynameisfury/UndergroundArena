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
enum FACING{
	left,
	right
};

state = PLAYERSTATE.Neutral;

activeMove = undefined;

motions = ds_map_create();

ds_map_add(motions, "236", "qcf");
ds_map_add(motions, "214", "qcb");
ds_map_add(motions, "623", "dpf");
ds_map_add(motions, "421", "dpb");
ds_map_add(motions, "41236", "hcf");
ds_map_add(motions, "63214", "hcb");
ds_map_add(motions, "632147", "fc");
ds_map_add(motions, "412369", "fc");
inputChain = ds_map_create();
	
mediumHit = new objMove(6,4,22,8,3,60,true,spLightPunchHitbox2,spFanThrow)



ds_map_read()