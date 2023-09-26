10 POKE 646, 7
11 PRINT TAB(6);"acey ducey card game"
12 POKE 646, 10
20 PRINT TAB(7);"creative computing"
21 PRINT TAB(6); "morristown, new jersey"
22 PRINT TAB(1);"transcribed by jrj via david ahl"
23 PRINT
26 POKE 646, 5
30 PRINT "acey ducey is played in the following"
40 PRINT "manner: the dealer (computer) deals two"
50 PRINT "cards face up. you have an option to"
60 PRINT "bet or not bet depending on whether or"
66 PRINT "not you feel the card will have a value"
70 PRINT "between the first two."
80 PRINT "if you do not want to bet, input a 0."
100 N=100
110 Q=100
120 PRINT "you now have ";Q;" dollars."
130 PRINT
140 GOTO 260
210 Q=Q+M
220 GOTO 120
240 Q=Q-M  
250 GOTO 250
260 PRINT "here are your next two cards:"
270 A=INT(14*RND(1))+2
280 IF A<2 THEN 270
290 IF A>14 THEN 270
300 B=INT(14*RND(1))+2
310 IF B<2 THEN 300
320 IF B>14 THEN 300
330 IF A>=B THEN 270
350 IF A<11 THEN 400
360 IF A=11 THEN 420
370 IF A=12 THEN 440
380 IF A=13 THEN 460
390 IF A=14 THEN 480
400 PRINT A
410 GOTO 500
420 PRINT "jack"
430 GOTO 500
440 PRINT "queen"
450 GOTO 500
460 PRINT "king"
470 GOTO 500
480 PRINT "ace"
500 IF B<11 THEN 550
510 IF B=11 THEN 570
520 IF B=12 THEN 590
530 IF B=13 THEN 610
540 IF B=14 THEN 630
550 PRINT B
560 GOTO 650
570 PRINT "jack"
580 GOTO 650
590 PRINT "queen"
600 GOTO 650
610 PRINT "king"
620 GOTO 650
630 PRINT "ace"
640 PRINT
650 PRINT
660 INPUT "what is your bet";M
670 IF M<>0 THEN 680
675 PRINT "chicken!!"
676 PRINT
677 GOTO 260
680 IF M<Q+1 THEN 730
690 PRINT "sorry my friend but you bet too much"
700 PRINT "you have only ";Q;" dollars to bet"
710 GOTO 650
730 C=INT(14*RND(1))+2
740 IF C<2 THEN 730
750 IF C>14 THEN 810
760 IF C<11 THEN 830
770 IF C=11 THEN 830
780 IF C=12 THEN 850
790 IF C=13 THEN 870
800 IF C=14 THEN 890
810 PRINT C
820 GOTO 910
830 PRINT "jack"
840 GOTO 910
850 PRINT "queen"
860 GOTO 910
870 PRINT "king"
880 GOTO 910
890 PRINT "ace"
900 PRINT
910 IF C>A THEN 930
920 GOTO 970
930 IF C>=B THEN 970
950 PRINT "you win!!!"
960 GOTO 210
970 PRINT "sorry, you lose"
980 IF M<Q THEN 990
990 PRINT
1000 Q=Q-M
1005 IF Q=0 THEN 1040
1010 INPUT "try again (yes or no)";A$
1020 IF A$="yes" THEN 120
1030 IF A$="no" THEN 1040
1040 PRINT "you leave with ";Q;" dollars."
1041 POKE 646, 7
1042 PRINT "hope you had fun"
1046 POKE 646, 5
1050 END
