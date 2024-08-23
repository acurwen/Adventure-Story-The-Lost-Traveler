# Adventure Story: The Lost Traveler

For this project, I created my own text-based interactive "Adventure Story" using my knowledge of loops and conditionals within Bash scripting. 
My adventure story, called "The Lost Traveler", allows the player to navigate through a series of choices while stuck on a stranded island.

When starting this project, I initially dove into writing a story while creating my if statements. However, as the script grew, it became increasingly difficult to keep track of all the options I wrote and the nested options for those options and so on and so forth. 

I decided to start over with a "skeleton" version of my original adventure script to focus on structure and usability than the actual content of the story. That way I wasn't inundated by several lines of story while trying to edit. Then, when I confirmed through testing that my skeletal structure worked as intended, I added back in the lines of my story and was able to clearly see where new ones were needed.

In addition, I started creating my adventure story script in my instance, but after we were introduced to VS Code, I decided to work there. As the script grew, it was a lot easier to navigate through the lines of code and make edits within VS Code.

## Process:

To read output from the user, I used the `read` command and prompted the user with two options throughout the game: typing "r" or "l" to signify one of two options. 

Then, I created my series of nested if else loops that output a new set of options to the player based on the choices they typed in. So if 'r', then do x and if 'l', then do y.

Through testing the first version of my script, I realized I also needed a way to flag if a user typed in a different input than "r" or "l" (or y/n depending on the section). If the user typed in a different input, I also needed a way to throw an error message and prompt the user with the initial question so that they could type in an accepted input. 

To do this, I wrote a while loop outside of every block of code that included a `read -p` input. Then, after the `read -p` command, I wrote an if statement that had the condition of `"if input == r OR if input == l"` (specifically for my 'skip intro' and 'play again' sections). If the condition was met, there'd be a break from the loop. If not, then my error message would print to the user and the user would be prompted again with the same `read -p` message that lives within the outer while loop. 

