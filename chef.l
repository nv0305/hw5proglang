static int i_seen = 0; // this block is declaring a new int i_seen that we'll use later
%}

WC              [A-Za-z'] // word characters and nonword characters
NW              [^A-Za-z']

%start          INW NIW // here we are defining start conditions of in word or not in word

%%
 // rules start here

\\[^ \n]+       ECHO; // anything starting with a backslash is unchaged

{NW}            { BEGIN NIW; i_seen = 0; ECHO; } //  if you encounter a nonword character, echo character, reset 'i', and switch to NIW
[.!?]$          { BEGIN NIW; i_seen = 0;
                  printf("%c\nBork Bork Bork!",yytext[0]); } // at the end of a sentence, append bork bork bork

<NIW>"bork"/{NW} ECHO;
<NIW>"Bork"/{NW} ECHO;
// these catch certain exceptions to provide the mock Swedish effect of Swedish Chef
"an"            { BEGIN INW; printf("un"); }
"An"            { BEGIN INW; printf("Un"); }
"au"            { BEGIN INW; printf("oo"); }
"Au"            { BEGIN INW; printf("Oo"); }
"a"/{WC}        { BEGIN INW; printf("e"); }
"A"/{WC}        { BEGIN INW; printf("E"); }
"en"/{NW}       { BEGIN INW; printf("ee"); }
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
~                                                                                                                                                                                                           
~                             
