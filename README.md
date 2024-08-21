# Adventure Story: The Lost Traveler

For this project, I created my own text-based interactive "Adventure Story" using my knowledge of loops and conditionals within Bash scripting. 
The Adventure Story, called "The Lost Traveler", allows the player to navigate through a series of choices while stuck on a stranded island.

## Process:

**Introduction:**

To create the script, I started off with an introduction that would excite the user to play and give them context of the story. I incorporated the `sleep` command numerous times with various values (1 for 1 second, 2 for 2 seconds, etc.) to present the introductory story as well as prompts. I continuously tested the script to get a sense of how quickly each new line would show up and if lines would be clearer to read if line breaks were incorporated. After testing a lot, I was able to create an output that was clear enough for a user to follow and interesting enough to keep them engaged.

![image](https://github.com/user-attachments/assets/d6f9ed08-606c-43a9-91ce-942b690e1eeb)

**Start of Game:**

To start reading options from the user, I used the `read` command and prompted the user with two options: typing "r" or "l" to signify going either right or left on the stranded island. 

Then I started my series of nested if and elif loops that output a new set of options to the player based on the choice they typed in. To keep the game going, I used another read command at the end of each if clause to start a new if statement. 

To simulate games I've played before, when a user picks an option, I included a fun message like "Interesting Choice" and a break to simulate a loading screen/ simulate that the next part of the game was "loading". 

## Optimization:
At first, I had all my read commands come after the echo message of "Pick 'x' or 'y'". But I researched how the user could input their answer on the same line and found the `-p` flag of the read command to include a message while collecting the input.

**Before:**

![image](https://github.com/user-attachments/assets/903ebe89-4f45-40c0-83ff-0740aa1d3ed5)

**After:**

![image](https://github.com/user-attachments/assets/b5c8ac17-c296-46dd-b25f-351f00672584)

After testing a ton, I started to get tired of having to cycle through my intro story to get to the prompts. I researched if there was a way to skip certains part of script using user input and found that I just needed to include another if loop that included the whole intro that only ran if a user wanted it to. So, before the if loop I used the `read -p` command to ask the user to enter y/n whether or not they wanted to skip the intro, and based on the response the if loop would initiate the introduction, or skip to the first prompt. This helped me a lot with saving time when it came to testing out my prompts.  