![image](https://github.com/user-attachments/assets/afe2f142-10fa-43f6-91af-1a4e581ddb13)

At first, I mirrored this setup for the rest of my actual game prompts, but it got difficult trying to set the "then" outcome for each 'l' or 'r' option since I was grouping both conditions together in one if statement. So I changed to an if, elif, else approach which I liked much better. 

First Draft:

![image](https://github.com/user-attachments/assets/45ef992c-ebd4-4019-8a1a-6aa3a916dfac)

**Gameplay Prompts**

As mentioned for my actual game prompts, I split up my if statement into three conditions: 1 `if` condition, 1 `elif` condition and 1 `else` condition, all in one `if` statement. 

Again, I started with a while loop outside of every block of code that included a `read -p` input. 
Then, after the `read -p` command, I wrote an `if` condition for if the input was equal to 'r'. If it was, then I included a series of echo messages outlining the consequence of picking 'r'. 

Then I wrote an `elif` condition in that same if statement for if the input was equal to 'l'. Again, what followed was a series of echo messages outlining the consequence of picking 'l'. 

Finally, the `else` section covered any scenario where the user input was not 'r' or 'l' (an incorrect input). There, I included an error message stating that the input was invalid and to pick either 'r' or 'l'. Again, because this 3-part if statement is nested within a while loop, after the user received the error message, they would be prompted again with the `read -p` message that's within the while loop (and outside of the if statement).

Once I tested and saw that this structure worked, I copied the code chunk of my while loop and pasted it each time a path in my story led to another set of decisions the user had to make. Having this structure tested and ready to go made building upon the story much less of a headache. 

Example of while loop template:
```
while true
do
    read -p "Do you put the bottle down in the hole? (r) or keep the bottle in your pocket? (l): " choice

     # If user picks 'r'.
     if  [ "$choice" == "r" ]
     then
       echo "You picked '$choice'."
       sleep 2
       echo "The End!"
       return
                                        
      # If user picks 'l'.
      elif [ "$choice" == "l" ]
      then
          echo "You picked '$choice'."
          sleep 2
          echo "The End!"
          return

       # If user picks neither
        else 
             echo "Input not valid. Please enter either 'r' or 'l'."   
     fi
done 

```

**Story Writing**

To create and keep track of my story, I used a text editor (Google Docs) where I colorcoded the "information pairs" of each game "path". So if I had a path where the user could pick either 'r' or 'l', I wrote the text for both options in blue. Then, if the user picked 'r', the text I wrote for the two new paths that become available after picking 'r' would be in green. Then as I added in my story lines into my script, I would bold the text that I had already entered to keep track of where I was. 

Using my while-loop code block template mentioned above, I was able to expand each path easily by pasting in my while loop and then editing the echo lines and read-p messages with my text ready. 

This way of drafting kept me organized as I was admittedly starting to overwhelm myself with the amount of text I had written. And it was a lot easier to build my script this way in comparison to writing my game story out while creating each new while loop nest (how I had initially approached the assignment.)

Google Docs:

![image](https://github.com/user-attachments/assets/de548a79-03b3-448c-9544-63647593ead3)



For testing purposes, I also included an echo message that printed what the user typed in for each prompt (before the story text printed). This helped me verify that I wrote my text in the correct order and the user's response corresponded with the right text. Though, after a while of testing, I realize that the echo messages sort of broke the game immersion, so I commented those lines out. 

As my script grew larger, I also added in psuedo code titles to keep track of sections like the introduction, the official start point of the game, and most importantly, the conditions of each if statement. 

I also realized through testing the skeletal version of my script that I could keep my two variables ('r' or 'l') the same throughout which made editing the script easier. So excluding the prompts for replaying the game and skipping the intro, I kept the user options as either 'r' or 'l' and kept the variable "choice" the same throughout the script -- which was super helpful for expanding the story (and I think also easier for the game player.)


**Introduction:**

To simulate games I've played before, I wrote an introduction that would give the user context of the story and excite them to play. The introduction is a series of `echo` and `sleep` statements that I continuously tested to get a sense of how quickly each line would print and determine where line breaks were needed for clearer reading (or for surprises in the game!). Playing aroung with timing using the `sleep` command, I was able to create an output that was clear enough for a user to follow along and interesting enough to keep them engaged. I used this same approach for all the text prompts within the game as well.  

![image](https://github.com/user-attachments/assets/d6f9ed08-606c-43a9-91ce-942b690e1eeb)


## Optimization:

**read -p**

At first, I had all my `read` commands come after the echo message of for example, "Pick 'r' or 'l'". Then I researched how the user could input their answer on the same line as the prompt and found the `-p` flag of the `read` command that allows you to include a message when reading user input. This seemed more "game-like" to me, so I changed all my read statements to include the `-p` flag. 

**Before:**

![image](https://github.com/user-attachments/assets/903ebe89-4f45-40c0-83ff-0740aa1d3ed5)

**After:**

![image](https://github.com/user-attachments/assets/b5c8ac17-c296-46dd-b25f-351f00672584)

**Skip Intro Option**

After continuous testing, I started to get tired of having to cycle through my intro story to get to the prompts. I researched if there was a way to skip certains part of script using user input and found that I just needed to include another if loop that contained the whole intro and only ran if a user wanted it to/if a condition was met. 

So, I created an if loop that included my intro text (preceded by the while loop + `read -p` command + if statement template mentioned above that asked the user if they wanted to skip the intro). Based on the response, (y/n), the if loop would initiate the intro, or skip to the part of my script where the game officially "starts". Including this if loop helped me save tons of time when testing out my prompts and I realized it would also be convenient for the user if they wanted to play the game again. 

**Replay the game**

Lastly, to ensure the user could play the game again without having to rerun the script, I created a function called "gamestart" and included all the text of the game inside of it. 
Then at the end of my script, I wrote a while loop with the gamestart function and then nested another while loop within it that asks the user if they wanted to play again. If they do, the game function is called in the outer while loop, and if they don't, the loop exits out. Again, that nested while loop follows the template I used throughout the script.

In the game, whenever the player reaches a "The End!", I included a `return` command so that the script moves on to this while loop. At first, I tried "break" to end the game at the last checkpoint of each direction in my if statements, but I'd get an error message saying ' break: only meaningful in a 'for', 'while', or 'until' loop'. Instead,  `return` worked to prompt the user if they wanted to play again because the script moves on to that last while loop instead of exiting out.

![image](https://github.com/user-attachments/assets/e18b2912-64b4-41d1-ae82-dd15b8f42340)

![image](https://github.com/user-attachments/assets/c5e72198-9708-4c5b-a2fb-5761a841fb5f)

**Realism**

Lastly, to simulate games I've played before, when a user picks an option, I included a small pause to simulate a loading screen/ or simulate that the next part of the game was "loading". 

**Learnings**

Similar to how I created a gamestart function to enable replayability, I learned that I could have also created a function to test user input for invalid answers each time I prompted the user. However, I felt more confident in implementing my while loop template instead and found it easier to use and test. 

## Conclusion
This was definitely a fun project to show some creativity. This is also the longest Bash script I've written so far. I think this was a good lesson for me on how to work smarter and faster vs. getting into the weeds too quickly. 
