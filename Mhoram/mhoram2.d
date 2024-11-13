BEGIN ~Mhoram2~

IF ~Global("Unido","GLOBAL",1)~ THEN BEGIN 10
     SAY @0
     IF ~~ THEN REPLY @1 DO ~JoinParty() SetGlobal("Diastro","GLOBAL",2)~ EXIT
     IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @3
   IF ~~ THEN DO ~EscapeArea()~ EXIT
END
   
