Last login: Mon Apr 15 15:28:58 on ttys000
raji@Nithis-MacBook-Pro ~ % nvickraman@hopper.slu.edu
zsh: command not found: nvickraman@hopper.slu.edu
raji@Nithis-MacBook-Pro ~ % ssh nvickraman@hopper.slu.edu
(nvickraman@hopper.slu.edu) Password: 
(nvickraman@hopper.slu.edu) Password: 
                                   
  /\  /\___  _ __  _ __   ___ _ __ 
 / /_/ / _ \| '_ \| '_ \ / _ \ '__|
/ __  / (_) | |_) | |_) |  __/ |   
\/ /_/ \___/| .__/| .__/ \___|_|   
            |_|   |_|              
Last failed login: Tue Apr 16 00:05:54 CDT 2024 from 12.170.192.96 on ssh:notty
There was 1 failed login attempt since the last successful login.
Last login: Mon Apr 15 15:30:36 2024 from 10.178.14.23
[nvickraman@h5 ~]$ ls
Backup   Documents  Music     ProgLang  Share      Videos
Desktop  Downloads  Pictures  Public    Templates  www
[nvickraman@h5 ~]$ cd ProgLang
[nvickraman@h5 ProgLang]$ ls
chef.l  lex.yy.c  partb.l
[nvickraman@h5 ProgLang]$ vi chef.l


<INW>"ew"       { BEGIN INW; printf("oo"); }
<INW>"e"/{NW}   { BEGIN INW; printf("e-a"); }
<NIW>"e"        { BEGIN INW; printf("i"); }
<NIW>"E"        { BEGIN INW; printf("I"); }
<INW>"f"        { BEGIN INW; printf("ff"); }
<INW>"ir"       { BEGIN INW; printf("ur"); }
<INW>"i"        { BEGIN INW; printf(i_seen++ ? "i" : "ee"); }
<INW>"ow"       { BEGIN INW; printf("oo"); }
<NIW>"o"        { BEGIN INW; printf("oo"); }
<NIW>"O"        { BEGIN INW; printf("Oo"); }
<INW>"o"        { BEGIN INW; printf("u"); }
"the"           { BEGIN INW; printf("zee"); }
"The"           { BEGIN INW; printf("Zee"); }
"th"/{NW}       { BEGIN INW; printf("t"); }
<INW>"tion"     { BEGIN INW; printf("shun"); }
<INW>"u"        { BEGIN INW; printf("oo"); }
<INW>"U"        { BEGIN INW; printf("Oo"); }
"v"             { BEGIN INW; printf("f"); }
"V"             { BEGIN INW; printf("F"); }
"w"             { BEGIN INW; printf("v"); }
"W"             { BEGIN INW; printf("V"); }
.               { BEGIN INW; ECHO; } //this prints anything that isn't caught by a rule above.
                                                              64,2-8        Bot
