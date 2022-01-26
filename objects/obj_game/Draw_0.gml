switch(room){
	case rm_game:
		{	
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
		break;
		}
	case rm_start:
		{
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS",
			3, 2, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 200,
			"Score 1,000 points to win!\n\nUP: move\nLEFT/RIGHT: change direction\nSPACE: shoot\n\n>> PRESS ENTER TO START <<"
		);
		draw_set_halign(fa_left);
		break;
		}
	}