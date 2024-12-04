import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:minimalist_music_player/models/song.dart';
import 'dart:async';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
        songName: "Juno",
        artistName: "Sabrina Carpenter",
        albumArtImagePath: "assets/images/juno.jpg",
        audioPath: "audio/juno.mp3",
        lyrics:"""[Intro]
D
    Bm
(Oh-oh)
 
 
[Verse 1]
D
Don't have to tell your hot ass a thing
                   Bm
Oh, yeah, you just get it
      D
Whole package, babe, I like the way you fit
                       Bm
God bless your dad's genetics, mm, uh
 
 
[Pre-Chorus]
G            A              F#m     Bm
 You make me wanna make you fall in love
G            A                    F#m
 Oh, late at night, I'm thinking 'bout you
Bm      G
Ah, ah, ah
          A            F#m      Bm
Wanna try out my fuzzy pink handcuffs?
C
Oh, I hear you knockin', baby
A
 Come on up
 
 
[Chorus]
D                            Bm
I know you want my touch for life
                           G
If you love me right, then who knows?
                        A
I might let you make me Juno
                D
You know I just might
                       Bm
Let you lock me down tonight
                       G
One of me is cute, but two, though?
 
Give it to me, baby
G            A              F#m     Bm       D
 You make me wanna make you fall in love (Oh)
 
 
[Verse 2]
D
 I showed my friends, then we high-fived (Oh-oh)
Bm
  Sorry if you feel objеctified (Oh)
D
 Can't help myself, hormonеs are high
Bm
  Give me more than just some butterflies
 
 
[Pre-Chorus]
G            A              F#m     Bm
 You make me wanna make you fall in love (Ooh-ooh)
G            A                    F#m
 Oh, late at night, I'm thinking 'bout you
Bm      G
Ah, ah, ah
          A               F#m Bm
Wanna try out some freaky positions? (Ooh-ooh)
C A
  Have you ever tried this one?
 
 
[Chorus]
D                            Bm
I know you want my touch for life
                           G
If you love me right, then who knows?
                        A
I might let you make me Juno
                D
You know I just might
                       Bm
Let you lock me down tonight
                       G
One of me is cute, but two, though?
 
Give it to me, baby
G            A              F#m     Bm
 You make me wanna make you fall in love
 
 
[Bridge]
 D                       Bm
Adore me, hold me, and explore me
               G
Mark your territory (Ah-ah)
                A
Tell me I'm the only, only, only, only one
 D                               Bm
Adore me, hold me (Ah-ah), and explore me (Ooh)
               G
I'm so fuckin' horny
                A
Tell me I'm the only, only, only, only one
 
 
[Instrumental]
D Bm G A
D Bm G A
 
 
[Chorus]
    D                            Bm
Oh, I know you want my touch for life
                           G
If you love me right, then who knows?
                        A
I might let you make me Juno
                D
You know I just might (Might)
                       Bm
Let you lock me down tonight
                       G
One of me is cute, but two, though?
 
Give it to me, baby
G            A              F#m     Bm
 You make me wanna make you fall in love""",),
    Song(
        songName: "APT",
        artistName: "ROSÉ & Bruno Mars",
        albumArtImagePath: "assets/images/apt.jpg",
        audioPath: "audio/apt.mp3",
      lyrics: """[Intro]
N.C.
Chaeyeongiga johaneun
N.C.
Raendeom geim
N.C.
Raendeom geim
N.C.
Game start
 
 
[Chorus]
N.C.
Apateu, apateu
N.C.
Apateu, apateu
N.C.
Apateu, apateu
N.C.
Uh, uh huh, uh huh
N.C.
Apateu, apateu
N.C.
Apateu, apateu
N.C.
Apateu, apateu
N.C.
Uh, uh-huh, uh-huh
 
 
[Verse 1]
Bm                                         A
Kissy face, kissy face, sent to your phone but
Bm
  I'm trying to kiss your lips for real (Uh-huh, uh-huh)
Bm
Red hearts, red hearts
                   A
That’s what I’m on yeah
Bm
  Come give me somethin' I can feel, oh-oh, oh
 
 
[Pre-Chorus]
G                        A
Don't you want me like I want you, baby?
Bm                       D
Don't you need me like I need you now?
G                     A
Sleep tomorrow, but tonight, go crazy
Bm                       N.C.
All you gotta do is just meet me at the
 
 
[Chorus]
Bm
Apateu, apateu
           A
Apateu, apateu
Bm
Apateu, apateu
 
Uh, uh-huh, uh-huh
Bm
Apateu, apateu
           A
Apateu, apateu
Bm
Apateu, apateu
 
Uh, uh-huh, uh-huh
 
 
[Verse 2]
         Bm
It’s whatever (Whatever), it’s whatever (Whatever)
                                   A
It's whatever (Whatever) you like (Woo)
Bm
Turn this apateu into a club (Uh-huh, uh-huh)
            Bm                                           A
I’m talkin' drink, dance, smoke, freak, party all night (Come on)
Bm
  Geonbae, geonbae, girl, what’s up?
 
Oh-oh, oh
 
 
[Pre-Chorus]
G                        A
Don't you want me like I want you, baby?
Bm                       D
Don't you need me like I need you now?
G                     A
Sleep tomorrow, but tonight, go crazy
Bm                       N.C.
All you gotta do is just meet me at the
 
 
[Chorus]
G
Apateu, apateu
A
Apateu, apateu
Bm
Apateu, apateu
D
Uh, uh-huh, uh-huh
G
Apateu, apateu
A
Apateu, apateu
Bm
Apateu, apateu
D
Uh, uh-huh, uh-huh
 
 
[Bridge]
F#7
Hey, so now you know the game
 
Are you ready?
 
'Cause I’m comin to get ya, get ya, get ya
Bm            A
Hold on, hold on
          D   B
I’m on my way
Bm                     A
Yeah, yeah, yeah-yeah, yeah
          D   B
I’m on my way
Bm            A
Hold on, hold on
          D   B
I’m on my way
Bm                     A
Yeah, yeah, yeah-yeah, yeah
          E
I’m on my way
 
 
[Pre-Chorus]
G                        A
Don't you want me like I want you, baby?
Bm                       D
Don't you need me like I need you now?
G                     A
Sleep tomorrow, but tonight, go crazy
Bm                       D
All you gotta do is just meet me at the
 
 
[Chorus]
G
Apateu, apateu
A
Apateu, apateu
Bm
Apateu, apateu
     D
Just meet me at the (Uh, uh-huh, uh-huh)
G
Apateu, apateu
A
Apateu, apateu
Bm
Apateu, apateu
     D
Just meet me at the (Uh, uh-huh, uh-huh)
G
Apateu, apateu
A
Apateu, apateu
Bm
Apateu, apateu
     D
Just meet me at the (Uh, uh-huh, uh-huh)
G
Apateu, apateu
A
Apateu, apateu
Bm
Apateu, apateu
D
Uh, uh-huh, uh-huh
""",),
    Song(
        songName: "Valentine",
        artistName: "Laufey",
        albumArtImagePath: "assets/images/valentine.jpg",
        audioPath: "audio/valentine.mp3",
      lyrics: """[Intro]
Ebmaj7 Edim Gdim Fm7 Bb9
 
[Verse 1]
     Ebmaj7      Bb7(b13)
I‘ve rejected affection
    Ebmaj7    Bb7(b13)
For years and years
     Ebmaj7      Gm7
Now I have it and damn it   
Gbm7 Fm7     Bb7
it‘s kind of weird
   Gm7          C7
He tells me I‘m pretty
           Fm7       C7
Don't know how to respond
  Fm7
I tell him that he‘s pretty too
    Bb13              Bb7(b13)
Can I say that? Don‘t have a clue
 
[Verse 2]
     Ebmaj7        Bb7(b13)
With every passing moment
     Ebmaj7  Bb7(b13)
I surprise myself
    Ebmaj7              G7
I‘m scared of flies, I‘m scared of guys
Abmaj7         Bb7
Someone please help
     Gm7           C7
Cause I think I‘ve fallen
 Fm7         C7
In love this time
  Fm7         Gm7 Abmaj7 Am7   Bb13 Abm7
I blinked and suddenly I had a   Valentine
            Ebmaj7
(Be my valentine)
 
[Instrumental]
Bb7(b13) Ebmaj7  Bb7(b13) Ebmaj7 C7
Fm7 C7 Fm7 C7 Fm7 C7
Fm7 Bb7(b13)
(Scatting dadadooo waa boo waa doo)
 
[Bridge]
Fm7                   Bb7
What if he‘s the last one I kiss?
Fm7                     Bb7
What if he‘s the only one I‘ll ever miss?
Gm7                     C7
Maybe I should run, I‘m only twenty-one
Fm7                    Abm6
I don‘t even know who I want to become
 
[Verse 3]
     Ebmaj7   Bb7(b13)
I‘ve lost all control
      Ebmaj7    Bb7(b13)
Of my heartbeat now
    Gm7         Gbm7         Fm7      Bb7
Got caught in a romance with him somehow
  Gm7          C7            Fm7   C7
I still feel a shock through every bone
Fm7
When I hear an “I love you”
      Bb13         Bb7(b13)
Cause now I‘ve got someone to lose
 
[Verse 4]
Ebmaj7    Bb7(b13)
The first one to ever 
Ebmaj7  Bb7(b13)
like me back
  Gm7                   C7
I‘m seconds away from a heart attack
Fm7                        Fm7b5
How the hell did I fall in love this time?
    Gm7                         C7
And honestly, I can‘t believe I get to call you mine
  Fm7         Gm7 Abmaj7 Am7     Bb13  Ebmaj7
I blinked and suddenly I had a   Valentine""",),
    Song(
        songName: "TL Ako Sayo",
        artistName: "Cinderella",
        albumArtImagePath: "assets/images/tlas.jpg",
        audioPath: "audio/tl_ako_sayo.mp3",
      lyrics: """[Intro]
E C#m F#m E (x2)
 
[Verse]
E        C#m           F#m
Ewan ko ba kung bakit type kita
B                E
Di ka naman guwapo
E        C#m         F#m
Kahit malabo ang pagpili ko
B             E  (B)
T.L. ako sa 'yo.
 
[Verse]
E           C#m        F#m
Panay kantiyaw ng mga utol ko
B                       A          E
Dehins ka daw bagay sa kagandahan ko
E       C#m           F#m
Malabo na ba raw ang mata ko
B             E E7
At na T.L. kita.
 
[Chorus]
   A                    E
Kalyeng liku liko ang takbo ng isip ko
A                  E
Sabi ng lolo may toyo ang utak ko
A                 E         C#m
Sabi ng lola ay humanap ng iba
    F#7
May porma't mayaman
            B
T.L. wala naman
 
(Repeat I & Chorus)
(Repeat I)
 
[Outro]
A  B          E
T.L. ako sa 'yo
  A       B        E A E
Ikaw ang true love ko.""",),
    Song(
        songName: "Hayaan Mo Sila",
        artistName: "Ex Batallion",
        albumArtImagePath: "assets/images/xb.jpg",
        audioPath: "audio/hayaan_mo_sila.mp3",
      lyrics: """[Intro]
F Dm Bb
Yeah
C             F Dm
Yeah, yeah, yeah
Bb
(O.C. DAWGS, Ex B!)
 
F Dm Bb C F x2
 
[Bosx1ne:]
F
Kalimutan mo na yan
            Dm
Sige-sige maglibang
          Bb
Wag kang magpakahibang
                  C
Dapat ay itawa lang
                F                 Dm
Ang problema sa babae dapat 'di iniinda
          Bb                       F
Hayaan mo sila ang maghabol sa'yo di' ba?
                  F              Dm
Sabi ko naman sa'yo, lahat yan nagloloko
                Bb                    C
Pagkatapos kang pakinabangan biglang lalayo
F               Dm
Kaya wag nang uulit pa
Bb              F
Kaya wag nang uulit pa
 
[Jnske:]
F
Eto na naman tayo
Dm               Bb
Kelan ka ba matututo?
C                   F
Pag-ibig ay sakit sa ulo
Dm                   Bb
Kaya wag kang magpapaloko
                    F             Dm
Bakit ba ang bilis mo na maniwala diyan?
              Bb              C
Di ka pa ba nadala sa 'yong nakaraan?
F                              Dm
Ilang beses pa ba na kitang papayuhan?
                Bb              Gm
Ayaw ko lang naman na ikaw ay masaktan
                    F                                  Dm
Hindi kita na dina-down, down, down, down, pumili ka kase
            F             C
Karamihan kasi now kung makuha madale
F                       Dm
Madali nang magpakamot pag may nangate
                                 F
Kaya ngayon palang mag-isip ka pre
([Bosx1ne:] yeah, yeah, yeah)
 
[Flow-G:]
             F                           Dm
Wag kang mangangamba kung iiwanan ka na niya
                Bb                  C
Wag kang mag-alala kasi marami pang iba
                  F                 Dm
Idaan mo lang sa tawa kesa magpakatanga
             Bb                          F
Hanggang sa masanay ka na, kase ganyan talaga sila
 F                    Dm                 Bb
Baka 'di mo alam na hindi na bilang sa daliri ang binibining
C
sasaktan ka lang
F                              Dm
Kaya easy ka lang, wag kang magpakahibang
Bb                              C
Wag mong gawing mundo yung alam mo na tao lang
F                               Dm
Alam mo yan kaya wag mo nang lokohin ang sarili mo
 Bb                      C
Hayaan mo sila na maglaway kakatingin sa'yo
F                                 Dm
Hanggang sa sila namang lahat ang maghabol sa'yo
C                                    F
Pag nagawa mo yan ay tsaka nako bi-bilib sa'yo
 
[Bosx1ne:]
F
Kalimutan mo na yan
            Dm
Sige-sige maglibang
          Bb
Wag kang magpakahibang
                  C
Dapat ay itawa lang
                F                 Dm
Ang problema sa babae dapat 'di iniinda
          Bb                       F
Hayaan mo sila ang maghabol sa'yo di' ba?
                  F              Dm
Sabi ko naman sa'yo, lahat yan nagloloko
                Bb                    C
Pagkatapos kang pakinabangan biglang lalayo
F               Dm
Kaya wag nang uulit pa
Bb              F
Kaya wag nang uulit pa
 
[Brando:]
                  F                       Dm
Gagamitin lang nila ang 'yong pagiging sikat
         Bb                       C
Sabi ko sa'yo diba 'di lahat ay tapat?
                     F
Na mga bitches na tanging riches
              Dm               Bb
Wag ilahat ng pagkatao mo at feelings from the beginning, hindi sapat!
F                       Dm
Bumuyo ka na pag gusto napasakamay
                 Bb
Unti-unti kang gagamitin parang soccermi
   C                F                   Dm
Kaya tawanan mo na lang pare di yan kawalan
                 Bb           F
Dapat tayo yung lalaki na iniiyakan
 
[Brando & Bosx1ne:]
                     F                  Dm
Kaya hayaan mo sila na maghabol sa'yo para 'lam nila 'di tayo
       Bb              C
basta-basta 'di sa'yo na
            F                      Dm
Kaya sakin magtiwala, madami pa diyang iba
                      Bb             F
Konti na lang tayong pogi sa mundong natitira
 
[Bullet-D:]
F                         Dm
Di sabi ko sa'yo wag nang uulet?
Bb                  C
Ang kulit mo ring kaibigan ka
F                                Dm
Ilang beses na ang puso mo'y napunet
Bb                        C
Nagagalit pag sinasabihan ka
(Oh yeah!)
F                      Dm              Bb               C
Maki-nig ka sa akin, alam ko na rin galawan ng babaeng ikaw ay papaasahin
F                           Dm
Kaya kung ako sa'yo ay wag na
              Bb
Tanga yung taong nandiyan na para sa kaniya
      F                       Dm
Kaso binalewala dahil lang sa salita
                    Bb                    C
Ang lakas-lakas manggamit ng hindi mo halata
                 F
Ganyan na talaga ang nagiging sitwasyon ngayon
             Dm
Wala nakong masabe basta alam mo na yon, kung ano yon
 
[Bosx1ne:]
F
Kalimutan mo na yan
            Dm
Sige-sige maglibang
          Bb
Wag kang magpakahibang
                  C
Dapat ay itawa lang
                F                 Dm
Ang problema sa babae dapat 'di iniinda
          Bb                       F
Hayaan mo sila ang maghabol sa'yo di' ba?
                  F              Dm
Sabi ko naman sa'yo, lahat yan nagloloko
                Bb                    C
Pagkatapos kang pakinabangan biglang lalayo
F               Dm
Kaya wag nang uulit pa
Bb              F
Kaya wag nang uulit pa
 
[Skusta Clee:]
F                                          Dm
De-de-de there's so many bitches in the club
           Bb                     C
There's so many sexy babies ba't hindi ka maghanap?
F                         Dm
Iinom nalang natin kasi yan
Bb                         C
Bawal ang malungkot pare, hindi pwede yan
F                       Dm
Sakin makinig ka pare, sa panahon ngayon
Bb                   C
Wala nang matinong babae
               F           Dm
Mani-wala ka saking mga sinasabe
              Bb
Alam ko yan kasi diyaan ako nadale
F                                            Dm
So it's time to say goodbye, bye, bye, say goodbye
                          Bb
Dun sa girlfriend mong tsupay
         C
Set up tonight
                      F
Walang nang chick ngayon na totoo
        Dm
Lahat nagloloko
Ay nako, kung ako sa'yo kalimutan mo na yan
 
[JRoa:]
F
Hey dude, just listen to me now
Bb                               C
I say, I say hey dude, wag kang magpakahibang
F                              Dm
Dami-dami diyang iba, wag kang magpakatanga
Bb                           C
Buksan mo lang ang mata at ika'y magbago na
F                               Dm
See them pretty ladies in the club tonight
Bb                     C
Ba't di ka pa kasi maghanap? Yeah, right
F                  Dm
Itapon mo na'ng nakaraan bye, bye
 Bb
Pare just stop wastin' me time
F                   Dm
Wag mo na kasing pilitin pa
Bb                       C
Kung ako sa'yo mag-enjoy ka
F                       Dm
Hayaan mo na lang na maghabol sila
N.C.
Ituro mo diyan sakin at tutulungan kita na kalimutan yeah, yeah
Kalimutan mo na yan, yeah
Kalimutan mo na yan, yeah
 
[Bosx1ne:]
F
Kalimutan mo na yan
            Dm
Sige-sige maglibang
          Bb
Wag kang magpakahibang
                  C
Dapat ay itawa lang
                F                 Dm
Ang problema sa babae dapat 'di iniinda
          Bb                       F
Hayaan mo sila ang maghabol sa'yo di' ba?
                  F              Dm
Sabi ko naman sa'yo, lahat yan nagloloko
                Bb                    C
Pagkatapos kang pakinabangan biglang lalayo
F               Dm
Kaya wag nang uulit pa
Bb              F
Kaya wag nang uulit pa
 
[Outro] x4
           F        Dm
Hayaan mo sila na, hayaan mo sila na
           Bb                C
Hayaan mo sila ang maghabol sa'yo
""",),
    Song(
        songName: "Linda Blair",
        artistName: "Tanya Markova",
        albumArtImagePath: "assets/images/lb.jpg",
        audioPath: "audio/linda_blair.mp3",
      lyrics: """ 
EM7-C#m7-A-B-C#m7-G#m7-F#m7-B 2x
 
Stanza 1:
 
EM7 C#m7 A B
umaga sa bahay, akoy inaantok pa
 
C#m7 G#m7 F#m7 B
napuyat ng magbabad sa horror na palabas
 
EM7 C#m7 A B
si nanay, si tatay sumisigaw sa baba
 
C#m7 G#m7 F#m7 B
gumising ka na daw nasa lamesa ang almusal
 
Stanza 2: (Repeat Stanza chords)
 
sa classroom si teacher ako'y inaasar pa
nagtatanong siya kung ako'y naligo daw kanina
 
bigla kong nanlamig, buhok ko ay tahimik
puno ng galit at pait nang ako'y mamilipit
 
Refrain:
 
AM7 G#m7 AM7 G#m7
Namula ang mata, at humagis pa ang silya
 
AM7 G#m7 F#m7
ako'y biglang nasuka, humarap kay teacher 
B
at sinabi na "Langhiya!!!
 
Chorus:
 
EM7      C#m7 A B
Teacher, teacher ako si Linda Blair
C#m7 G#m7
and the ghosts are everywhere
F#m7 B
I can feel it in the air
 
EM7 C#m7
Teacher, teacher
A B
I'm just trying to be fair
C#m7 G#m7
huwag ka nang mag-worry
F#m7 B
huwag ka nang mag-worry
 
Stanza 3: (Repeat Stanza chords)
 
Gumapang, sumampa, sa table nyang marumi
habang nag-kokombulsyon at biglang nakangiti
 
ako ay dumura ng plema sa mukha nya
si teacher ay nasindak pumapatak ang luha
 
Stanza 4:
 
ang klase'y nabigla lahat napatunganga
sinanbiban raw ako'y kelangan kong dasal
 
ang iba'y lumabas nag-sumbong kay prinsipal
nagkagulo na tuloy sa buong paaralan
 
Refrain:
 
AM7 G#m7 AM7 G#m7
Namula ang mata, at humagis pa ang silya
 
AM7 G#m7 F#m7
ako'y biglang nasuka, humarap kay teacher 
B
at sinabi na "Langhiya!!!
 
Chorus:
 
EM7      C#m7 A B
Teacher, teacher ako si Linda Blair
C#m7 G#m7
and the ghosts are everywhere
F#m7 B
I can feel it in the air
 
EM7 C#m7
Teacher, teacher
A B
I'm just trying to be fair
C#m7 G#m7
huwag ka nang mag-worry
F#m7 B
huwag ka nang mag-worry
 
Adlib
 
Refrain:
 
AM7 G#m7 AM7 G#m7
Namula ang mata, at humagis pa ang silya
 
AM7 G#m7 F#m7
ako'y biglang nasuka, humarap kay teacher 
B C#
at sinabi na "Langhiya!!!
F#M7     Ebm    B C#
Teacher, teacher ako si Linda Blair
Ebm Bbm
and the ghosts are everywhere
G#m C#
I can feel it in the air
F#M7 Ebm
Teacher, teacher
B C#
I'm just trying to be fair
Ebm Bbm
huwag ka nang mag-worry
G#m C#
huwag ka nang mag-worry
F#M7 Ebm
Mommy, Mommy
B C#
teacher's over there
Ebm Bbm G#m C#
she'll be buried next week in the cemetery
F#M7-Ebm -B-C#-Ebm-Bbm-G#m-C#-F#M7
in the cemetery...""",),
    Song(
        songName: "Bored",
        artistName: "Laufey",
        albumArtImagePath: "assets/images/bored.jpg",
        audioPath: "audio/bored.mp3",
      lyrics: """[Verse 1]
           Gmaj7 Am7  Bm7
Why dont we
E7b9                    Am9
call it for what it is
      D7b9                        Gmaj7
Can't remember the last time we kissed
       E7b9
and it tickled my heart
  Am9
I think that it's best
        Cm6
that we spent time apart
           Gmaj7 Am7  Bm7
I just yawn
E7b9
listening to you
Am9                   D13
talk about yourself again
D7
and again
 
[Chorus]
    Gmaj7
I'm bored
Bm7
Bored of this love
         Am7
Oh I'm bored
D7b9
Bored of this talk and
Gmaj7        Am7          Bm7        B7
Maybe you're just way too vain to be interesting
Em7                   A7       A7
Baby keep talking but nobody's listening
Am7                        D7
Don't mean to walk out the door
            Gmaj7
but baby im bored
 
Bm7  Am7  D7b9
 
[Verse 2]
             Gmaj7 Am7  Bm7
Did you know
  E7b9                 Am9
I wept in my room last night?
        D7b9                    Gmaj7
Bet you didn't know you made me cry
          E7b9
Cuz you're so self possessed
Am9                       Cm6
Charming at first but you made me depressed
   Gmaj7      E7b9    Am7      D7
So im leaving in the morning
 
[Chorus]
    Gmaj7
I'm bored
Bm7
Bored of this love
         Am7
Oh I'm bored
D7b9
Bored of this talk and
Gmaj7        Am7          Bm7         B7
Maybe you're just way too plain to be interesting
Em7                   A7       A7
Baby keep talking but nobody's listening
Am7                        D7
Don't mean to walk out the door
            Gmaj7
but baby im bored
 
E7b9
 
[Bridge]
    Am7
You followed me out and said:
Bm7
"Darling don't leave"
      B7                  Em7         E7
Your passionate monologue woke up the street
     Am7                        Bm7        E7b9
"I'll marry you someday, you're perfect for me"
  Am7                   D7b9
I got in my car just to drown out your plea
 
[Chorus]
    Gmaj7
I'm bored
Bm7
Bored of this love
         Am7
Oh I'm bored
D7b9
Bored of this talk and
Gmaj7        Am7          Bm7        B7
Maybe you're just way too vain to be interesting
Em7                   A7       A7
Baby keep talking but nobody's listening
Am7                        D7
Don't mean to walk out the door
            Gmaj7
but baby im bored
 
[Outro]
Am7 Bm7 D7
Gmaj7 Am7 Bm7 D9 (G)
""",),
    Song(
        songName: "From The Start",
        artistName: "Laufey",
        albumArtImagePath: "assets/images/fmt.jpg",
        audioPath: "audio/from_the_start.mp3",
      lyrics: """[Intro]
Gbmaj7 Ab Dbmaj7
 
[Verse 1]
          Gbmaj7 Ab7
Don't you notice how
 Dbmaj7                         Ebm7  Ab7
I get quiet when there's no one else around?
Dbmaj7
Me and you and awkward silence
Ebm7       Ab7         Fm7    Bb7
Don't you dare look at me that way
Ebm7                          Ab7
I don't need reminders of how you don't feel the same
 
[Verse 2]
        Gbmaj7 Ab
Oh, the burning pain
Dbmaj7                              Ebm7    Ab7
Listening to you harp on 'bout some new soulmate
Dbmaj7
"She's so perfect", blah, blah, blah
    Ebm7      Ab          Fm7     Bb7
Oh, how I wish you'll wake up one day
  Ebm7                              Ab
Run to me, confess your love, at least just let me say
 
[Chorus]
    Ebm7         Ab7
That when I talk to you
    Dbmaj7
Oh, Cupid walks right through
     Ebm7     Ab7              Dbmaj7
And shoots an arrow through my heart
    Ebm7         Ab7
And I sound like a loon
    Fm7        Bb7
But don't you feel it too?
    Ebm7       Ab7           Dbmaj7
Confess I loved you from the start
 
[Post-Chorus]
Gbmaj7 Ab7
 
        Dbmaj7
Bi-ya-ba-da
            Ebm7   Ab7   Dbmaj7
Ba-ba-da-ba-da, da-da, da-da
      Ebm7       Ab7
Bi-ya-di, ya-ba-da
   Fm7             Bb7
Ba-bi, ya-da-ba-da-ba, ba-da-ba-di
      Ebm7          Ab7
Ya-ba-bi, ya-da, da-da
 
[Verse 3]
         Gbmaj7  Ab7
What's a girl to do
 Dbmaj7                    Ebm7    Ab7
Lying on my bed, staring into the bluе?
  Dbmaj7
Unrequited, terrifying
Ebm7       Ab        Fm7   Bb7
Lovе is driving me a bit insane
     Ebm7                           Ab
Have to get this off my chest, I'm telling you today
 
[Chorus]
    Ebm7         Ab7
That when I talk to you
    Dbmaj7
Oh, Cupid walks right through
     Ebm7     Ab7              Dbmaj7
And shoots an arrow through my heart
    Ebm7         Ab7
And I sound like a loon
    Fm7        Bb7
But don't you feel it too?
    Ebm7       Ab7           Dbmaj7
Confess I loved you from the start
 
[Outro]
    Ebm7   Ab7
Confess I loved you
       Fdim    Bb7
Just thinking of you
  Ebm7      Ebdim              Db
I know I've loved you from the start
""",),
    Song(
        songName: "Happier Than Ever",
        artistName: "Billie Eilish",
        albumArtImagePath: "assets/images/hte.jpg",
        audioPath: "audio/happier_than_ever.mp3",
      lyrics: """[Intro]
G    G7
 
[Chorus]
           C       C
When I'm away from you
                 E7      E7
I'm happier than e....ver
                        Am7  Am7
Wish I could explain it be...tter
                   Dm7     G7
I wish it wasn't tru.....ue
 
 
[Verse 1]
          C        C
Give me a day or two
                    E7    E7
to think of something clever
                   Am7   Am7
To write myself a le.....tter
                    Dm7    G7
To tell me what to do......oo,
 
[Verse 2]
    C   C/G    C   C/G
mm-mm
    C C/G      C        C/G
Do you read my interviews?
   E7/B  E7           E7/B E7
Or do     you skip my avenue?
         Am   Am/E     Am          Am/E
When you said you were passin' through
     Fm
Was I even on your way?
  C   C/G     C          C/G
I knew when I asked you to (When I asked you to)
   E7/B  E7              E7/B       E7
Be cool about what I was tellin' you
      Am          Am/E            Am
You'd do the opposite of what you said you'd do (What you said you'd do)
Am/E    Fm             Fm
And I'd end up more afraid
             E
Don't say it isn't fair
            E                      Am      Am7/G#   Am7/G  D/F#
You clearly werеn't aware that you made me misеra...b......le
   Dm7                  G
So if you really wanna know
 
 
[Chorus]
           C         C
When I'm away from you (When I'm away from you)
                 E7  E7
I'm happier than ever (Happier than ever)
                        Am7   Am7
Wish I could explain it be....tter (Wish I could explain it better)
                   Dm7   G7
I wish it wasn't tru.....ue, mm-mm
 
[Interlude]
C  C/G  C  C/G  Csus2/G
 
[Verse 3]
C   Em   Am   F Fm
 
C5            E5                  A5
You call me again, drunk in your Benz
             F5
Drivin' home under the influence
C5                 E5                        A5
You scared me to death, but I'm wastin' my breath
                F5
'Cause you only listen to your fuckin' friends
C5                    E5
I don't relate to you
A5                     F5
I don't relate to you, no
                   C5               E5
'Cause I'd never treat me this shitty
             A5           F5
You made me hate this city
 
 
[Verse 4]
N.C.               C                   E
And I don't talk shit about you on the internet
           Am              F
Never told anyone anything bad
       Fm             C                      E
'Cause that shit's embarrassing, you were my everything
                  Am                      F   Fm
And all that you did was make me fuckin' sad
   C                            E
So don't waste the time I don't have
    Am                        F
And don't try to make me feel bad
   N.C.            C                          E
I could talk about every time that you showed up on time
                Am                           F
But I'd have an empty line 'cause you never did
      Fm       C                     E
Never paid any mind to my mother or friends, so I
             Am                         F     Fm
Shut 'em all out for you 'cause I was a kid
 
 
[Outro]
C5                    E5
You ruined everything good
       A5                    F5
Always said you were misunderstood
C5                       E5
Made all my moments your own
A                       F5    C     E     Am     F  Fm
Just fuckin' leave me alooooooo.....o.....ooone
 
C     E     Am     F  Fm
C     E     Am     F  Fm    C""",),
    Song(
        songName: "Taste",
        artistName: "Sabrina Carpenter",
        albumArtImagePath: "assets/images/taste.jpg",
        audioPath: "audio/taste.mp3",
      lyrics: """[Verse 1]
G            Am         F
 Oh, I leave quite an impression
      G       C   F    C
 Five feet to be exact
G                 Am           F
 You're wonderin' why half his clothes went missin'
   G      C             F
My body's where they're at
 
 
[Pre-Chorus]
        G         Am           F
Now I'm gone, but you're still layin'
        Em                    F
Next to me, one degree of separation
 
 
[Chorus]
  G                   Am     F
I heard you're back together and if that's true
G                   Am      F
You'll just have to taste me when he's kissin' you
G              Am    F
If you want forever, I bet you do
     G           Am        F
Just know you'll taste me too
 
 
[Post-Chorus]
G C F C
      Uh-huh
 
 
[Verse 2]
G            Am          F
 He pins you down on the carpet
      G         C        F                   C
Makes paintings with his tongue (La-la-la-la-la-la-la)
G            Am          F
 Hе's funny, now all his jokes hit different
      G      C            F
Guеss who he learned that from
 
 
[Pre-Chorus]
        G         Am           F
Now I'm gone, but you're still layin'
        Em                    F
Next to me, one degree of separation
 
 
[Chorus]
  G                   Am     F
I heard you're back together and if that's true
G                   Am     F
You'll just have to taste me when he's kissin' you
G              Am    F
If you want forever, I bet you do (I bet you do)
     G           Am       F
Just know you'll taste me too
 
 
[Post-Chorus]
G Am F            C
      La-la-la-la-la-la-la
G C F C
 
 
[Bridge]
G              Am
Every time you close your eyes
    F
And feel his lips, you're feelin' mine
    G
And every time you breathe his air
     F
Just know I was already there
G                Am
You can have him if you like
     F
I've been there, done that once or twice
    G
And singin' 'bout it don't mean I care
      F                               G Am F
Yeah, I know I've been known to share
 
 
[Chorus]
        G                   Am     F
Well, I heard you're back together and if that's true
G                   Am     F           N.C.
You'll just have to taste me when he's kissin' you
G              Am    F
If you want forever, I bet you do (I bet you do)
     G           Am       F
Just know you'll taste me too
 
 
[Post-Chorus]
         G  Am F
Taste me too  (Ow)
             C
(La-la-la-la-la-la-la)
G                   C      F
You'll just have to taste me when he's kissin' you
G    Am F
You, no, yeah, uh-uh
             C
(La-la-la-la-la-la-la)
G                   Am     F                        C
You'll just have to taste me when he's kissin' you
""",),
    Song(
        songName: "good 4 u",
        artistName: "Olivia Rodrigo",
        albumArtImagePath: "assets/images/g4u.jpg",
        audioPath: "audio/good_4_u.mp3",
      lyrics: """[Intro]
F#m  E
F#m  E
 
 
[Verse 1]
F#m                            E
Well good for you, I guess you moved on really easily
F#m                         E
You found a new girl and it only took a couple weeks
F#m                         E                         D    C#7
Remember when you said that you wanted to give me the world
F#m                            E
And good for you, I guess that you've been working on yourself
F#m                      E
I guess that therapist I found for you, she really helped
F#m                     E                      D   C#7
Now you can be a better man for your brand new girl
 
 
[Chorus]
D              A
 Well good for you
                   E
You look happy and healthy, not me
            F#m   E  D
If you ever cared to ask
         A
Good for you
                                 E
You're doing great out there without me, baby
            F#m    E        D
God, I wish that I could do that
             A
I've lost my mind
               E
I've spent the night
                       F#m  E  D
Crying on the floor of my  bathroom
                  A                      E
But you're so unaffected, I really don't get it
                     F#m  E
But I guess good for you
 
 
[Instrumental]
F#m  E  B
F#m  E  B
 
 
[Verse 2]
N.C.                                           E
Well good for you, I guess you're getting everything you want
F#m                           E
You bought a new car and your career's really taking off
F#m                     E
It's like we never even happened, baby
         D               C#7
What the fuck is up with that?
F#m                             E
And good for you, it's like you never even met me
F#m                        E
Remember when you swore to God I was the only
F#m
Person who ever got you
       E
Well, screw that and screw you
D                               C#7
You will never have to hurt the way you know that I do
 
 
[Chorus]
D              A
 Well good for you
                   E
You look happy and healthy, not me
            F#m   E  D
If you ever cared to ask
         A
Good for you
                                 E
You're doing great out there without me, baby
            F#m    E        D
God, I wish that I could do that
             A
I've lost my mind
               E
I've spent the night
                       F#m  E  D
Crying on the floor of my  bathroom
                  A                      E
But you're so unaffected, I really don't get it
                     F#m  E
But I guess good for you
 
 
[Instrumental]
F#m  E  B
F#m  E  B
D  A  E  F#m  E
D  A  E  F#m  E
 
 
[Bridge]
F#m            E    B
Maybe I'm too emotional
         F#m             E        B
But your apathy's like a wound in salt
F#m            E    B
Maybe I'm too emotional
   F#m             E        B
Or maybe you never cared at all
F#m            E    B
Maybe I'm too emotional
     F#m             E        B
Your apathy's like a wound in salt
F#m            E    B
Maybe I'm too emotional
   F#m             E        B
Or maybe you never cared at all
 
 
[Chorus]
D              A
 Well good for you
                   E
You look happy and healthy, not me
            F#m   E  D
If you ever cared to ask
         A
Good for you
                                 E
You're doing great out there without me, baby
N.C.             D
Like a damn sociopath
             A
I've lost my mind
               E
I've spent the night
                       F#m  E  D
Crying on the floor of my  bathroom
                  A                      E
But you're so unaffected, I really don't get it
                     F#m  E
But I guess good for you
 
 
[Instrumental]
F#m  E  B
F#m  E  B
 
 
[Outro]
F#m                               E               B      F#m
   Well good for you, I guess you moved on really easily""",),
    Song(
        songName: "Casual",
        artistName: "Chappell Roan",
        albumArtImagePath: "assets/images/casual.jpg",
        audioPath: "audio/casual.mp3",
      lyrics: """[Intro]
C Dm7 Am F
C Dm7 Am F
 
[Verse]
C                   Dm7
My friends call me a loser
Am               F
'Cause I'm still hanging around
C          Dm7
I've heard so many rumors
Am                            F
That I'm just a girl that you bang on your couch
C             Dm7
I thought you thought of me better
Am      F
Someone you couldn't lose
C          Dm7
You said, "We're not together"
Am                          F
So now when we kiss, I have anger issues
 
[Pre-Chorus]
G                F
You said, "Baby, no attachment"
But we're…
 
[Chorus]
C               Dm7                        Am
Knee deep in the passenger seat and you're eating me out
        F
Is it casual now?
C                  Dm7                   Am
Two weeks and your mom invites me to her house on Long Beach
        F
Is it casual now?
C                         Dm7
I know what you tell your friends
Am                   F
It's casual, if it's casual now
C                     Dm7
Then baby, get me off again
Am                   F
If it's casual, it's casual now
 
[Verse]
C            Dm7
Dumb love, I love being stupid
Am               F
Dream of us in a year
C          Dm7
Maybe we'd have an apartment
Am                            F
And you'd show me off to your friends at the pier
 
[Pre-Chorus]
G              F
I know, "Baby, no attachment"
But we're…
 
[Chorus]
C                Dm7                       Am
Knee deep in the passenger seat and you're eating me out
        F
Is it casual now?
C                 Dm7                    Am
Two weeks and your mom invites me to her house on Long Beach
        F
Is it casual now?
C                         Dm7
I know what you tell your friends
Am                   F
It's casual, if it's casual now
C                     Dm7
Then baby, get me off again
Am                   F
If it's casual, it's casual now
 
[Bridge]
G               F
It's hard being casual
        Am                 F
When my favorite bra lives in your dresser
G               F
It's hard being casual
        Am                    F
When I'm on the phone talking down your sister
  G                 F
And I try to be the chill girl that
Am                   F
Holds her tongue and gives you space
G               F
I try to be the chill girl but
Am            Fm
Honestly, I'm not
 
[Chorus]
C               Dm7                        Am            F
Knee deep in the passenger seat and you're eating me out
C               Dm7                      Am              F
Two weeks and your mom invites me to her Long Beach house
C                         Dm7     Am    F
I know what you tell your friends
C                Dm7    Am      F
Baby, get me off again
 
[Outro]
C                            Dm7
I fucked you in the bathroom when we went to dinner
Am                         F
Your parents at the table, you wonder why I'm bitter
C                              Dm7
Bragging to your friends I get off when you hit it
Am                           F
I hate to tell the truth but I'm sorry dude you didn't
C                          Dm7                Am        F
I hate that I let this drag on so long, now I hate myself
C                          Dm7                  Am       F
I hate that I let this drag on so long, you can go to hell
 
End on C
""",),
    Song(
        songName: "Good Luck, Babe",
        artistName: "Chappell Roan",
        albumArtImagePath: "assets/images/glb.jpg",
        audioPath: "audio/good_luck_babe.mp3",
      lyrics: """[Intro]
G A D Bm
 
[Verse 1]
     G          A
It's fine, it's cool
        D                               Bm
You can say that we are nothing but you know the truth
          G       A
And guess I'm the fool
         D                                  Bm
With her arms out like an angel through the car sunroof
 
[Pre-Chorus]
Em9
 I don't wanna call it off
Em
 But you don't wanna call it love
Em9                             Em
 You only wanna be the one that I call baby
 
[Chorus]
   G                   A
You can kiss a hundred boys in bars
  D                        Bm
Shoot another shot, try to stop the feeling
   G                      A
You can say it's just the way you are
 D                          Bm
Make a new excuse, another stupid reason
       G                    A
Good luck babe, well good luck babe
        D                             Bm
You'd have to stop the world just to stop the feeling
       G                    A
Good luck babe, well good luck babe
        D                             Bm
You'd have to stop the world just to stop the feeling
 
[Verse 2]
       G         A
I'm cliché, "Who cares?"
       D                         Bm
It's a sexually explicit kind of love affair
      G             A
And I cry, it's not fair
       D                            Bm
I just need a little lovin', I just need a little air
 
[Pre-Chorus]
Em9
 Think I'm gonna call it off
Em
 Even if you call it love
Em9                            Em
 I just wanna love someone who calls me baby
 
[Chorus]
   G                   A
You can kiss a hundred boys in bars
  D                        Bm
Shoot another shot, try to stop the feeling
   G                      A
You can say it's just the way you are
 D                          Bm
Make a new excuse, another stupid reason
       G                    A
Good luck babe, well good luck babe
        D                             Bm
You'd have to stop the world just to stop the feeling
       G                    A
Good luck babe, well good luck babe
        D                             Bm
You'd have to stop the world just to stop the feeling
 
[Interlude]
Em9 Em Em9 Em
 
[Bridge]
             Em9                        Em
And when you wake up next to him in the middle of the night
           Em9                               Em
With your head in your hands, you're nothing more than his wife
             Em9                         Em
And when you think about me all of those years ago
                Em9                  Em
You're standing face to face with "I told you so"
           N.C.
You know I hate to say it, I told you so
           Em9                   Em
You know I hate to say it but, I told you so
 
[Chorus]
   G                   A
You can kiss a hundred boys in bars
  D                        Bm
Shoot another shot, try to stop the feeling
   G                      A
You can say it's just the way you are
 D                          Bm
Make a new excuse, another stupid reason
       G                                     A
Good luck babe (well good luck), well good luck babe (well good luck)
        D                             Bm
You'd have to stop the world just to stop the feeling
       G                                    A
Good luck babe (well good luck), well good luck babe (well good luck)
        D                             Bm
You'd have to stop the world just to stop the feeling
 
[Outro]
        D                             Bm
You'd have to stop the world just to stop the feeling
        D                             Bm
You'd have to stop the world just to stop the feeling
        D                             Bm          G
You'd have to stop the world just to stop the feeling
 
 
(End of song slows down gradually so that by the end the pitch of the last chord is really F#.)
""",),
    Song(
        songName: "Popular",
        artistName: "Ariana Grande",
        albumArtImagePath: "assets/images/popular.jpg",
        audioPath: "audio/popular.mp3",
      lyrics: """[Intro]
N.C.
Elphie, now that we're friends, I've decided to make you my new project
N.C.
Oh, you really don't have to do that
N.C.
I know!
 
That's what makes me so nice
 
 
[Verse 1]
    F#m    F#m/E B/D#         E/G#           Aadd9
Whenever I see  someone less fortunate than I
          F#m      F#m/E      B/D#       E/G#           Dadd9
And let's face it, right? Who isn't less fortunate than I?
   D/C   C    C/Bb    Bb       Aadd9
My tender heart tends to start to bleed
         F#m     F#m/E   B/D#        E/G#           Aadd9
And when someone needs a makeover, I simply have to take over
  Fadd9        Bbadd9/Ab        Esus2 E
I know, I know exactly what they need
    Em           A
And even in your case
N.C.            F#m7               B/D#
Though it's the toughest case I've yet to face
      Em           G/C          Aadd9 A
Don't worry, I'm determined to succeed
   D/G   Aadd9 Bm7/B
Follow my lead
    E9     A
And yes, indeed
N.C.
You will be, ah
 
 
[Chorus]
D       A
Popular
                Gsus2  D
You're gonna be popu---lar
     A/C#          Bm     F#m/A          Bm      F#m/A
I'll teach you the proper ploys when you talk to boys
       Gmaj7  A         D
Little ways to flirt and flounce, ooh
              F#7/C# Bm       D+/A#        D/A           G#m7b5
I'll show you what shoes to wear, how to fix your hair
G         Em          A
Everything that really counts to be
D       A
Popular
                 Gadd9 D
I'll help you be popu--lar
       A/C#          Bm      F#m/A            Bm      F#m/A
You'll hang with the right cohorts, you'll be good at sports
         Gmaj7       A      F#7sus B
Know the slang you've got to know
         Em7                  Em7/G   Asus A D              Em7 Fdim7 D/F#
So let's start 'cause you've got an awfully   long way to go
 
 
[Verse 2]
Bb           Bb(G#5)/F    Bb     G(G#5)/F#7
  Don't be offended by my frank analysis
Fmaj7                              C6/9
Think of it as personality dialysis
Bbm7              Bbm6/F     Gm7   Bbm/F
    Now that I've chosen to become a pal
  C                  Gm6/Bb
A sister and adviser, there's nobody wiser
A
Not when it comes to
 
 
[Chorus]
D      A
Popular
             Gadd9 D
I know about popu--lar
    A/C#      Bm        F#m/A    Bm         F#m/A
And with an assist from me to be who you'll be
Gmaj7            F#7sus F#7/A# Bm
Instead of dreary who---you---were
          D7/A
Well, are!
        G                    Bm/F# Em7             A  D      N.C.
There's nothing that can stop you  from becoming populer... lar
 
 
[Post-Chorus]
A D  A   Gadd9 D
  La-la, la----la
Em7         G       Gadd9/A A D   Em7(no5) Fdim7 D/F#
We're gonna make you pop------u-lar
 
 
[Bridge]
F#     G#m7(no5)  F#dim/A  F#/A#
When I see      depressing creatures
Bm     F#/C# Bm/D
With unprepossessing features
E   F#m7(no5)    Edim/G  E/G#  A
I remind    them on their own behalf to think of
F#  G#m7(no5) F#dim/A  F#/A#
Celebrated    heads of state
    Bm        F#/C#    Bm/D
Or especially great communicators
E    F#m7(no5) Edim/G   E/G#
 Did they have brains or knowledge?
A
 Don't make me laugh
 
 
[Chorus]
 
They were
D
Popular
A
Right!
               Gadd9 D
It's all about popu--lar
     A         Bm  F#m/A          Bm         F#m/A
It's not about aptitude, it's the way you're viewed
        Gmaj7 F#7sus F#7   Bm7 E9
So it's very   shrewd   to be
Em7            G  Asus A D
Very, very popular like   me, me
 
 
[Refrain]
           Bm     F#m/A
And though you protest
        Bm   F#m/A
Your disinterest
Gmaj7     C#7sus F#7/E Bm E
I know clandes---tine-ly
       Em7                          Asus         A   D
You're gonna grin and bear it: your newfound popularity
 
(Woo!)
 
 
[Outro]
D  A   Gadd9 D
La-la, la-----la
E  B   A  E
La-la, la-la
G D   Bm A Em
La-la, ooh
 
You'll be popular
Em7     G  Em7      G  Asus A  D  A Gadd9 A D
   Just not quite as popular  as me!
""",),
    Song(
        songName: "Pantropiko",
        artistName: "BINI",
        albumArtImagePath: "assets/images/pantropiko.jpg",
        audioPath: "audio/pantropiko.mp3",
      lyrics: """[Verse 1]
Am           F       C              G
Ikaw ay nasilayan, sa di inakalang panahon
Am            F      C              G
Lumapit ng biglaan, para bang di nagkataon
Am              F      C                       G
Ito nga ba'y tadhana, tangi kong hiling sa mga tala
Am             F            C           G
Mga pintig ng puso'y, nakalaan para sa'yo
 
[Pre-Chorus]
      Am                       F
From following your footprints in the sand
   C                         G
To walking with you on this island
Am                    F
Guided by the grip of your hand
C                         G
I can feel you're holding my world
    Am             F
Ano ba itong nadarama, oh shux
    C             G
Ito ba'y pag-ibig na
      Am           F
Totoo ba ang pinadama,
           C           G
Cause boy, it feels so good
 
[Chorus]
Am               F
Bawat araw mas sumasaya
C               G
Magmula nang nakita ka
Am               F
Nawawala ang pangangamba
C            G
Pag ika'y kapiling na
Am                      F
Feels like summer when I'm with you
C                 G
Parang islang pantropiko
Am                 F
Can't wait to go back with you
C             G
Sa islang pantropiko
Am              F
Pantropiko, pantropiko oh
C             G
Sa islang pantropiko
Am              F
Pantropiko, pantropiko oh
C             G
Sa islang pantropiko
 
[Verse 2]
Am             F      C                    G
Sumapit na ang araw, nang ika'y muling nakausap
Am           F                  C     G
Hinahanap ka sa tabi, di na mawala sa isip
Am            F        C                    G
Nakita kang papalapit, puso ko'y bigla nang di mapakali
Am               F        C            G
Ano nga ba ang sinapit, kakapit ba hanggang huli
 
[Pre-Chorus]
      Am                       F
From following your footprints in the sand
   C                         G
To walking with you on this island
Am                    F
Guided by the grip of your hand
C                         G
I can feel you're holding my world
    Am             F
Ano ba itong nadarama, oh shux
    C             G
Ito ba'y pag-ibig na
      Am           F
Totoo ba ang pinadama,
           C           G
Cause boy, it feels so good
 
[Chorus]
Am               F
Bawat araw mas sumasaya
C               G
Magmula nang nakita ka
Am               F
Nawawala ang pangangamba
C            G
Pag ika'y kapiling na
Am                      F
Feels like summer when I'm with you
C                 G
Parang islang pantropiko
Am                 F
Can't wait to go back with you
C             G
Sa islang pantropiko
Am              F
Pantropiko, pantropiko oh
C             G
Sa islang pantropiko
Am              F
Pantropiko, pantropiko oh
C             G
Sa islang pantropiko
 
[Bridge]
                  Am                      F
On this tropical island, sitting on the white sand
                  C
Guess I found my love with you
            G                    Am
Cause with you boy, I'm going crazy
                  F                     C           G
You could be my baby, I could be your lady (Oh, oh)
         Am                    F
Di na maawatan ang kilig na bigay 'riyan
          C                   G
Puso'y parang bang di na mapigilan
Am            F
Kumakabog o humihinto
  C          G
Gumugulo ang puso ko sa'yo
 
[Pre-Chorus]
      Am                       F
From following your footprints in the sand
   C                         G
To walking with you on this island
Am                    F
Guided by the grip of your hand
C                         G
I can feel you're holding my world
    Am             F
Ano ba itong nadarama, oh shux
    C             G
Ito ba'y pag-ibig na
      Am           F
Totoo ba ang pinadama,
           C           G
Cause boy, it feels so good
 
[Chorus]
Am               F
Bawat araw mas sumasaya
C               G
Magmula nang nakita ka
Am               F
Nawawala ang pangangamba
C            G
Pag ika'y kapiling na
Am                      F
Feels like summer when I'm with you
C                 G
Parang islang pantropiko
Am                 F
Can't wait to go back with you
C             G
Sa islang pantropiko
Am              F
Pantropiko, pantropiko oh
C             G
Sa islang pantropiko
Am              F
Pantropiko, pantropiko oh
C             G
Sa islang pantropiko
""",),
  ];

  final List<Song> _favorites = []; // List to store favorite songs

  // Getters
  List<Song> get playlist => _playlist;
  List<Song> get favorites => _favorites; // Getter for favorites
  int? get currentSongIndex => _currentSongIndex;
  bool get isPlaying => _isPlaying;
  Duration get currentDuration => _currentDuration;
  Duration get totalDuration => _totalDuration;

  // Toggle favorite status
  void toggleFavorite(Song song) {
    if (_favorites.contains(song)) {
      _favorites.remove(song);
    } else {
      _favorites.add(song);
    }
    notifyListeners();
  }

  // Check if a song is in favorites
  bool isFavorite(Song song) {
    return _favorites.contains(song);
  }

  int? _currentSongIndex;

  // Map to store notes for each song by its index
  final Map<int, String> _songNotes = {};

  // Get note for the current song
  String getNoteForCurrentSong() {
    if (_currentSongIndex == null) return "";
    return _songNotes[_currentSongIndex!] ?? "";
  }

  // Set note for the current song
  void setNoteForCurrentSong(String note) {
    if (_currentSongIndex != null) {
      _songNotes[_currentSongIndex!] = note;
      notifyListeners();
    }
  }

  void setCurrentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;

    if (newIndex != null) {
      play();
    }

    notifyListeners();
  }

  // Audio player
  final AudioPlayer _audioPlayer = AudioPlayer();

  // Durations
  Duration _currentDuration = Duration.zero;
  Duration _totalDuration = Duration.zero;

  // Constructor
  PlaylistProvider() {
    listenToDuration();
  }

  bool _isPlaying = false;

  void play() async {
    final String audioPath = _playlist[_currentSongIndex!].audioPath;
    await _audioPlayer.stop();
    await _audioPlayer.play(AssetSource(audioPath));
    _isPlaying = true;
    notifyListeners();
  }

  void pause() async {
    await _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }

  void resume() async {
    await _audioPlayer.resume();
    _isPlaying = true;
    notifyListeners();
  }

  void pauseOrResume() async {
    if (_isPlaying) {
      pause();
    } else {
      resume();
    }

    notifyListeners();
  }

  void seek(Duration position) async {
    await _audioPlayer.seek(position);
  }

  void playNextSong() {
    if (_currentSongIndex != null) {
      if (_currentSongIndex! < playlist.length - 1) {
        setCurrentSongIndex(_currentSongIndex! + 1);
      } else {
        setCurrentSongIndex(0);
      }
    }
  }

  void playPreviousSong() async {
    if (_currentDuration.inSeconds > 2) {
      seek(Duration.zero);
    } else {
      if (_currentSongIndex! > 0) {
        setCurrentSongIndex(_currentSongIndex! - 1);
      } else {
        setCurrentSongIndex(playlist.length - 1);
      }
    }
  }
  void updateCurrentDuration(Duration newDuration) {
    _currentDuration = newDuration;
    notifyListeners();
  }

  void listenToDuration() {
    // Listen for total duration
    _audioPlayer.onDurationChanged.listen((newDuration) {
      _totalDuration = newDuration;
      notifyListeners();
    });

    // Listen for current duration
    _audioPlayer.onPositionChanged.listen((newPosition) {
      _currentDuration = newPosition;
      notifyListeners();
    });

    // Listen for song completion
    _audioPlayer.onPlayerComplete.listen((event) {
      playNextSong();
    });
  }
}
