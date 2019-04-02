BEGIN KINDREKP



IF ~Global("KKLeftSpellhold","LOCALS",1)~ THEN BEGIN KindrekSated
SAY @0
++ @1 GOTO KindrekSated1
++ @2 GOTO KindrekSated2
++ @3 GOTO KindrekSated3
++ @4 GOTO KindrekSated4
END

IF ~~ THEN BEGIN KindrekSated1
SAY @5
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN KindrekSated2
SAY @6
++ @7 GOTO KindrekSated3
++ @8 GOTO KindrekSated1
END

IF ~~ THEN BEGIN KindrekSated3
SAY @9
IF ~~ THEN DO ~JoinParty()SetGlobal("KKLeftSpellhold","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN KindrekSated4
SAY @10
IF ~~ THEN DO ~JoinParty()SetGlobal("KKLeftSpellhold","LOCALS",2)~ EXIT
END



IF ~Global("KindrekJoined","LOCALS",1)~ THEN BEGIN KindrekBoot
  SAY @11  
  ++ @12 DO ~JoinParty()~ EXIT
  ++ @13 GOTO KindrekBoot1a
END

IF ~~ THEN BEGIN KindrekBoot1a
  SAY @14
  =
  @15
  IF ~~ THEN DO ~SetGlobal("KindrekJoined","LOCALS",0)SetGlobal("KindrekKickedOut","LOCALS",1)EscapeAreaMove("AR0020",869,395,7)~
EXIT
END



IF ~Global("KindrekJoined","LOCALS",0)
    Global("KindrekKickedOut","LOCALS",1)~ THEN BEGIN KindrekRejoin
  SAY @16  
  ++ @17 DO ~SetGlobal("KindrekJoined","LOCALS",1)JoinParty()~ EXIT
  ++ @18 GOTO KindrekRejoin1a
END

IF ~~ THEN BEGIN KindrekRejoin1a
  SAY @19
  IF ~~ THEN EXIT
END