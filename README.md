# Adventure Story: The Lost Traveler

For this project, I created my own text-based interactive "Adventure Story" using my knowledge of loops and conditionals within Bash scripting. 
The Adventure Story, called "The Lost Traveler", allows the player to navigate through a series of choices while stuck on a stranded island.

When starting this project, I initially dove into writing a story while creating my if statements. However, as the script grew it got harder and harder to keep track of all the options I wrote and the neted options for those options and so on and so forth. 

I decided to start over with a "skeleton" version of my original adventure script to focus on structure and usability than the actual content of the story. That way I wasn't inundated by several lines of story while trying to edit. Then, when I confirmed through testing that my skeletal structure worked as intended, I added back in the lines of my story and was able to clearly see where new ones were needed.

In addition, I started creating my adventure story script in my instance, but after we were introduced to VS Code, I decided to work in VS Code. As the script grew, it was so much easier to navigate through the lines of code and make edits within VS Code.

## Process:

To read output from the user, I used the `read` command and prompted the user with two options throughout the game: typing "r" or "l" to signify one of two options. With my skeletal script, I realized I could keep those same two variables throughout which made editing the script easier. 

Then, I created my series of nested if and elif loops that output a new set of options to the player based on the choices they typed in. To keep the game going, I used another read command at the end of each if clause to start a new if statement. 

Upon testing, I realized I needed a way to flag if a user typed a different input than "r" or "l" (or y/n). For every block of code that required a read input, I wrote a while loop outside of the read input. Then an if statement that said if input = r OR if input = l then break from the if statement. If not, then an error message would show and the user would be prompted with the same read -p command that was in the outer while loop. 



Including an echo message at every step was helpful in testing this out. 

as my script grew larger i added in psedo code titles to keep track of sections like introudction, ooffical game start point, and the "levels" of each if statement. i aslo managed to always keep the user input to 'x' or 'y' and kept the variable choice the same throughout ewhich was helpful for wuicker writing 


once i figured out the nested loop structure for one path ; i tested it out and then copied and pasted it for the second half path that starts with choosing the choice of 'y' or 'l'. since i stick with the same two variable chocies, I was able to make anothr function that checked if the user's input was correct and if it was not correct it would prompt the user to re enter a correct answer. 



Here is the first snapshot of my script's structure:
At first, I have a while loop that prompts the user if they'd like to skip the intro.


![image](https://github.com/user-attachments/assets/26ad4b33-460b-438e-b6a1-0ec55686f4bb)

Then when the game "starts", I have another a while loop that checks if the user inputted one of the two choices. If not, it throws an error message that prompts the user to try again. If they did input the correct answer, then a nested while loop for either answer takes over. Once i checked that this worked well, i aws able to keep going with more nested if loops.

![image](https://github.com/user-attachments/assets/45ef992c-ebd4-4019-8a1a-6aa3a916dfac)





**Introduction:**

To simulate games I've played before, I wrote an introduction that would give the user context of the story and excite them to play. The introduction is a series of `echo` and `sleep` statements that I continuously tested (as well as all the prompts) to get a sense of how quickly each line would print and determine where line breaks were needed for clearer reading (or for surprises in the game!). Playing aroung with timing using the `sleep` command, I was able to create an output that was clear enough for a user to follow along and interesting enough to keep them engaged.

![image](https://github.com/user-attachments/assets/d6f9ed08-606c-43a9-91ce-942b690e1eeb)


## Optimization:

**read -p**

At first, I had all my read commands come after the echo message of "Pick 'x' or 'y'". But I researched how the user could input their answer on the same line and found the `-p` flag of the read command to include a message while collecting the input. This seemed more "game-like" to me, so I changed all read statements to include the `-p` flag. 

**Before:**

![image](https://github.com/user-attachments/assets/903ebe89-4f45-40c0-83ff-0740aa1d3ed5)

**After:**

![image](https://github.com/user-attachments/assets/b5c8ac17-c296-46dd-b25f-351f00672584)

**Skip Intro Option**

After continuous testing, I started to get tired of having to cycle through my intro story to get to the prompts. I researched if there was a way to skip certains part of script using user input and found that I just needed to include another if loop that contained the whole intro and only ran if a user wanted it to. 

So, I created an if loop and used the `read -p` command before the loop to ask the user whether they wanted to skip the intro. Based on the response, (y/n), the if loop would initiate the intro, or skip to the part of my script where the game officially "starts". Including this if loop helped me save time when testing out my prompts and I realized it would also be convenient for the user when they want to play the game again. 

**Replay the game**

Lastly, to ensure the user could play the game again without having to rerun the script, I created a function called "gamestart" and included all the text of the game inside of it. 
Then at the end of my script, I wrote a while loop nested in another while loop that asks the user if they wanted to play again. If they do, the game function is called in the outer while loop, and if they don't, the loop exits out. 

In the game, whenever the player reaches a "The End!", the loop would return and the script would move on to this while loop. At first, I tried "break" to end the game at the last checkpoint of each direction in my if statements, but I'd get an error message saying ' break: only meaningful in a `for', `while', or `until' loop'. So I used return instead to bring back the user to the gamestart() function.


![image](https://github.com/user-attachments/assets/e18b2912-64b4-41d1-ae82-dd15b8f42340)

![image](https://github.com/user-attachments/assets/c5e72198-9708-4c5b-a2fb-5761a841fb5f)

Lastly, to simulate games I've played before, when a user picks an option, I included a small pause to simulate a loading screen/ or simulate that the next part of the game was "loading". 
