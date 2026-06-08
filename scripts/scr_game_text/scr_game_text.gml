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
scr_text("Thanks man I needed that, alright I'm going to The Master to see what's the plan for today", "McOogle")
scr_text("Alright see you man", "Eeglee", -1)
break;

case "The Master" :
scr_text("Mmmmmmmmm McOogle, how are you my student", "The Master")
scr_text("Good Master Eeglee made me some breakfest so I'm ready for today's assignment", "McOogle", -1)
scr_text("Gooooooood, today's is simple bring me what is owned from The Fat Man, he's probably gorging himself in his tent", "The Master")
scr_text("ah man just a pick up, I was hoping to do something exciting today", "McOogle", -1)
scr_text("trust me my strange pupil, he owes me and afterwords we shall do more of your training", "The Master")
scr_text("alrighty, I'll be back with whatever he owed you Master", "McOogle", -1)

case "Thin Man" :
scr_text("hello", "Thin Man")

}
}