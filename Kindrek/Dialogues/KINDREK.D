BEGIN KINDREK



IF ~Global("KKButcherRejection","LOCALS",1)~ THEN BEGIN KKButcherRejection
SAY @0
++ @1 GOTO KKButcherRejection1
++ @2 GOTO KKButcherRejection2
++ @3 GOTO KKButcherRejection3
++ @4 GOTO KKButcherRejection4
++ @5 GOTO KKButcherRejection5
END

IF ~~ THEN BEGIN KKButcherRejection1
SAY @6
IF ~~ THEN DO ~Enemy()EquipMostDamagingMelee()Attack(LastSeenBy())~
EXIT
END

IF ~~ THEN BEGIN KKButcherRejection2
SAY @7
IF ~~ THEN DO ~SetGlobal("KindrekJoined","LOCALS",1)JoinParty()~
EXIT
END

IF ~~ THEN BEGIN KKButcherRejection3
SAY @8
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN KKButcherRejection4
SAY @9
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN KKButcherRejection5
SAY @10
IF ~~ THEN DO ~SetGlobal("KKButcherRejection","LOCALS",2)SetGlobal("KKNiceRejection","LOCALS",1)~ EXIT
END



IF ~NumTimesTalkedTo(0)~ THEN BEGIN KindrekMeet
 SAY @11  
 ++ @12 GOTO KindrekMeet1a
 ++ @13 GOTO KindrekMeet2a
 ++ @14 GOTO KindrekMeet3a
 ++ @15 GOTO KindrekMeet4a
 ++ @16 GOTO KindrekMeet5a
END

IF ~~ THEN BEGIN KindrekMeet1a
 SAY @17
 ++ @18 GOTO KindrekMeet1b
 ++ @19 GOTO KindrekMeet1c
 ++ @20 GOTO KindrekMeet1d
END

IF ~~ THEN BEGIN KindrekMeet1b
 SAY @21
 IF ~~ THEN DO ~SetGlobal("KindrekJoined","LOCALS",1)JoinParty()~
EXIT
END

IF ~~ THEN BEGIN KindrekMeet1c
 SAY @22
 ++ @23 GOTO KindrekMeet1e
 ++ @24 GOTO KindrekMeet1e
 ++ @25 GOTO KindrekMeet1e
END

IF ~~ THEN BEGIN KindrekMeet1d
 SAY @26
 IF ~~ THEN DO ~SetGlobal("KKButcherRejection","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN KindrekMeet1e
 SAY @27
=
 @28
 ++ @29 GOTO KindrekMeet1f
 ++ @30 GOTO KindrekMeet1f
 ++ @31 GOTO KindrekMeet1g
END

IF ~~ THEN BEGIN KindrekMeet1f
 SAY @32
=
 @33
=
 @34
 ++ @35 GOTO KindrekMeet1h
 ++ @36 GOTO KindrekMeet1b
END

IF ~~ THEN BEGIN KindrekMeet1g
 SAY @37
 ++ @38 GOTO KindrekMeet1i
 ++ @39 GOTO KindrekMeet1j
END

IF ~~ THEN BEGIN KindrekMeet1h
 SAY @40
=
 @41
=
 @42
 ++ @43 GOTO KindrekMeet1k
 ++ @44 GOTO KindrekMeet1j
 ++ @45 GOTO KindrekMeet1d
 ++ @46 GOTO KindrekMeet1b
 ++ @47 GOTO KindrekMeet1n
END

IF ~~ THEN BEGIN KindrekMeet1i
 SAY @48
 ++ @18 GOTO KindrekMeet1b
 ++ @19 GOTO KindrekMeet1c
 ++ @20 GOTO KindrekMeet1d
END

IF ~~ THEN BEGIN KindrekMeet1j
 SAY @49
 IF ~~ THEN DO ~Enemy()EquipMostDamagingMelee()Attack(LastSeenBy())~
EXIT
END

IF ~~ THEN BEGIN KindrekMeet1k
 SAY @50
=
 @51
=
 @52
 ++ @53 GOTO KindrekMeet1l
END

IF ~~ THEN BEGIN KindrekMeet1l
 SAY @54
 ++ @55 GOTO KindrekMeet1b
 ++ @56 GOTO KindrekMeet1m
END

IF ~~ THEN BEGIN KindrekMeet1m
 SAY @57
 IF ~~ THEN DO ~SetGlobal("KKNiceRejection","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN KindrekMeet1n
SAY @58
 ++ @18 GOTO KindrekMeet1b
 ++ @59 GOTO KindrekMeet1c
 ++ @20 GOTO KindrekMeet1d
END

IF ~~ THEN BEGIN KindrekMeet2a
 SAY @60
 ++ @18 GOTO KindrekMeet1b
 ++ @19 GOTO KindrekMeet1c
 ++ @20 GOTO KindrekMeet1d
END

IF ~~ THEN BEGIN KindrekMeet3a
 SAY @61
 ++ @62 GOTO KindrekMeet3b
 ++ @63 GOTO KindrekMeet3c
END

IF ~~ THEN BEGIN KindrekMeet3b
 SAY @64
 IF ~~ THEN DO ~SetGlobal("KKNiceRejection","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN KindrekMeet3c
 SAY @65
 ++ @66 GOTO KindrekMeet1f
 ++ @67 GOTO KindrekMeet1j
END

IF ~~ THEN BEGIN KindrekMeet4a
 SAY @68
=
 @69
 ++ @18 GOTO KindrekMeet1b
 ++ @19 GOTO KindrekMeet1c
 ++ @20 GOTO KindrekMeet1d
END

IF ~~ THEN BEGIN KindrekMeet5a
 SAY @70
=
 @69
 ++ @18 GOTO KindrekMeet1b
 ++ @19 GOTO KindrekMeet1c
 ++ @20 GOTO KindrekMeet1d
END



IF ~Global("KKNiceRejection","LOCALS",1)~ THEN BEGIN KKNiceRejection
SAY @71
++ @72 GOTO KKNiceRejection1
++ @73 GOTO KKNiceRejection2
++ @74 GOTO KKNiceRejection3
END

IF ~~ THEN BEGIN KKNiceRejection1
SAY @75
IF ~~ THEN DO ~SetGlobal("KindrekJoined","LOCALS",1)JoinParty()~
EXIT
END

IF ~~ THEN BEGIN KKNiceRejection2
SAY @76
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KKNiceRejection3
SAY @77
=
@78
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
