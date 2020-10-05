// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_data()
{
		// overwrite current file
		if(file_exists("save.sav"))
		{
			file_delete("save.sav");
		}
		ini_open("save.sav");
	
		// save current top 10 scores
		for(var i = 0; i < 10; i++)
		{
			ini_write_real("Scores", string(i), global.scores[i]);
		}
		
		//write config file
		ini_write_real("Config", "MusicToggle", global.music_toggle);
		ini_write_real("Config", "SoundToggle", global.sound_toggle);
		
		ini_close();
		
}


function load_data()
{
	if(file_exists("save.sav"))
	{
		ini_open("save.sav");
		
		//load scores into global scores array
		for(var i = 0; i < 10; i++)
		{
			global.scores[i] = ini_read_real("Scores", string(i), 0);
		}
		
		//load config values
		global.music_toggle = ini_read_real("Config", "MusicToggle", true);
		global.sound_toggle = ini_read_real("Config", "SoundToggle", true);
		
		ini_close();
	}
	else
	{

	}
}

function update_scores()
{
	var new_list = array_create(10);
	var inserted = false;
	
	for(var i = 0; i < 10; i++)
	{

		if(score > global.scores[i] and !inserted)
		{
			new_list[i] = score;
			inserted = true;
		}
		else
		{
			if(inserted)
			{
				new_list[i] = global.scores[i - 1];
			}
			else
			{
				new_list[i] = global.scores[i];
			}
		}

	}
	
	
	global.scores = new_list;
}