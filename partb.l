%option noyywrap

WC [A-Za-z']
NW [^A-Za-z']

%%
"lol" printf("laughing out loud");
"lmao" printf("laughing my ass off");
"brb" printf("be right back");
"wtw" printf("what's the word");
"lmk" printf("let me know");
"eta" printf("estimated time of arrival");
"sry" printf("sorry");
"np" printf("no problem");
"thx" printf("thanks");
"tysm" printf("thank you so much");
"imo" printf("in my opinon");
"fyi" printf("for your information");
"idk" printf("i don't know");
"idc" printf("i don't care");
"irl" printf("in real life");
"bff" printf("best friend forever");
"bffr" printf("be freaking for real");
