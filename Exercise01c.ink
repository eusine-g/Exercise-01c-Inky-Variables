/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Variable types: integer, float, boolean
 * Variable assignment
 * Printing variables
 * Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
 
 
 Variable Checking!
 
 Equality: "Spot"  == "Spot"
 Not equality: 1 != 2
 Greater: >
 Less: <
 Greater ot equal: >=
 Less or equal: <=
 
 
 
*/

VAR health = 5
VAR name = ""
VAR sword = 0
VAR seen_mother = 0
VAR jill = 0


-> memory

== memory ==
(This whole this is just final fantsasy xvi) You live in the grand Duchy of Rosaria, you are the son of Duke Elwin Rosfield, what is your name?

 * [Clive Rosfield]
    ~ name = "Clive"
    -> rosalith
 * [Joshua Rosfield]
    ~ name = "Joshua"
    ->rosalith
    
== rosalith ==
Before you stands your father, {name} my son, tomorrow will be the rite at Phoenix Gate.
{ name == "Clive": You know your brother Joshua needs all the help he can get performing the rite of Phoenix Gate, he is still quite young and sick. "Of course father, I will get ready at once." You reply.| }
{ name == "Joshua": You must rest up before then, my son, your brother Clive will be there to protect you the whole way. "Thank you father, I trust in my big brother more than anyone!|}

 + [Head to your chambers] -> rosfield_room
 + [Head to see mother] -> annabella_room
 
 == rosfield_room ==
 ~ jill = jill + 1
You make your way to your room. On the way there you see Jill Warrick, the young girl around your age that your parents adopted from up north, along with your dog Torgal, a small gray puppy.
{ name == "Clive": "Good morning {name} are you prepared to support Joshua tomorrow? I wish I could come... "There should be no issues, but Joshua must remain safe, and I will make sure of that. I'll be back." You reply.|}
{ name == "Joshua": "Hi Joshua! Good luck tomorrow!" "Thank you Jill, and you too Torgal." You reply and pet Torgal. You continue to your room.|}
 + [Get ready for tomorrow] -> preparation
 * {seen_mother < 1} [Head to see your mother] -> annabella_room

 == annabella_room ==
 ~ seen_mother = seen_mother + 1
You go find to your mother Annabella.
{ name == "Clive": Maybe Joshua will be there... You walk over to find your mother as well as your younger brother Joshua with your dog Torgal in his arms, he is a small gray puppy. Joshua is getting doted on by mother. Torgal is the first to see you, he jumps out of Joshua's arms and runs up to you, Joshua is surprised by this and turns to greet you, he runs up as well and hugs you. Your mother frowns as she tries to get Joshua to come with her, she gives you a glare.|}
{ name == "Joshua": As you approach your mother she springs up and rushes towards you. She worries about you and what may happen tomorrow, not without badmouthing Clive. You never understood why she didn't like him. Nevertheless you say your goodbyes.|}
+ {jill < 1} [Go to your room] ->rosfield_room
* {jill > 0} [Return to your room and prepare for tomorrow] -> preparation

== preparation ==
{not sword_pickup: You head back to your room to sleep for the night, tomorrow is a big day. You wake up in the morning.} {sword_pickup: With your preparations finished you can finally go meet with your brother and father.} 
+ {sword > 0} [Go meet your brother out front] -> front_yard
* {sword < 1} [Grab your sword] -> sword_pickup

== sword_pickup ==
~ sword = sword +1
You grab the sword given to you by your father and put it in your sheath.
+ [Go back] ->preparation


== front_yard ==
You make your way out to the front yard.
{ name == "Clive": You see Joshua, your father, and Jill and Torgal are even there to send you off. What will happen at Phoenix Gate? You don't know, but one thing is for certain, you will protect Joshua. This is where your journey begins.|}
{ name == "Joshua": You first see Jill and Torgal, who walk with you. You have some trouble getting there as you start coughing and not feeling well. But seeing your big brother Clive revitalizes you. Him and your father are there supporting you. As the dominant of the Phoenix, you must perform the rite of Phoenix gate. You say goodbye to Jill and Torgal and head off. This is where your journey begins.|}
-> END
