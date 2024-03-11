-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2024 at 10:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `ID` int(11) NOT NULL,
  `ALBUM_TITLE` varchar(100) NOT NULL,
  `ARTIST` varchar(100) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `IMAGE_NAME` varchar(1000) NOT NULL,
  `DESCRIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`ID`, `ALBUM_TITLE`, `ARTIST`, `YEAR`, `IMAGE_NAME`, `DESCRIPTION`) VALUES
(1, 'Abby Road', 'The Beatles', 1961, 'https://wallpapercave.com/wp/wp6253862.jpg', 'Abbey Road is the eleventh studio album by the English rock band the Beatles, released on 26 September 1969. It is the last album the group recorded,[2] although Let It Be was the last album completed before the band\'s break-up in April 1970.[3] It was mostly recorded in April, July, and August 1969, and topped the record charts in both the United States and the United Kingdom. A double A-side single from the album, \"Something\" / \"Come Together\", was released in October, which also topped the charts in the US.'),
(2, 'A Night at the Opera', 'Queen', 1975, 'https://th.bing.com/th/id/R.decff97effa15d104410ce2a78b9e099?rik=3LKrchYWJsjmfQ&riu=http%3a%2f%2fbighitsradio.uk%2fwp-content%2fuploads%2f2017%2f08%2fA-Night-at-the-Opera-HD-Revision.jpg&ehk=r9ywcC9wWPzF0MERc6bp68yc%2biV5Xh%2fzMSMBHKz%2fjKo%3d&risl=&pid=ImgRaw&r=0', 'A Night at the Opera is the fourth studio album by the British rock band Queen, released on 21 November 1975 by EMI Records in the United Kingdom and Elektra Records in the United States. Produced by Roy Thomas Baker and Queen, it was reportedly the most expensive album ever recorded at the time of its release.'),
(3, 'The Marshall Mathers LP', 'Eminem', 2000, 'https://images.genius.com/5a31cf4bedbcfe0531ddedb55fb32e1f.1000x1000x1.png', 'The Marshall Mathers LP is the third studio album by the American rapper Eminem, released on May 23, 2000, by Aftermath Entertainment and Interscope Records. The album was produced mostly by Dr. Dre and Eminem, along with the 45 King, the Bass Brothers, and Mel-Man. Recorded over a two-month period in several studios around Detroit, the album features more introspective lyricism, including Eminem\'s thoughts on his rise from rags to riches, the criticism of his music, and his estrangement from his family and wife. A transgressive work, it incorporates horrorcore and hardcore hip hop, while also featuring satirical songs. The album includes samples or appearances by Dido, RBX, Sticky Fingaz, Bizarre, Snoop Dogg, Xzibit, Nate Dogg, and D12.'),
(6, 'Back in Black', 'AC/DC', 1980, 'https://upload.wikimedia.org/wikipedia/commons/9/92/ACDC_Back_in_Black.png', 'Back in Black is the seventh studio album by Australian rock band AC/DC, released by Albert Productions and Atlantic Records on 25 July 1980. It was the band\'s first album to feature Brian Johnson as lead singer, following the death of Bon Scott, their previous vocalist.');

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `ID` int(11) NOT NULL,
  `track_title` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `video_URL` varchar(200) DEFAULT NULL,
  `lyrics` text DEFAULT NULL,
  `albums_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`ID`, `track_title`, `number`, `video_URL`, `lyrics`, `albums_ID`) VALUES
