BEGIN KINDRE25



IF ~NumTimesTalkedTo(0)~ THEN BEGIN KindrekMeetTOB
 SAY @0
=
@1
=
@2  
 ++ @3 GOTO KindrekMeetTOB1a
 ++ @4 GOTO KindrekMeetTOB2a
 ++ @5 GOTO KindrekMeetTOB3a
 ++ @6 GOTO KindrekMeetTOB4a
 ++ @7 GOTO KindrekMeetTOB5a
END

IF ~~ THEN BEGIN KindrekMeetTOB1a
 SAY @8
 ++ @9 GOTO KindrekMeetTOB1b
 ++ @10 GOTO KindrekMeetTOB1c
 ++ @11 GOTO KindrekMeetTOB1d
END

IF ~~ THEN BEGIN KindrekMeetTOB1b
 SAY @12
 IF ~~ THEN DO ~SetGlobal("KindrekJoined","LOCALS",1)JoinParty()~
EXIT
END

IF ~~ THEN BEGIN KindrekMeetTOB1c
 SAY @13
 ++ @14 GOTO KindrekMeetTOB1e
 ++ @15 GOTO KindrekMeetTOB1e
 ++ @16 GOTO KindrekMeetTOB1e
END

IF ~~ THEN BEGIN KindrekMeetTOB1d
 SAY @17
 IF ~~ THEN DO ~EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN KindrekMeetTOB1e
 SAY @18
=
 @19
 ++ @20 GOTO KindrekMeetTOB1f
 ++ @21 GOTO KindrekMeetTOB1f
 ++ @22 GOTO KindrekMeetTOB1g
END

IF ~~ THEN BEGIN KindrekMeetTOB1f
 SAY @23
=
 @24
=
 @25
 ++ @26 GOTO KindrekMeetTOB1h
 ++ @27 GOTO KindrekMeetTOB1b
END

IF ~~ THEN BEGIN KindrekMeetTOB1g
 SAY @28
 ++ @29 GOTO KindrekMeetTOB1i
 ++ @30 GOTO KindrekMeetTOB1j
END

IF ~~ THEN BEGIN KindrekMeetTOB1h
 SAY @31
=
 @32
=
 @33
 ++ @34 GOTO KindrekMeetTOB1k
 ++ @35 GOTO KindrekMeetTOB1j
 ++ @36 GOTO KindrekMeetTOB1d
 ++ @37 GOTO KindrekMeetTOB1b
 ++ @38 GOTO KindrekMeetTOB1m
END

IF ~~ THEN BEGIN KindrekMeetTOB1i
 SAY @39
 ++ @9 GOTO KindrekMeetTOB1b
 ++ @10 GOTO KindrekMeetTOB1c
 ++ @11 GOTO KindrekMeetTOB1d
END

IF ~~ THEN BEGIN KindrekMeetTOB1j
 SAY @40
 IF ~~ THEN DO ~Enemy()EquipMostDamagingMelee()Attack(LastSeenBy())~
EXIT
END

IF ~~ THEN BEGIN KindrekMeetTOB1k
 SAY @41
=
 @42
=
 @43
 ++ @44 GOTO KindrekMeetTOB1l
END

IF ~~ THEN BEGIN KindrekMeetTOB1l
 SAY @45
 ++ @46 GOTO KindrekMeetTOB1b
 ++ @47 GOTO KindrekMeetTOB1m
END

IF ~~ THEN BEGIN KindrekMeetTOB1m
 SAY @48
 ++ @49 EXIT
 ++ @50 GOTO KindrekMeetTOB1b
END

IF ~~ THEN BEGIN KindrekMeetTOB2a
 SAY @51
 ++ @9 GOTO KindrekMeetTOB1b
 ++ @10 GOTO KindrekMeetTOB1c
 ++ @11 GOTO KindrekMeetTOB1d
END

IF ~~ THEN BEGIN KindrekMeetTOB3a
 SAY @52
 ++ @53 GOTO KindrekMeetTOB3b
 ++ @54 GOTO KindrekMeetTOB3c
END

IF ~~ THEN BEGIN KindrekMeetTOB3b
 SAY @49
 IF ~~ THEN DO ~EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN KindrekMeetTOB3c
 SAY @55
 ++ @56 GOTO KindrekMeetTOB1f
 ++ @57 GOTO KindrekMeetTOB1j
END

IF ~~ THEN BEGIN KindrekMeetTOB4a
 SAY @58
=
 @59
 ++ @9 GOTO KindrekMeetTOB1b
 ++ @10 GOTO KindrekMeetTOB1c
 ++ @11 GOTO KindrekMeetTOB1d
END

IF ~~ THEN BEGIN KindrekMeetTOB5a
 SAY @60
=
 @59
 ++ @9 GOTO KindrekMeetTOB1b
 ++ @10 GOTO KindrekMeetTOB1c
 ++ @11 GOTO KindrekMeetTOB1d
END
