//Mhoram NPC v1.0
//Clan Dlan


BEGIN ~MHORAM~

  IF ~NumTimesTalkedTo(0)~  THEN BEGIN 1
     SAY @0
     =
     @1
     =
     @2
      IF ~~ THEN REPLY @3 GOTO 2
      IF ~~ THEN REPLY @4 GOTO 3
  END

  IF ~~ THEN BEGIN 2
     SAY @5
     =
     @6
     =
     @7
     =
     @8
     IF ~~ THEN REPLY @9 DO ~JoinParty() GivePartyGold(250)~
     JOURNAL @10 EXIT
     IF ~~ THEN REPLY @11 GOTO 4
  END

  IF ~~ THEN BEGIN 3
     SAY @12
     IF ~~ THEN REPLY @13 GOTO 2
     IF ~~ THEN REPLY @14 GOTO 4
  END

  IF ~~ THEN BEGIN 4
     SAY @15
     IF~~ THEN DO ~EscapeArea()~ EXIT
  END

  IF ~NumTimesTalkedToGT(0)
  !InParty(Myself)
  Global("Diastro","GLOBAL",0)~ THEN BEGIN 5
     SAY @16
     IF ~~ THEN REPLY @17 DO ~JoinParty()~ EXIT
     IF ~~ THEN REPLY @18 GOTO 7
  END

  IF ~NumTimesTalkedToGT(0)
  InParty(Myself) 
  Global("Diastro","GLOBAL",0)~ THEN BEGIN 6
     SAY @19
     IF ~~ THEN DO ~SetGlobal("Diastro","GLOBAL",2) AddexperienceParty(25000)~ JOURNAL @20 EXIT
  END

  IF ~~ THEN BEGIN 7
     SAY @21
     IF ~~ THEN DO ~EscapeArea()~ EXIT
  END

  IF ~NumTimesTalkedToGT(0)
  !InParty(Myself)
  Global("Diastro","GLOBAL",2) ~THEN BEGIN 8
     SAY @22
     IF ~~ THEN REPLY @23 DO ~JoinParty()~ EXIT
     IF ~~ THEN REPLY @24 GOTO 9
  END
  
  IF ~~ THEN BEGIN 9
     SAY @25
     IF ~~ THEN DO ~EscapeAreaMove("ar0511",988,553,10) SetGlobal("Unido","GLOBAL",1)~ EXIT
     END




