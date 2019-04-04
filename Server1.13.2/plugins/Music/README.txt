%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
___   ___  ___   ___  ____    _     ____
|  \_/  |  | |   | | /    |  | |   /   | |       |  | |   | | | |      _   .| |
|       |  | |   | | \___ \  | |   | |
| /\/\  |  | |   | |     | | | |   | |
| | | | |   \_____/   |____/ |_|    \__|
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
(I'm terrible at ASCII art :P)

==Music Plugin==

Version 2.7.12

====================================================================================================
                               Installation / Updating:

-IMPORTANT: Always read the README.txt to make sure nothing has changed.

-Drop the Music.jar Into your plugins folder
-Drop the Music File into your plugins folder
-Start up/reload your server to create some data files.

You should not need to delete any files in order for this plugin to work.

====================================================================================================
                                 Adding your own music:

I made it very simple for people to add their own music. Here is a step-by-step proccess on how to add new sounds to your server:

NOTE: If you do not know how to add custom sounds to a resouncepack, watch this:
https://www.youtube.com/watch?v=8jXLhhiaKWQ

	#I'm going to assume you created your own resourcepack with the sounds you want.

---)THROUGH COMMAND ###(Recommended)###

	-1) Use the /playSound to test if your sound works. Continue only when you can hear your sound

	-2) If you're an OP on your server, use /Loop createSound (Display name) (The name you used for /playsound) (The exact time. E.g. "17" or "19.567")

	-3) Wait for the message "Song creation successful"

	-4) Test it out by using /loop playonce (Display name)

If you have followed the steps correctly, then you should be able to hear your sound.



---)MANUALLY

	-1)Go into the plugins/Music/Music file. Here you should see Lobby.txt, Windmill.txt and Piano.txt

	-2)Create your own .txt file. The name of the file will be the name of the song (To get a song from the Boop.txt, you would
	 need to use /Music play Boop.) The name of the file does NOT need to be the name of the song in the resourcepack.

	-3)Once you have created the text file, you need to open it. You can use any text editor such as Notepad, Notepadd++ ect.

	-4)Now that you have that text file open, you will need to write 'Time:' and then the time between between loops in 
		seconds. [Update] the newest version now accepts decimals and does not rely on Quarter seconds. Instead, put in the exact time the song should play for.
	-5)After putting down the time, put down 'Songname' and then the name of the song. So if you have a sound called 'Song',
		You would put Songname:Song

	#NOTE: If any of this is confusing, look at [TEMPLATE SONG].txt
	
Once you have done these steps, and you have named the text file, you can now test it out. Just 
join the server, Do "/loop listsongs"or "/music listsongs", and look through that list to see if your loop came up.

####Note: Music plugin also has the feature to add the links to the resourcepacks, that way players can download all the sounds at once
	Just go into the plugins/Music folder and look for Resourcepacks.txt and add this line !!!ABOVE THE LINE THAT HAS[&&END&&]!!!:

NameOfResourcepack
http.LINK.zip