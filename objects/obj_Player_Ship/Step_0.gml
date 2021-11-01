/// @description Insert description here
// You can write your code in this editor



///Player Ship Left Rotation
//Current State = Complete

if(keyboard_check(vk_left)){
	image_angle = image_angle + 5;
	
	if(keyboard_check(vk_shift)){
	image_angle = image_angle - 2.5;
	}
}


///Player Ship Right Rotation
//Current State = Complete

if(keyboard_check(vk_right)){
	image_angle = image_angle - 5;
	
	if(keyboard_check(vk_shift)){
	image_angle = image_angle + 2.5;
	}

}



///Player Ship Movement
//Current State = Complete

if(keyboard_check(vk_up)){
	motion_add(image_angle, 0.05);
	sprite_index = choose(spr_Player_Ship_On)
}
else{
	sprite_index = choose(spr_Player_Ship_Off)
}


///Player Ship firing Player Bullet (work in progress)
//Current State = Incomplete

if(keyboard_check_pressed(vk_space)){
	var inst = instance_create_layer(x,y, "Instances", obj_Player_Bullet);
	inst.direction = image_angle;
}


///Player Ship Copy (Developer Test Controls)
//Current State = Complete 


if(keyboard_check_pressed(vk_control)){
	var inst = instance_create_layer(x,y, "Instances", obj_Player_Ship);
	inst.direction = image_angle;
}



///Player Ship Dash (work in progress)
// Current State = Buggy movement upon using rotation

if(keyboard_check_pressed(vk_down)){
	if(keyboard_check_pressed(vk_down)){
		motion_add(image_angle, +20);
	}
	motion_add(image_angle, +3);
	

}
if(keyboard_check_released(vk_down)){
	motion_add(image_angle, -20);
}

move_wrap(true,true,sprite_width/2);