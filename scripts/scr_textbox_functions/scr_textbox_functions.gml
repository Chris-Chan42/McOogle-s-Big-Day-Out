function scr_set_defaults_for_text(){
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	
	for (var c = 0; c < 500; c++)
		{
		col_1[c, page_number] = c_white;
		col_2[c, page_number] = c_white;
		col_3[c, page_number] = c_white;
		col_4[c, page_number] = c_white;
		
		float_text[c, page_number] = 0;
		float_dir[c, page_number] = c*20;
		}
	
	
	txtb_spr[page_number] = spr_Textbox_McOogle;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	char_spr[page_number] = spr_speakblock
	
	//snd[page_number] = snd_voice;
}

//text VFX
//scr_text_color(4, 11, c_blue, c_blue, c_blue, c_blue)
function scr_text_color(_start, _end, _col1, _col2, _col3, _col4){

for (var c = _start; c <= _end; c++)
	{
	col_1[c, page_number-1] = _col1;
	col_2[c, page_number-1] = _col2;
	col_3[c, page_number-1] = _col3;
	col_4[c, page_number-1] = _col4;
	}

}

//scr_text_float(0, 11)
function scr_text_float(_start, _end){
	
	for (var c = _start; c <= _end; c++)
		{
		float_text[c, page_number-1] = true;
		}
	
}



function scr_text(_text) {
	scr_set_defaults_for_text()
	
text[page_number] = _text;

//get character info
if argument_count > 1 {
switch(argument[1])
	{
	 
	 //McOogle
case "McOogle":
	speaker_sprite[page_number] = spr_McOogle_Icon
	txtb_spr[page_number] = spr_Textbox_McOogle;
	
	//snd[page_number] = snd_voice;
	break;
case "McOogle-Happy":
	speaker_sprite[page_number] = spr_McOogle_happy
	txtb_spr[page_number] = spr_Textbox_McOogle
	break;
	
	//Eeglee
case "Eeglee":
	speaker_sprite[page_number] = spr_Eeglee_Icon
	txtb_spr[page_number] = spr_Textbox_Eeglee
	char_spr[page_number] = spr_Eeglee_Icon
	break;
	
	//The Master
case "The Master" :
	speaker_sprite[page_number] = spr_The_Master_Icon
	txtb_spr[page_number] = spr_Textbox_Master
	char_spr[page_number] = spr_The_Master_Icon
	break;
	
	//Thin Man
case "Thin Man" :
	txtb_spr[page_number] = spr_Textbox_Thin_Man
	


}
}

//speaking side
if argument_count > 2 {
	speaker_side[page_number] = argument[2]
}

page_number++;
}

function scr_option(_option, _link_id) {
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

function create_textbox(_text_id) 
{
with (instance_create_depth(0, 0, -9999, obj_Textbox))
	{
	scr_game_text(_text_id);
	}
}