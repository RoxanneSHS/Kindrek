BEGIN KIND25P



IF ~Global("KindrekJoined","LOCALS",1)~ THEN BEGIN KindrekBoot
  SAY @0
  ++ @1 DO ~JoinParty()~ EXIT
  ++ @2 GOTO KindrekBoot1a
END

IF ~~ THEN BEGIN KindrekBoot1a
  SAY @3
  IF ~~ THEN DO ~SetGlobal("KindrekJoined","LOCALS",0)SetGlobal("KindrekKickedOut","LOCALS",1)EscapeAreaMove("AR4500",869,395,7)~
EXIT
END



IF ~Global("KindrekJoined","LOCALS",0)
    Global("KindrekKickedOut","LOCALS",1)~ THEN BEGIN KindrekRejoin
  SAY @4
  ++ @5 DO ~SetGlobal("KindrekJoined","LOCALS",1)JoinParty()~ EXIT
  ++ @6 GOTO KindrekRejoin1a
END

IF ~~ THEN BEGIN KindrekRejoin1a
  SAY @7
  IF ~~ THEN EXIT
END