(1, 'Come Together', 1, 'https://www.youtube.com/watch?v=45cYwDMibGo&ab_channel=TheBeatlesVEVO', 'Shoot Me\r\nShoot Me\r\nShoot Me\r\nShoot Me\r\n\r\n[Verse 1]\r\nHere come old flattop. He come grooving up slowly\r\nHe got ju-ju eyeballs. He\'s one holy roller\r\nHe got hair down to his knees\r\nGot to be a joker he just do what he please\r\n\r\n[Verse 2]\r\nHe wear no shoeshine he\'s got toe-jam football\r\nHe got monkey finger he shoot Coca-Cola\r\nHe say \"I know you, you know me\"\r\nOne thing I can tell you is you got to be free\r\nCome together right now over me\r\n\r\n[Verse 3]\r\nHe bag production he got walrus gumboot\r\nHe\'s got Ono sideboard he one spinal cracker\r\nHe got feet down below his knee\r\nHold you in his armchair you can feel his disease\r\nCome together right now over me\r\n\r\nRighhht!\r\n\r\n[Solo 1]\r\n\r\n[Verse 4]\r\nHe roller-coaster he\'s got early warning\r\nHe\'s got muddy water he\'s one mojo filter\r\nHe say \"One and one and one is three\"\r\nGot to be good looking cause he\'s so hard to see\r\nCome together right now over me\r\n\r\nUghh!\r\n\r\n[Solo 2]\r\n\r\n[Outro]\r\nCome together! yeah!\r\nCome together! yeah!\r\nCome together! yeah!\r\n[Repeat over solo until end]', 1),
(2, 'Bohemian Rhapsody', 1, 'https://www.youtube.com/watch?v=fJ9rUzIMcZQ&ab_channel=QueenOfficial', 'Is this the real life? Is this just fantasy?\r\nCaught in a landslide, no escape from reality\r\nOpen your eyes, look up to the skies and see\r\nI\'m just a poor boy, I need no sympathy\r\nBecause I\'m easy come, easy go, little high, little low\r\nAny way the wind blows doesn\'t really matter to me, to me\r\nMama, just killed a man\r\nPut a gun against his head, pulled my trigger, now he\'s dead\r\nMama, life had just begun\r\nBut now I\'ve gone and thrown it all away\r\nMama, ooh, didn\'t mean to make you cry\r\nIf I\'m not back again this time tomorrow\r\nCarry on, carry on as if nothing really matters\r\nToo late, my time has come\r\nSends shivers down my spine, body\'s aching all the time\r\nGoodbye, everybody, I\'ve got to go\r\nGotta leave you all behind and face the truth\r\nMama, ooh (any way the wind blows)\r\nI don\'t wanna die\r\nI sometimes wish I\'d never been born at all\r\nI see a little silhouetto of a man\r\nScaramouche, Scaramouche, will you do the Fandango?\r\nThunderbolt and lightning, very, very frightening me\r\n(Galileo) Galileo, (Galileo) Galileo, Galileo Figaro, magnifico\r\nI\'m just a poor boy, nobody loves me\r\nHe\'s just a poor boy from a poor family\r\nSpare him his life from this monstrosity\r\nEasy come, easy go, will you let me go?\r\nBismillah!\r\nNo, we will not let you go (let him go)\r\nBismillah!\r\nWe will not let you go (let him go)\r\nBismillah!\r\nWe will not let you go (let me go)\r\nWill not let you go (let me go)\r\nNever, never, never, never let me go\r\nNo, no, no, no, no, no, no\r\nOh, mamma mia, mamma mia\r\nMamma mia, let me go\r\nBeelzebub has a devil put aside for me, for me, for me\r\nSo you think you can stone me and spit in my eye?\r\nSo you think you can love me and leave me to die?\r\nOh, baby, can\'t do this to me, baby\r\nJust gotta get out, just gotta get right outta here\r\nOoh\r\nOoh, yeah, ooh, yeah\r\nNothing really matters, anyone can see\r\nNothing really matters\r\nNothing really matters to me\r\n(Any way the wind blows)', 2),
(3, 'God Save the Queen', 2, 'https://www.youtube.com/watch?v=wxjlMd6SHRg&ab_channel=QueenMusicFanPage', NULL, 2),
(4, 'The Real Slim Shady', 1, 'https://www.youtube.com/watch?v=eJO5HU_7_1w&list=PLwYsMv1UuKifp1bAqQ6Wm3LdhCOlQYZAA&index=8&ab_channel=EminemVEVO', 'May I have your attention please?\r\nMay I have your attention please?\r\nWill the real Slim Shady please stand up?\r\nI repeat, will the real Slim Shady please stand up?\r\nWe\'re gonna have a problem here..\r\n\r\nY\'all act like you never seen a white person before\r\nJaws all on the floor like Pam, like Tommy just burst in the door\r\nand started whoopin her ass worse than before\r\nthey first were divorce, throwin her over furniture (Ahh!)\r\nIt\'s the return of the... \"Ah, wait, no way, you\'re kidding,\r\nhe didn\'t just say what I think he did, did he?\"\r\nAnd Dr. Dre said... nothing you idiots!\r\nDr. Dre\'s dead, he\'s locked in my basement! (Ha-ha!)\r\nFeminist women love Eminem\r\n[*vocal turntable: chigga chigga chigga*]\r\n\"Slim Shady, I\'m sick of him\r\nLook at him, walkin around grabbin his you-know-what\r\nFlippin the you-know-who,\" \"Yeah, but he\'s so cute though!\"\r\nYeah, I probably got a couple of screws up in my head loose\r\nBut no worse, than what\'s goin on in your parents\' bedrooms\r\nSometimes, I wanna get on TV and just let loose, but can\'t\r\nbut it\'s cool for Tom Green to hump a dead moose\r\n\"My bum is on your lips, my bum is on your lips\"\r\nAnd if I\'m lucky, you might just give it a little kiss\r\nAnd that\'s the message that we deliver to little kids\r\nAnd expect them not to know what a woman\'s clitoris is\r\nOf course they gonna know what intercourse is\r\nBy the time they hit fourth grade\r\nThey got the Discovery Channel don\'t they?\r\n\"We ain\'t nothing but mammals..\" Well, some of us cannibals\r\nwho cut other people open like cantaloupes [*SLURP*]\r\nBut if we can hump dead animals and antelopes\r\nthen there\'s no reason that a man and another man can\'t elope\r\n[*EWWW!*] But if you feel like I feel, I got the antidote\r\nWomen wave your pantyhose, sing the chorus and it goes\r\n\r\n[Chorus: Eminem (repeat 2X)]\r\n\r\nI\'m Slim Shady, yes I\'m the real Shady\r\nAll you other Slim Shadys are just imitating\r\nSo won\'t the real Slim Shady please stand up,\r\nplease stand up, please stand up?\r\n\r\n[Eminem]\r\nWill Smith don\'t gotta cuss in his raps to sell his records;\r\nwell I do, so fuck him and fuck you too!\r\nYou think I give a damn about a Grammy?\r\nHalf of you critics can\'t even stomach me, let alone stand me\r\n\"But Slim, what if you win, wouldn\'t it be weird?\"\r\nWhy? So you guys could just lie to get me here?\r\nSo you can, sit me here next to Britney Spears?\r\nShit, Christina Aguilera better switch me chairs\r\nso I can sit next to Carson Daly and Fred Durst\r\nand hear \'em argue over who she gave head to first\r\nYou little bitch, put me on blast on MTV\r\n\"Yeah, he\'s cute, but I think he\'s married to Kim, hee-hee!\"\r\nI should download her audio on MP3\r\nand show the whole world how you gave Eminem VD [*AHHH!*]\r\nI\'m sick of you little girl and boy groups, all you do is annoy me\r\nso I have been sent here to destroy you [*bzzzt*]\r\nAnd there\'s a million of us just like me\r\nwho cuss like me; who just don\'t give a fuck like me\r\nwho dress like me; walk, talk and act like me\r\nand just might be the next best thing but not quite me!\r\n\r\n[Chorus]\r\nI\'m Slim Shady, yes I\'m the real Shady\r\nAll you other Slim Shadys are just imitating\r\nSo won\'t the real Slim Shady please stand up,\r\nplease stand up, please stand up?\r\n\r\n[Eminem]\r\nI\'m like a head trip to listen to, cause I\'m only givin you\r\nthings you joke about with your friends inside your living room\r\nThe only difference is I got the balls to say it\r\nin front of y\'all and I don\'t gotta be false or sugarcoated at all\r\nI just get on the mic and spit it\r\nand whether you like to admit it [*ERR*] I just shit it\r\nbetter than ninety percent of you rappers out can\r\nThen you wonder how can kids eat up these albums like valiums\r\nIt\'s funny; cause at the rate I\'m goin when I\'m thirty\r\nI\'ll be the only person in the nursin home flirting\r\nPinchin nurses asses when I\'m jackin off with Jergens\r\nAnd I\'m jerkin but this whole bag of Viagra isn\'t working\r\nAnd every single person is a Slim Shady lurkin\r\nHe could be workin at Burger King, spittin on your onion rings\r\n[*HACH*] Or in the parkin lot, circling\r\nScreaming \"I don\'t give a fuck!\"\r\nwith his windows down and his system up\r\nSo, will the real Shady please stand up?\r\nAnd put one of those fingers on each hand up?\r\nAnd be proud to be outta your mind and outta control\r\nand one more time, loud as you can, how does it go?\r\n\r\n[Chorus 4X]\r\nI\'m Slim Shady, yes I\'m the real Shady\r\nAll you other Slim Shadys are just imitating\r\nSo won\'t the real Slim Shady please stand up,\r\nplease stand up, please stand up?\r\n\r\n[Eminem]\r\nHa ha\r\nGuess there\'s a Slim Shady in all of us\r\nFuck it, let\'s all stand up', 3),
(5, 'Stan', 2, 'https://www.youtube.com/watch?v=gOMhN-hfMtY&list=PLwYsMv1UuKifp1bAqQ6Wm3LdhCOlQYZAA&index=3&ab_channel=EminemVEVO', '[Chorus: Dido]\r\n\r\nMy tea\'s gone cold I\'m wondering why I..\r\ngot out of bed at all\r\nThe morning rain clouds up my window..\r\nand I can\'t see at all\r\nAnd even if I could it\'ll all be gray,\r\nbut your picture on my wall\r\nIt reminds me, that it\'s not so bad,\r\nit\'s not so bad..\r\n\r\n[Eminem as \'Stan\']\r\nDear Slim, I wrote but you still ain\'t callin\r\nI left my cell, my pager, and my home phone at the bottom\r\nI sent two letters back in autumn, you must not-a got \'em\r\nThere probably was a problem at the post office or somethin\r\nSometimes I scribble addresses too sloppy when I jot \'em\r\nbut anyways; fuck it, what\'s been up? Man how\'s your daughter?\r\nMy girlfriend\'s pregnant too, I\'m bout to be a father\r\nIf I have a daughter, guess what I\'ma call her?\r\nI\'ma name her Bonnie\r\nI read about your Uncle Ronnie too I\'m sorry\r\nI had a friend kill himself over some bitch who didn\'t want him\r\nI know you probably hear this everyday, but I\'m your biggest fan\r\nI even got the underground shit that you did with Skam\r\nI got a room full of your posters and your pictures man\r\nI like the shit you did with Rawkus too, that shit was fat\r\nAnyways, I hope you get this man, hit me back,\r\njust to chat, truly yours, your biggest fan\r\nThis is Stan\r\n\r\n[Chorus: Dido]\r\n\r\n[Eminem as \'Stan\']\r\nDear Slim, you still ain\'t called or wrote, I hope you have a chance\r\nI ain\'t mad - I just think it\'s FUCKED UP you don\'t answer fans\r\nIf you didn\'t wanna talk to me outside your concert\r\nyou didn\'t have to, but you coulda signed an autograph for Matthew\r\nThat\'s my little brother man, he\'s only six years old\r\nWe waited in the blistering cold for you,\r\nfour hours and you just said, \"No.\"\r\nThat\'s pretty shitty man - you\'re like his fuckin idol\r\nHe wants to be just like you man, he likes you more than I do\r\nI ain\'t that mad though, I just don\'t like bein lied to\r\nRemember when we met in Denver - you said if I\'d write you\r\nyou would write back - see I\'m just like you in a way\r\nI never knew my father neither;\r\nhe used to always cheat on my mom and beat her\r\nI can relate to what you\'re saying in your songs\r\nso when I have a shitty day, I drift away and put \'em on\r\ncause I don\'t really got shit else so that shit helps when I\'m depressed\r\nI even got a tattoo of your name across the chest\r\nSometimes I even cut myself to see how much it bleeds\r\nIt\'s like adrenaline, the pain is such a sudden rush for me\r\nSee everything you say is real, and I respect you cause you tell it\r\nMy girlfriend\'s jealous cause I talk about you 24/7\r\nBut she don\'t know you like I know you Slim, no one does\r\nShe don\'t know what it was like for people like us growin up\r\nYou gotta call me man, I\'ll be the biggest fan you\'ll ever lose\r\nSincerely yours, Stan -- P.S.\r\nWe should be together too\r\n\r\n[Chorus: Dido]\r\n\r\n[Eminem as \'Stan\']\r\nDear Mister-I\'m-Too-Good-To-Call-Or-Write-My-Fans,\r\nthis\'ll be the last package I ever send your ass\r\nIt\'s been six months and still no word - I don\'t deserve it?\r\nI know you got my last two letters;\r\nI wrote the addresses on \'em perfect\r\nSo this is my cassette I\'m sending you, I hope you hear it\r\nI\'m in the car right now, I\'m doing 90 on the freeway\r\nHey Slim, I drank a fifth of vodka, you dare me to drive?\r\nYou know the song by Phil Collins, \"In the Air of the Night\"\r\nabout that guy who coulda saved that other guy from drowning\r\nbut didn\'t, then Phil saw it all, then at a a show he found him?\r\nThat\'s kinda how this is, you coulda rescued me from drowning\r\nNow it\'s too late - I\'m on a 1000 downers now, I\'m drowsy\r\nand all I wanted was a lousy letter or a call\r\nI hope you know I ripped +ALL+ of your pictures off the wall\r\nI love you Slim, we coulda been together, think about it\r\nYou ruined it now, I hope you can\'t sleep and you dream about it\r\nAnd when you dream I hope you can\'t sleep and you SCREAM about it\r\nI hope your conscience EATS AT YOU and you can\'t BREATHE without me\r\nSee Slim; [*screaming*] Shut up bitch! I\'m tryin to talk!\r\nHey Slim, that\'s my girlfriend screamin in the trunk\r\nbut I didn\'t slit her throat, I just tied her up, see I ain\'t like you\r\ncause if she suffocates she\'ll suffer more, and then she\'ll die too\r\nWell, gotta go, I\'m almost at the bridge now\r\nOh shit, I forgot, how\'m I supposed to send this shit out?\r\n[*car tires squeal*] [*CRASH*]\r\n.. [*brief silence*] .. [*LOUD splash*]\r\n\r\n[Chorus: Dido]\r\n\r\n[Eminem]\r\nDear Stan, I meant to write you sooner but I just been busy\r\nYou said your girlfriend\'s pregnant now, how far along is she?\r\nLook, I\'m really flattered you would call your daughter that\r\nand here\'s an autograph for your brother,\r\nI wrote it on the Starter cap\r\nI\'m sorry I didn\'t see you at the show, I musta missed you\r\nDon\'t think I did that shit intentionally just to diss you\r\nBut what\'s this shit you said about you like to cut your wrists too?\r\nI say that shit just clownin dogg,\r\nc\'mon - how fucked up is you?\r\nYou got some issues Stan, I think you need some counseling\r\nto help your ass from bouncing off the walls when you get down some\r\nAnd what\'s this shit about us meant to be together?\r\nThat type of shit\'ll make me not want us to meet each other\r\nI really think you and your girlfriend need each other\r\nor maybe you just need to treat her better\r\nI hope you get to read this letter, I just hope it reaches you in time\r\nbefore you hurt yourself, I think that you\'ll be doin just fine\r\nif you relax a little, I\'m glad I inspire you but Stan\r\nwhy are you so mad? Try to understand, that I do want you as a fan\r\nI just don\'t want you to do some crazy shit\r\nI seen this one shit on the news a couple weeks ago that made me sick\r\nSome dude was drunk and drove his car over a bridge\r\nand had his girlfriend in the trunk, and she was pregnant with his kid\r\nand in the car they found a tape, but they didn\'t say who it was to\r\nCome to think about, his name was.. it was you\r\nDamn!', 3),
(6, 'Back In Black', 1, 'https://www.youtube.com/watch?v=pAgnJDJN4VA&ab_channel=acdcVEVO', 'Back in black\r\nI hit the sack\r\nI\'ve been too long, I\'m glad to be back\r\nYes, I am\r\nLet loose from the noose\r\nThat\'s kept me hanging about\r\n\r\nI keep looking at the sky cause it\'s gettin\' me high\r\nForget the hearse cause I\'ll never die\r\nI got nine lives\r\nCat\'s eyes\r\nAbusin\' every one of them and running wild\r\n\r\nCause I\'m back\r\nYes, I\'m back\r\nWell, I\'m back\r\nYes, I\'m back\r\nWell, I\'m\r\nBack\r\nBack\r\nWell, I\'m back in black\r\nYes, I\'m back in black, yow\r\n\r\nBack in the back of a Cadillac\r\nNumber one with a bullet, I\'m a power pack\r\nYes, I am\r\nIn a bang with the gang\r\nThey gotta catch me if they want me to hang\r\n\r\nCause I\'m back on the track and I\'m beatin\' the flack\r\nNobody\'s gonna get me on another rap\r\nSo look at me now\r\nI\'m just makin\' my play\r\nDon\'t try to push your luck, just get out of my way\r\n\r\nCause I\'m back\r\nYes, I\'m back\r\nWell, I\'m back\r\nYes, I\'m back\r\nWell, I\'m\r\nBack\r\nBack\r\nWell, I\'m back in black\r\nYes, I\'m back in black\r\n\r\nWell, I\'m back\r\nYes, I\'m back\r\nWell, I\'m back\r\nYes, I\'m back\r\nWell, I\'m\r\nBack\r\nBack\r\nWell, I\'m back in black\r\nYes, I\'m back in black, ow\r\n\r\nOh yeah\r\nOh yeah\r\nYes, I am\r\nHey, yeah\r\nYeah\r\nOh yeah\r\nBack in now\r\n\r\nWell, I\'m\r\nBack (I\'m back)\r\nBack (I\'m back)\r\nBack (I\'m back)\r\nBack (I\'m back)\r\nBack (I\'m back)\r\nBack (I\'m back)\r\nBack in black\r\nYes, I\'m back in black\r\n\r\nOut of sight', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_tracks_albums_idx` (`albums_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tracks`
--
ALTER TABLE `tracks`
  ADD CONSTRAINT `fk_tracks_albums` FOREIGN KEY (`albums_ID`) REFERENCES `albums` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
