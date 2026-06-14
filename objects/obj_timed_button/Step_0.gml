// Check if button is active
if place_meeting(x, y, obj_pushblock) || place_meeting(x, y, obj_McOogle)
{
    state = 1;
    timer = timer_max;
}


// Countdown timer
if timer > 0
{
    timer--;
}
else
{
    state = 0;
}


// Sync animation to timer
if (state == 1)
{
    // stops normal animation speed
    image_speed = 0;

    // convert timer into animation frame
    image_index = floor((1 - (timer / timer_max)) * (image_number - 1));
}
else
{
    image_index = 0;
}