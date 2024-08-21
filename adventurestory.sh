#ADVENTURE TIME

echo " "
echo "...Adventure loading..."
echo " "
sleep 1 
read -p "Would you like to skip the beginning story? (y/n): " skip

#Beginning Text

if [ "$skip" != 'n' ]
then {
sleep 2
echo "Welcome seasoned traveler..."
sleep 2
echo "Though you have traveled far and wide..."
sleep 3
echo "Your latest expedition was fraught with chaos..."
echo " "
sleep 3
echo "Upon sailing the high seas on a Tuesday,"
sleep 3
echo "your ship hit a glacier!"
echo " "
sleep 3
echo "The ship tipped violently and catapulted you and your crew in opposite directions..."
echo " "
sleep 4
echo "*cue music*"
echo " "
sleep 1
echo "DUN DUN DUN DUNNNNNN!!!!"
echo " "
sleep 3
echo "*ahem*"
sleep 1
echo "Now..."
sleep 2
echo "you've just woken up on a stranded island with no one around..."
echo " "
sleep 3
echo "How will you survive?"
echo " "
sleep 2
echo "You look to your right and see a long stretch of beach."
echo " "
sleep 3
echo "Then, you look to your left and see the heavy foliage of a rainforest."
echo " "
sleep 3
echo "Which way do you go?"
sleep 2
echo "'r' for right or 'l' for left:"
read input

if [ "$input" == r ]
        then {
        echo " "
        echo "Interesting choice..."
        sleep 2
        echo " "
        echo "           ...          "
        echo " "
        sleep 2
        echo "You start walking along the beach and feel the hot sand beneath your feet."
        sleep 3
        echo "(Somehow you lost your shoes.)"
        echo " "
        sleep 3
        echo "As you keep walking you kick something..."
        echo " "
        sleep 2
        echo "You look down to see a peculiar glass bottle filled with an even more peculiar looking liquid."
        echo " "
        sleep 4
        echo "As you look closer, you see the bottle is labeled 'Rubbing Alcohol :)'."
        echo " "
        sleep 3
        echo "'What's with that smiley face?', you think to yourself."
        echo " "
        sleep 3
        echo "You start to walk away, until you realize your left foot feels funny."
        echo " "
        sleep 3
        echo "You look down and realize you cut your foot when you kicked the bottle."
        echo " "
        sleep 2
        echo "Do you:"
        sleep 1
        echo "'a' Pour some of the liquid onto your cut?"
        sleep 1
        echo "or"
        sleep 2
        echo "'b' Walk away with a slight limp, leaving the bottle in the sand."
        echo " "
        read bop
                if [ "$bop" == a ]
                then {
                echo "You pick up the glass bottle and begin to unscrew the top."
                echo " "
                sleep 1
                echo "But with a better view, you see now that the smiley face is actually a frowning face."
                sleep 2
                echo "That's all for now."

                }
                elif [ "$bop" == b ]
                then {
                        echo "This worked."
                        }
                fi
}

elif [ "$input" == l ]
        then {
        echo " "
        echo "Amusing choice..."
        sleep 2
        echo " "
        echo "           ...          "
        echo " "
        sleep 2
        echo "You carefully start treading towards the rainforest..."
        echo " "
        sleep 2
        echo "You start to hear rainforest sounds of animals and rain that you mysteriously can't see or feel..."
        echo " "
        sleep 3
        echo "Suddenly, a bright orange lizard jumps out onto a rock in front of your path."
        echo " "
        sleep 3
        echo "It's staring at you intently..."
        sleep 2
        echo "...but, somehow with kind eyes."
        echo " "
        sleep 2
        echo "'Is this a trap?' you wonder out loud. But the lizard really does look friendly."
        echo " "
        sleep 3
        echo "What do you do?"
        echo " "
        sleep 2
        echo "'a' to hurry away from the lizard or 'b' to reach out and pet it."
}

else 
{
        echo "Apparently..."
        sleep 2
        echo "This seasoned traveler cannot read."
        sleep 2
        echo "Oh dear, what shall we do..."
        sleep 1
        echo "Adventure done."
}

fi
