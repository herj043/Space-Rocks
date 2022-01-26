/// @description Insert description here
// You can write your code in this editor
score += 10;

instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == spr_Asteroid_Huge){
		repeat(2){ 
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_Asteroid);
			new_asteroid.sprite_index = spr_Asteroid_Med;
		}
	}
	else if(sprite_index == spr_Asteroid_Med){
		repeat(2){ 
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_Asteroid);
			new_asteroid.sprite_index = spr_Asteroid_Small;
		}
	}
	
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_Debris);
	}
}