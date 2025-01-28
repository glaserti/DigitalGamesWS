->At_the_Beginning 
# when the file beginns with an knot, you need to add a divert at the beginning!
VAR name = "Moomin"
VAR sticks = 10

===At_the_Beginning===
Once upon a time...

there was {~Little Red Riding Hood (LRRH)|Cinderella|Arielle}, walking through the fields and shouting: "{name}, come with me!". You see her running into the woods.
* You follow her into the woods.
    -> Woods
* You walk around the woods[.]
    -> Grandmas_House
+ You're not sure what to do.
    ~sticks = sticks - 5
    -> At_the_Beginning


=Woods
* It's a sweet sunny day and you enjoy your stroll[.]
    -> Grandmas_House
* You encounter a wolf.
# IMAGE: media/wolf.jpg
{sticks >= 10: Luckily, you |Unfortunately, you only } have {sticks} sticks with you.

** {sticks < 10} You run as fast as you can[.]
    -> Grandmas_House
** {sticks >= 10} You chase the wolf away[.]
    -> Grandmas_House
** {sticks == 0} With no sticks, you face the wolf with your bare hands.
    -> Dead

= Dead
The wolf ate you. Sorry!
-> END

=Grandmas_House
<> and meet her in grandma's {~home|house|humble abode}. "Hi, {name}!"
-> END