function scr_game_text(_text_id) {
switch(_text_id)
{
case "Eeglee":
scr_text("Good morning Eeglee how we doing today", "McOogle")
scr_text("Moring bud, got something for me?", "Eeglee", -1)
scr_text("um....... no?", "McOogle")
scr_text("starts with a R know what I'm talking about", "Eeglee", -1)
scr_text("nah", "McOogle")
scr_text("the rent McOogle, it's been 3 weeks", "Eeglee", -1)
scr_text("oooooooh that, nah ain't got it forgot about it", "McOogle")
scr_text("why am I not surprised, fine but you're not living here for free, go be useful and clear out the Peebs in the basement it got infested again", "Eeglee", -1)
scr_text("fair enough, anything you say buddy", "McOogle")
break;

case "Eeglee_2":
scr_text("Hey Eeglee, basement's clear.", "McOogle")
scr_text("Finally, about time you did something useful, you look a bit hurt, here some breakfast", "Eeglee", -1)
if (!global.eeglee_reward_given)
{
    var burger = instance_create_layer(
        obj_McOogle.x,
        obj_McOogle.y,
        "Instances",
        obj_item_overworld
    );

    burger.item = global.item_list.burger;

    global.eeglee_reward_given = true;
}
scr_text("Thanks man I needed that, alright I'm going to The Master's Tower to see what's the plan for today", "McOogle")
scr_text("Alright see you man", "Eeglee", -1)
break;

case "The Master" :
scr_text("Mmmmmmmmm McOogle, how are you my student", "The Master")
scr_text("Good Master Eeglee made me some breakfest so I'm ready for today's assignment", "McOogle", -1)
scr_text("Gooooooood, today's is simple bring me what is owned from The Fat Man, he's probably gorging himself in his tent", "The Master")
scr_text("ah man just a pick up, I was hoping to do something exciting today", "McOogle", -1)
scr_text("trust me my strange pupil, he owes me and afterwords we shall do more of your training", "The Master")
scr_text("alrighty, I'll be back with whatever he owed you Master", "McOogle", -1)
break;

case "The Master_2" :
scr_text("*sssssnnnniiiiifffff* ahhhhh you have it", "The Master")
scr_text("yessir right here wasn't even that hard, what else you got for me", "McOogle", -1)
scr_text("ah yes of course your training, McOogle you are ready, it is time to make your own staff", "The Master")
scr_text("REALLY oh boy I can't wait", "McOogle", -1)
scr_text("First you must find a powerful stone that can channel energy", "The Master")
scr_text("alrighty", "McOogle", -1)
scr_text("Then you must find a staff that calls to you, that must feel like an extension of your body", "The Master")
scr_text("ooo nice nice nice", "McOogle", -1)
scr_text("Finally you must combine the two with a powerful adhesive to keep the bond forever", "The Master")
scr_text("ALRIGHTY I'm ready where do I start", "McOogle", -1)
scr_text("Don't know, you must go out on your own, have your big day out", "The Master")
scr_text("Could have done with a hint but alright, I will return when I have the ALL components", "McOogle", -1)
break;

case "The Master_3" : 
scr_text("What are you doing go away", "The Master")
break;

case "The Master_4" : 
scr_text("Master I'm baaaaccckkk and I got the stuuuufffff", "McOogle")
scr_text("Mmmmmm very good, my apprentice now present them to me", "The Master", -1)
scr_text("Yerp here you are", "McOogle")
scr_text("alrighty let me just.........", "The Master", -1)
scr_text("ALBROT, ABRACADABREA, EL, make this staff TIGHT, and made really WELL", "The Master ",-1)
scr_text("alright here you go", "The Master ",-1)
break;

case "The Master_5" :
scr_text("Damn your epic now", "The Master")
break;

case "Thin Man" :
scr_text("Hello", "Thin Man")
scr_text("Uhhhh hi, I'm McOogle are you the Fat Man?", "McOogle", -1)
scr_text("No", "Thin Man")
scr_text("Oh well I'm looking for him appearantly he has something that belongs to my Master, know where it is?", "McOogle", -1)
scr_text("Probably down there", "Thin Man")
scr_text("Oh ok I guess I'll go down there", "McOogle", -1)
scr_text("be careful down there those boxes don't just move on their own you gotta use *space* on them", "Thin Man")
scr_text("cool I guess", "McOogle", -1)
break;

//forest
case "limp_stick" :
scr_text("Hey a stick", "McOogle")
scr_text("mmmmm, nah this stick ain't got life in it, my staffs gotta be cooler than this", "McOogle")
scr_text("I'm gonna leave this one here, my stick is calling me elsewhere", "McOogle")
break;

case "spike_stick" :
scr_text("Oh another one,", "McOogle")
scr_text("mmmmmmmmmmmmm, nah it's got to much going on, doesn't give me the whole wizard vibe, guess I'll move on", "McOogle")
scr_text("COME ON there HAS to be one that I vibe with it's gotta be THE ONE", "McOogle")
break;

case "THE_STICK" :
scr_text("Alrighty then another one,", "McOogle")
scr_text("mmmmmmmmmmmmmmmmmmmmmm, yerp this is THE STICK, god just look at.", "McOogle")
scr_text("the color's a nice solid brown, the length short enough to not be a walking stick, but just long enough to not be mocked as a wand.", "McOogle")
scr_text("Hmmm the curve, very prominent but it doesn't let it define it, and... it looks like a spot to put something into it", "McOogle")
var stick = instance_create_layer(
        obj_McOogle.x,
        obj_McOogle.y +5,
        "Instances",
        obj_item_overworld
    );

    stick.item = global.item_list.the_stick;

scr_text("alright this is the one, I think I'm done here", "McOogle")
break;

case "staff" : 
scr_text("Hmmmmmmm my staafff YEY", "McOogle")
break

case "lil_guy" : 
scr_text("hey how you doin", "lil_guy")
scr_text("Uh good, yourself?", "McOogle")
scr_text("not so good, fo some reason those DAMNED red buttns dont wok, I push the blocks on em for sme reasmn n nuttin happens", "lil_guy")
scr_text("Ever try stepping on them", "McOogle")
scr_text("uhhhh, no I cant step that high", "lil_guy")
scr_text("alright I got this", "McOogle")
scr_text("sr you doo, hay lissen if you evr mess up I gots u, just leave and I'll make it right", "lil_guy")
break
}
}