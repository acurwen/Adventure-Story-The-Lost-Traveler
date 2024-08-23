#!/bin/bash

# Adventure Story: The Lost Traveler

# Putting entire game within a function called "gamestart" to enable re-playability
gamestart() {

sleep 1
echo " "
echo "Welcome to the Adventure Story: The Lost Traveler!"
echo " "
sleep 1

# Option to skip Game Introduction
while true # Using while loop to ensure user input is either 'y' or 'n'.
do
    read -p "Would you like to skip the intro? (y/n) " choice

    # If user types in either 'y' or 'n', continue.
    if [[ "$choice" == "y" || "$choice" == "n" ]]
    then   
        break
    else 
        # If not, throw error message and prompt the 'skip intro' question again.
        echo "Input not valid. Please enter either 'y' to skip the intro or 'n' to continue."
    fi
done

# Game Introduction 
if [ "$choice" == n ]
then
    sleep 1
    echo " "
    echo "Adventure Story: The Lost Traveler now loading..."
    echo " "
    sleep 2
    echo "Welcome seasoned traveler..."
    sleep 2
    echo "Though you have traveled far and wide..."
    sleep 2
    echo "Your latest expedition was fraught with chaos..."
    echo " "
    sleep 3
    echo "Upon sailing the high seas on a Tuesday,"
    sleep 2
    echo "your ship hit a glacier!"
    echo " "
    sleep 2
    echo "The ship tipped violently and catapulted you and your crew in opposite directions..."
    echo " "
    sleep 3
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
   
fi

# Game starts here

echo "...Game starting..."
echo " "
sleep 2
echo "You look to your right and see a long stretch of beach."
echo " "
sleep 2
echo "Then, you look to your left and see the heavy foliage of a rainforest."
echo " "
sleep 2
echo "Which way do you go?"
echo " "
sleep 1

while true
do
    read -p "Right (r)? or left (l)?: " choice

        # If user picks 'r'.
        if  [ "$choice" == "r" ]
        then
            ##echo "You picked '$choice'." 
            echo " "
            sleep 1
            echo "You start walking along the beach and feel the hot sand beneath your feet."
            echo " "
            sleep 2
            echo "(Somehow you lost your shoes.)"
            echo " "
            sleep 2
            echo "As you keep walking, you kick something..."
            echo " "
            sleep 2
            echo "You look down to see a peculiar glass bottle filled with an even more peculiar-looking liquid."
            echo " "
            sleep 3
            echo "As you look closer, you see the bottle is labeled 'Rubbing Alcohol 😃'."
            echo " "
            sleep 2
            echo "'What's with that smiley face?', you think to yourself."
            echo " "
            sleep 2
            echo "You start to walk away until you realize your left foot feels funny."
            echo " "
            sleep 2
            echo "You look down and realize you cut your foot when you kicked the bottle."
            echo " "

            sleep 2
            
            while true
            do
                read -p "Do you investigate the bottle? (r) or walk away with a slight limp, leaving the bottle in the sand? (l): " choice

                # If user picks 'r'.
                if  [ "$choice" == "r" ]
                then
                    ##echo "You picked '$choice'."
                    echo " "
                    sleep 2
                    echo "You pick up the glass bottle and begin to unscrew the top."
                    echo " "
                    sleep 2
                    echo "But now with a better view, you see that the smiley face is actually a frowning face."
                    echo " "
                    sleep 2
                    echo "You start wondering what exactly it is you’re holding…"
                    echo " "
                    sleep 2
                    echo "You smell the liquid and it smells like what you remember rubbing alcohol to smell like. Hmm…"
                    echo " "

                    sleep 2
                
                    while true
                    do
                        read -p "Do you pour the liquid onto your cut? (r) or pour it out onto the sand? (l): " choice

                        # If user picks 'r'.
                        if  [ "$choice" == "r" ]
                        then
                            ##echo "You picked '$choice'."
                            echo " "
                            sleep 1
                            echo "You pour the liquid onto your cut and immediately feel relief from the sting of your wound."
                            echo " "
                            sleep 2
                            echo "‘What a find!’, you think to yourself."
                            echo " "
                            sleep 2
                            echo "Suddenly, steam starts to mysteriously balloon outward from your wound."
                            echo " "
                            sleep 2
                            echo "Miraculously, the wound starts to heal rapidly by itself!"
                            echo " "
                            sleep 2
                            echo "The tear in your skin is repairing itself almost like you’re watching a timelapse!"
                            echo " "
                            sleep 2
                            echo "Amazed, you wonder if you have any other injuries and if this elixir has more to it than what meets the eye."
                            echo " "
                            sleep 3
                            
                            while true
                            do
                                read -p "Do you decide to drink a sip? (r) or put it in your pocket and move on? (l): " choice

                                # If user picks 'r'.
                                if  [ "$choice" == "r" ]
                                then
                                    #echo "You picked '$choice'."
                                    echo " "
                                    sleep 2
                                    echo "With trembling hands, you draw the bottle close to your lip and take a sip."
                                    echo " "
                                    sleep 2
                                    echo "You pause and take a breath, seeing if anything feels different."
                                    echo " "
                                    sleep 2
                                    echo "Nothing seems out of the ordinary, so you take a sigh and and start to keep walking."
                                    echo " "
                                    sleep 2
                                    echo "Then, to your surprise..."
                                    echo " "
                                    sleep 1
                                    echo "WOOOOOOOOSH!"
                                    echo " "
                                    sleep 3
                                    echo "With your first step your body is catapulted into the air!"
                                    echo " "
                                    sleep 3
                                    echo "After flailing in the air, you steady yourself while still suspended in the sky."
                                    echo " "
                                    sleep 3
                                    echo "You look down and see fire shooting out from both feet!"
                                    echo " "
                                    sleep 2
                                    echo "What!!!"
                                    echo " "
                                    sleep 2
                                    echo "The strange elixir gave you built-in rocket feet!"
                                    echo " "
                                    sleep 2
                                    echo "Now you can fly home or anywhere in the world."
                                    echo " "
                                    sleep 2
                                    echo "Now that’s an adventure!"
                                    echo " "
                                    sleep 2
                                    echo "The End!"

                                    sleep 1
                                    return
                                
                                # If user picks 'l'.
                                elif [ "$choice" == "l" ]
                                then
                                    #echo "You picked '$choice'."
                                    echo " "
                                    sleep 1
                                    echo "You walk along amazed at your fast healing."
                                    echo " "
                                    sleep 2
                                    echo "As you continue to walk, you see a sign coming up in the distance."
                                    echo " "
                                    sleep 2
                                    echo "You get closer and peer at the sign."
                                    echo " "
                                    sleep 2
                                    echo "It reads ‘Put the bottle down or ELSE’."
                                    echo " "
                                    sleep 2
                                    echo "Then you notice that there’s a bottle shaped hole right next to the sign. Hmm…" 

                                    sleep 2
                                   
                                    while true
                                    do
                                        read -p "Do you put the bottle down in the hole? (r) or keep the bottle in your pocket? (l): " choice

                                        # If user picks 'r'.
                                        if  [ "$choice" == "r" ]
                                        then
                                            #echo "You picked '$choice'."
                                            echo " "
                                            sleep 2
                                            echo "You put the bottle down in the hole by the sign and step back."
                                            echo " "
                                            sleep 2
                                            echo "You noticed the hole starts to glow with a green hue."
                                            echo " "
                                            sleep 2
                                            echo "In what feels like two seconds, you hear the blaring sound of helicopter blades whipping through the air." 
                                            echo " "
                                            sleep 3
                                            echo "You look up and it’s a rescue helicopter."
                                            echo " "
                                            sleep 2
                                            echo "Wow, what timing!"
                                            echo " "
                                            sleep 1
                                            echo "‘I guess that bottle had some ties to the government’ you think to yourself."
                                            echo " "
                                            sleep 2
                                            echo "You’re saved!"
                                            echo " "
                                            sleep 2
                                            echo "The End!"

                                            sleep 1
                                            return
                                        
                                        # If user picks 'l'.
                                        elif [ "$choice" == "l" ]
                                        then
                                            #echo "You picked '$choice'."
                                            echo " "
                                            sleep 2
                                            echo "You keep the bottle in your pocket and start walking."
                                            echo " "
                                            sleep 2
                                            echo "However, you realize you didn’t tighten the bottle cap and the liquid has spilled onto your fingers that are resting in your pocket."
                                            echo " "
                                            sleep 3
                                            echo "Trying to shake them clean, you wave your fingers violently about and a drops of the liquid fall into the bottle shaped hole by the sign."
                                            echo " "
                                            sleep 3
                                            echo "The hole starts to glow an ominous red…"
                                            echo " "
                                            sleep 2
                                            echo "Suddenly, a chopper comes flying out of nowhere into your field of view."
                                            echo " "
                                            sleep 2
                                            echo "From the chopper window, you see a red beam that has lined up perfectly to the middle of your forehead."
                                            echo " "
                                            sleep 2
                                            echo "It seems that you got too close to some government secret…"
                                            echo " "
                                            sleep 2
                                            echo "The End!"

                                            sleep 1
                                            return

                                        # If user picks neither
                                        else 
                                            echo "Input not valid. Please enter either 'r' or 'l'."   
                                        fi
                                    done 

                                # If user picks neither
                                else 
                                    echo "Input not valid. Please enter either 'r' or 'l'."   
                                fi
                            done 
                        
                        # If user picks 'l'.
                        elif [ "$choice" == "l" ]
                        then
                            #echo "You picked '$choice'."
                            echo " "
                            sleep 2
                            echo "Your pour the liquid onto the sand to see if anything will happen."
                            echo " "
                            sleep 2
                            echo "Peculiarly, as it hits the sand, the liquid forms a straight line with an arrow at one end."
                            echo " "
                            sleep 3
                            echo "The arrow points you to the rainforest you decided to bypass earlier."
                            echo " "
                            sleep 2

                            while true
                            do
                                read -p "Do you follow the arrow into the rainforest? (r) or walk in the opposite direction of the arrow? (l): " choice

                                # If user picks 'r'.
                                if  [ "$choice" == "r" ]
                                then
                                    #echo "You picked '$choice'."
                                    echo " "
                                    sleep 2
                                    echo "You start to walk in the direction of the rainforest."
                                    echo " "
                                    sleep 2
                                    echo "Then BAM!"
                                    echo " "
                                    sleep 2
                                    echo "Before you can react, you’ve fallen deep into quick sand that just looked like regular beach sand!"
                                    echo " "
                                    sleep 3
                                    echo "It sucks you in deeper and deeper until the sky becomes a spec of blue."
                                    echo " "
                                    sleep 2
                                    echo "The End!"
                                    echo " "

                                    sleep 2
                                    return

                                # If user picks 'l'.
                                elif [ "$choice" == "l" ]
                                then
                                    #echo "You picked '$choice'."
                                    echo " "
                                    sleep 2
                                    echo "You decide to walk in the opposite direction of the arrow."
                                    echo " "
                                    sleep 2
                                    echo "At this point, your cut has started to bleed out onto the sand leaving a trail behind you."
                                    echo " "
                                    sleep 2
                                    echo "Exhausted, you wonder what to do now and sit down."
                                    echo " "
                                    sleep 2
                                    echo "A few seconds pass and you hear a growl."
                                    echo " "
                                    sleep 2
                                    echo "A polar bear is stalking you from the shore and has smelled your blood."
                                    echo " "
                                    sleep 2
                                    echo "You sit and think, ‘okay National Geographic just got HD!’"
                                    echo " "
                                    sleep 2
                                    echo "The End!"
                                    sleep 2
                                    echo "Just kidding! The polar bear turns out to be vegetarian and he licks your foot clean."
                                    echo " "
                                    sleep 2
                                    echo "He becomes your companion as you venture the island…"
                                    echo " "
                                    sleep 2
                                    echo "The End! (For real this time.)"

                                    sleep 1
                                    return

                                # If user picks neither
                                else 
                                    echo "Input not valid. Please enter either 'r' or 'l'."   
                                fi
                            done 

                        # If user picks neither
                        else 
                            echo "Input not valid. Please enter either 'r' or 'l'."   
                        fi
                    done 

                # If user picks 'l'.
                elif [ "$choice" == "l" ]
                then
                    #echo "You picked '$choice'."
                    echo " "
                    sleep 2
                    echo "You walk away with a slight limp, leaving the bottle in the sand." 
                    echo " "
                    sleep 3
                    echo "It seems you’ve underestimated the elements and have forgotten that your body is in weak condition."
                    echo " "
                    sleep 3
                    echo "Your wound grows bigger with each step and you start to bleed out more and more."
                    echo " "
                    sleep 2
                    echo "All of a sudden, you’re fading fast…"
                    echo " "
                    sleep 3
                    echo "Somehow you’re not walking anymore, but instead laying on the sand."
                    echo " "
                    sleep 2
                    echo "Through blinking eyes you can see how the bright sky is gradually getting darker…"
                    echo " "
                    sleep 2
                    echo "The sand feels wet and warm around you…it’s comfortable."
                    echo " "
                    sleep 2
                    echo "The End!"

                    sleep 1
                    return

                # If user picks neither
                else 
                    echo "Input not valid. Please enter either 'r' or 'l'."   
                fi
            done 

         # If user picks 'l'.
        elif [ "$choice" == "l" ]
        then
            #echo "You picked '$choice'."
            echo " "
            sleep 1
            echo "You carefully start treading towards the rainforest..."
            echo " "
            sleep 2
            echo "You start to hear rainforest sounds of animals and rain that you mysteriously can't see or feel..."
            echo " "
            sleep 2
            echo "Suddenly, a bright orange lizard jumps out onto a rock in front of your path."
            echo " "
            sleep 2
            echo "It's staring at you intently..."
            echo " "
            sleep 2
            echo "...but, somehow with kind eyes."
            echo " "
            sleep 2
            echo "'Is this a trap?' you wonder out loud. But the lizard really does look friendly."
            echo " "
            sleep 3
            echo "What do you do?"

            sleep 1
            
            while true
            do
                read -p "Do you hurry away from the lizard? (r) or reach out to pet it? (l): " choice

                # If user picks 'r'.
                if  [ "$choice" == "r" ]
                then
                    #echo "You picked '$choice'."
                    echo " "
                    sleep 2
                    echo "You hurry away from the lizard and start running rapidly through the foliage."
                    echo " "
                    sleep 3
                    echo "Suddenly a vine catches your foot and you go flying up towards the canopy of the rainforest, hanging by your left leg."
                    echo " "
                    sleep 3
                    echo "You fell right into a trap!"
                    echo " "
                    sleep 2
                    echo "Hanging by one leg, you are completely helpless."
                    echo " "
                    sleep 2
                    echo "Suddenly, you hear rustling in the bushes below."
                    echo " "
                    sleep 2
                    echo "“We caught one!!” you hear."
                    echo " "
                    sleep 2
                    echo "Through the blood rushing to your head, you start to slowly lose consciousness..."
                    echo " "
                    sleep 3
                    echo "But you can faintly see multiple shadow figures darting around below you."
                    echo " "
                    sleep 2
                    echo "Before you pass out, you smell the faint smell of a smoke from a fire below from where you hang."
                    echo " "
                    sleep 3
                    echo "“I hope I’m delish…”, you think to yourself."
                    echo " "
                    sleep 2
                    echo "The End!"

                    sleep 1
                    return
                    

                # If user picks 'l'.
                elif [ "$choice" == "l" ]
                then
                    #echo "You picked '$choice'."
                    echo " "
                    sleep 2
                    echo "You cautiously reach your arm out to pet the lizard."
                    echo " "
                    sleep 2
                    echo "Suddenly, its eyes start to glow red."
                    echo " "
                    sleep 2
                    echo "Then BAM!"
                    echo " "
                    sleep 1
                    echo "It flicks its tongue out long enough to smack you right in the middle of your forehead."
                    echo " "
                    sleep 3
                    echo "You stumble backward dazed and confused."
                    echo " "
                    sleep 2
                    echo "And you faint…"
                    echo " "
                    sleep 3
                    echo "You wake up a few moments later."
                    echo " "
                    sleep 2
                    echo "You look around to find out you are surrounded by hundreds of lizards."
                    echo " "
                    sleep 3
                    echo "They are all perched and staring at you intently."
                    echo " "
                    sleep 2

                
                    while true
                    do
                        read -p "Do you try and speak? (r) or play dead? (l): " choice

                        # If user picks 'r'.
                        if  [ "$choice" == "r" ]
                        then
                            #echo "You picked '$choice'."
                            echo " "
                            sleep 2
                            echo "Hesitantly, you speak, “Hello?”"
                            echo " "
                            sleep 2
                            echo "No response…"
                            echo " "
                            sleep 2
                            echo "“Hello?”, you ask again wearily."
                            echo " "
                            sleep 2
                            echo "Suddenly, you hear a rustle in the surrounding foliage."
                            echo " "
                            sleep 2
                            echo "Through the bushes comes a huge human-sized lizard!"
                            echo " "
                            sleep 2
                            echo "‘Hello weary traveler’, it says."
                            echo " "
                            sleep 2
                            echo "‘Welcome to Lizard Island.’"
                            echo " "
                            sleep 2
                            echo "‘My name is Larry.’"
                            echo " "
                            sleep 2
                            echo "‘You have been marked as the chosen one.’"
                            echo " "
                            sleep 2
                            echo "‘It is time you take your place at the throne.’"
                            echo " "
                            sleep 2
                            echo "As the human-sized lizard named Larry says ‘throne’, a king-sized throne chair fashioned from leaves and twigs moves into your view."

                            sleep 4
                            

                            while true
                            do
                                read -p "Do you scream and run away? (r) or move to the throne? (l): " choice

                                # If user picks 'r'.
                                if  [ "$choice" == "r" ]
                                then
                                    #echo "You picked '$choice'."
                                    echo " "
                                    sleep 2
                                    echo "With the grace of a gazelle, you jump up and dart out away from the area of lizards."
                                    echo " "
                                    sleep 3
                                    echo "‘HELP!! LIZARDS!!’, you scream desperately."
                                    echo " "
                                    sleep 2
                                    echo "Running at the speed of light, you hit a pebble and go toppling over, landing head first in the soil."
                                    echo " "
                                    sleep 2
                                    echo "..."
                                    echo " "
                                    sleep 2
                                    echo "You wake up in a ambulance flyer jet delirious and confused."
                                    echo " "
                                    sleep 2
                                    echo "“Hey, you’re awake! Must’ve been some dream. You were moving a ton!”, a doctor remarks while aiding you."
                                    echo " "
                                    sleep 4
                                    echo "‘You have no idea’, you think to yourself." 
                                    echo " "
                                    sleep 2
                                    echo "Was it all a dream?"
                                    echo " "
                                    sleep 2
                                    echo "The End!"

                                    sleep 1
                                    return

                                # If user picks 'l'.
                                elif [ "$choice" == "l" ]
                                then
                                    #echo "You picked '$choice'."
                                    echo " "
                                    sleep 2
                                    echo "You steadily get up and start to walk nervously towards the throne."
                                    echo " "
                                    sleep 2
                                    echo "You look around and notice all the little lizards looking intently at you."
                                    echo " "
                                    sleep 2
                                    echo "But again… there’s a kindness in their eyes."
                                    echo " "
                                    sleep 2
                                    echo "You take in their kind gaze as a good sign and keep walking to the throne, now confidently."
                                    echo " "
                                    sleep 3
                                    echo "You reach the throne and sit down."
                                    echo " "
                                    sleep 2
                                    echo "As soon as you sit, the throne glows a luminous green…"
                                    echo " "
                                    sleep 2
                                    echo "…a green even brighter than the leaves in the forest."
                                    echo " "
                                    sleep 2
                                    echo "‘YOU ARE NOW LIZARD KING!!’, roars Larry."
                                    echo " "
                                    sleep 2
                                    echo "All the tiny lizards are cheering in their amphibian dialect."
                                    echo " "
                                    sleep 2
                                    echo "‘Wow, I’m the lizard king!’ you declare with a smile."
                                    echo " "
                                    sleep 2
                                    echo "‘Things aren’t too bad on this island’, you think to yourself."
                                    echo " "
                                    sleep 2
                                    echo "The End!"

                                    sleep 2
                                    return

                                # If user picks neither
                                else 
                                    echo "Input not valid. Please enter either 'r' or 'l'."   
                                fi
                            done 

                        # If user picks 'l'.
                        elif [ "$choice" == "l" ]
                        then
                            #echo "You picked '$choice'."
                            echo " "
                            sleep 2
                            echo "You squeeze your eyes shut and lie still."
                            echo " "
                            sleep 2
                            echo "One of the lizards draws closer and you can feel its presence."
                            echo " "
                            sleep 2
                            echo "It starts to nudge you, but you won’t dare move."
                            echo " "
                            sleep 2
                            echo "“It’s dead! It’s not the chosen one!”, you hear it say."
                            echo " "
                            sleep 3
                            echo "“Aw man!”, say the other lizards in a chorus of disappointment."
                            echo " "
                            sleep 3
                            echo "You’re surprised you can understand their amphibian speech."
                            echo " "
                            sleep 3
                            echo "“Alright, well let’s get rid of it”, you hear another lizard say."
                            echo " "
                            sleep 3
                            echo "Before you can move, a giant lizard opens its jaws, flashes its long tongue and swallows you whole."
                            echo " "
                            sleep 3
                            echo "You wake up in a cold sweat in your bunk bed in the ship."
                            echo " "
                            sleep 2
                            echo "It was all a dream! Wow, how vivid!"
                            echo " "
                            sleep 2
                            echo "‘I should really stop reading these mystical texts before bed!’ you think to yourself."
                            echo " "
                            sleep 3
                            echo "The End!"

                            sleep 2
                            return

                        # If user picks neither
                        else 
                            echo "Input not valid. Please enter either 'r' or 'l'."   
                        fi
                    done 

                # If user picks neither
                else 
                    echo "Input not valid. Please enter either 'r' or 'l'."   
                fi
            done 

        # If user picks neither
        else 
            echo "Input not valid. Please enter either 'r' or 'l'."
        fi
done

}

# While loop to keep game replayable
while true
do 
# Function that "contains" the game
gamestart

    while true
    do
        read -p "Would you like to play again? (y/n) " response

        if [[ "$response" == "y" || "$response" == "n" ]]
        then 
            if [ "$response" == "n" ]
            then
                echo "Thank you for playing."
                sleep 1 
                echo "Exiting game."
                echo " "
                sleep 1
                exit 0
            fi
            break
        else
            echo "Input not valid. Please enter either 'y' or 'n'."
        fi
    done
done
