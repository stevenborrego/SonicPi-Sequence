# Sonic Pi Sequence
Sonic Pi is a programming environment based on Ruby that can be used to generate music. For our project, we chose to work with Sonic Pi to recreate a composition. Neither of us had used Sonic Pi previously, or had any experience programming with sound, so we were unfamiliar with the technologies involved.


The main idea for our project was to use Sonic Pi to write a program that would send midi information to external devices to generate sound. We chose to recreate a song from the NES game Castlevania III: Dracula’s Curse. Because the NES sound hardware is limited, we thought it would be interesting to recreate the song on high end synthesizers. We also designed the program to be able to generate sound using the built-in Sonic Pi synthesizers. The song we chose is in the style of a Bach fugue, which means is it somewhat harmonically sophisticated. We tried to transcribe as much of the piece as would could by ear. 


In the project, we created methods to play notes and chords. The methods can take arguments to dictate which note to play, for how long, and to which midi channel it should be sent. These methods were then called in other methods that would create each phrase of the piece of music, forming the structure of the song. In order to send different midi information at the same time, seperate threads had to be created.


We found that in some cases, sending midi notes in quick succession resulted in some of the notes being dropped. We were able make small variations to melody to resolve this issue.


We found that working with Sonic Pi in this way led to a lot of tedious and repetitious code. I think that if we had been more familiar with Sonic Pi, we may have chosen to do a different project for this reason. A lesson we felt that we learned is that it is a good idea to have some experience with the technologies you are going to be working with, so you have a clear idea of what work is going to be like, instead of commiting to something only to find that the work is not what you had expected.

## How To Use

Load each file into its own buffer in the Sonic Pi environment. In the header buffer, you can use the flags to enable different phrases of the piece. Set the output flag to 1 to play using the built in Sonic Pi sounds, or 2 to send to external midi devices using channel midi channels 1 and 2 for melody and bass, respectively.


Run preludeHeader.rb, then prelude.rb. Next, run preludeMain.rb to play the composition.

## Videos of Execution

[Running in Sonic Pi Environment]()

[Running on External MIDI Modules](https://youtu.be/VzPHFAwp0jk)
