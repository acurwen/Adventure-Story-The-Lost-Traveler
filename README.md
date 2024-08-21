# Adventure Story: The Lost Traveler

For this project, I created my own text-based interactive "Adventure Story" using my knowledge of loops and conditionals within Bash scripting. 
The Adventure Story, called "The Lost Traveler", allows the player to navigate through a series of choices while stuck on a stranded island.

## Process:

**Introduction:**
To create the script, I started off with an introduction that would excite the user to play and give them context of the story. I incorporated the `sleep` command numerous times with various values (1 for 1 second, 2 for 2 seconds, etc.) to present the introductory story as well as prompts. I continuously tested the script to get a sense of how quickly each new line would show up and if lines would be clearer to read if line breaks were incorporated. After testing a lot, I was able to create an output that was clear enough for a user to follow and interesting enough to keep them engaged.

**Start of Game**
To start reading options from the user, I used the `read` command and prompted the user with two options: typing "r" or "l" to signify going either right or left on the stranded island. 

Then I started my series of nested if and elif loops that output a new set of options to the player based on the choice they typed in. To keep the game going, I used another read command at the end of each if clause to start a new if statement. 
