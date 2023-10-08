grammar immersion;

*Parsers
*/

*
Below is the parser for soundscape.
*/
soundscapeblock : SOUNDSCAPE NAME
(CUTSCENE NAME)?
(ENTER NAME (coord)? NAME?)?
(BACKGROUND NAME)?
(STEP NAME)?
objectlist
(SIZE NUMBER)?
(NEXT NAME)?
END NAME ;

*
Below is the Parser rule for a list of mp3 files.
*/
SOUNDPAIR : (NAME NAME)+* ;

*
Below is the parser for cutscene 
CUTSCENE : (NAME WHITESPACE)? ;

*
Below is the parser for enter.
*/
ENTER : (NAME WHITESPACE)? ;

*
Below is the parser for exit.
*/
EXIT : (NAME WHITESPACE)? ;

*
Below is the parser for background.
*/
BACKGROUND : (NAME WHITESPACE)? ;

*
Below is the parser for move.
*/
 (NUMBER STEP NAME WHITESPACE)? ;

*
I wasn't sure if i would need this as i mentioned it above but added it incase.
*/
*
Below is the parser for step.
*/
STEP : NAME ;

*
Below is the parser for interact.
*/
INTERACT : (NAME WHITESPACE)? ;

*
Below is the parser for loop.
*/
LOOP : (NUMBER WHITESPACE)? ;

*
Below is the parser for soundscapesize.
*/
SOUNDSCAPESIZE : (coord WHITESPACE) ;

*
Below is the parser for Coord.
*/
coord : NUMBER NUMBER ;

*
Below is the parser for entrance.
*/
ENTRANCE : (NAME WHITESPACE)? ;

*
Below is the parser for exitdoor.
*/
EXITDOOR : (NAME WHITESPACE)? ;

*
Below is the parser for nextsoundscape.
*/
NEXTSOUNDSCAPE : (NAME WHITESPACE)? ;

*
Below is the parser for key.
*/
KEY : (NAME INVENTORY WHITESPACE)? ;

*
Below is the parser for jingle.
*/
JINGLE : )NAME WHITESPACE)? ;

*
Below is the parser for Menu.
menublock : MENU NAME
(START NAME)?
(CONTINUE NAME)?
(CANCEL NAME)?
(CLICK NAME)?
(BACKGROUND NAME)?
END NAME ;

*
Below is the parser for start.
*/
START : (NAME WHITESPACE)? ;

*
Below is the parser for click.
*/
CLICK : (NAME WHITESPACE)? ;

*
Below is the parser for save.
*/
SAVE : (NAME WHITESPACE)? ;

*
Below is the parser for item.
*/
ITEM : (NAME WHITESPACE)? ;

*
Below is the parser for continue.
CONTINUE : (NAME WHITESPACE)? ;

*
Below is the parser for cancel.
*/
CANCEL : (NAME WHITESPACE)? ;

*
Below is the parser for inventory.
*/
INVENTORY : (NAME WHITESPACE)? ;

*
LEXERS.
*/
*Below is the Lexer for NAME.
*/
NAME : [a-z|A-Z] [a-z|A-Z_0-9]*;

*Below is the Lexer for Number.
*/
NUMBER : '-'? ('0' | [1-9][0-9]*);

*Below is the Lexer for white space.
*/
WHITESPACE : ' ' -> skip;

*Below is a list of tokens
*/

SOUND		: 'SOUND' ;
SOUNDPAIR		: 'SOUNDPAIR' ;
SOUNDSCAPE		 : 'SOUNDSCAPE' | 'SS' ;
CUTSCENE		 : 'CUTSCENE' | 'CS' ;
BACKGROUND		 : 'BACKGROUND' | 'BG' ;
MOVE		 : 'MOVE' ;
STEP		 : 'STEP' ;
ENTER		 : 'ENTER' ;
EXIT		 : 'EXIT' ;
INVENTORY		 : 'INVENTORY' ;
INTERACT		 : 'INTERACT' ;
LOOP		 : 'LOOP[' ;
SOUNDSCAPESIZE		 : 'SOUNDSCAPESIZE' | 'SSS' ;
ENTRENCE		 : 'ENTRENCE' ;
EXITDOOR		 : 'EXITDOOR' | 'ED' ;
NEXTSOUNDSCAPE		 : 'NEXTSOUNDSCAPE' | 'NSS' ;
KEY		 : 'KEY' ;
END		 : 'END' ;
JINGLE		 : 'JINGLE' ;
MENU		 : 'MENU' ;
ENDMENU		: 'ENDMENU' | 'EM' ;
ITEMS		 : 'ITEMS' ;
ENDITEMS		 : 'ENDITEMS' |'EI' ;
CLICK		 : 'CLICK' ;
SAVE		 : 'SAVE' ;
CONTINUE		 : 'CONTINUE' ;
CANCEL		 : 'CANCEL' ;
QUIT		 : 'QUIT' ;
