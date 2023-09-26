1 POKE 646, 7
10 PRINT "welcome to the number guessing game!"
20 PRINT "i'm thinking of a number between 1 and 100."
30 PRINT "can you guess it?"
40 PRINT
50 SECRET = INT(RND(1) * 100) + 1
60 GUESS = 0
70 PRINT "enter your guess:";
80 INPUT GUESS
90 IF GUESS < 1 OR GUESS > 100 THEN PRINT "please enter a number between 1 and 100.": GOTO 70
100 IF GUESS = SECRET THEN PRINT "congratulations! you guessed it.": END
110 IF GUESS < SECRET THEN PRINT "try a higher number.": GOTO 70
120 IF GUESS > SECRET THEN PRINT "try a lower number.": GOTO 70
