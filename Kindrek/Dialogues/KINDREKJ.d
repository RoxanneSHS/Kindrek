BEGIN KINDREKJ



IF ~Global("KKPrenashGloat","LOCALS",1)~ THEN BEGIN KKPrenashGloat
SAY @0
=
@1
IF ~~ THEN DO ~SetGlobal("KKPrenashGloat","LOCALS",2)~ EXIT
END



IF ~Global("KKBlackrazor","LOCALS",1)~ THEN BEGIN KKBlackrazor
SAY @2
IF ~~ THEN DO ~SetGlobal("KKBlackrazor","LOCALS",2)DropItem("miscbc",[-1.-1])~ EXIT
END



IF ~Global("SaeriKindrekLeave","GLOBAL",2)~ THEN BEGIN SaeriKindrekLeave
SAY @3
=
@4
IF ~~ THEN DO ~SetGlobal("SaeriKindrekLeave","GLOBAL",3)~ EXIT
END



IF ~Global("KindrekArmLeg","LOCALS",1)~ THEN BEGIN KKArmLegTalk
SAY @5 
=
@6
IF ~~ THEN DO ~TakePartyItem("miscaw")DestroyItem("miscaw")GiveItemCreate("miscaw","kindrek",1,1,1)SetGlobal("KindrekArmLeg","LOCALS",2)~ EXIT
END



IF ~Global("KindrekTorso","LOCALS",1)~ THEN BEGIN KKTorsoTalk
SAY @7 
=
@8
IF ~~ THEN DO ~TakePartyItem("miscay")DestroyItem("miscay")GiveItemCreate("miscay","kindrek",1,1,1)SetGlobal("KindrekTorso","LOCALS",2)~ EXIT
END



IF ~Global("KindrekImpatient","LOCALS",1)~ THEN BEGIN KindrekImpatient
SAY @9 
IF ~~ THEN DO ~SetGlobal("KindrekJoined","LOCALS",0)LeaveParty()EscapeArea()~ EXIT
END



IF ~Global("KindrekSpellhold","GLOBAL",1)~ THEN BEGIN KindrekSpellhold
SAY @10  
IF ~~ THEN DO ~SetGlobal("KindrekSpellhold","GLOBAL",2)~
EXIT
END



IF ~Global("KindrekUnderdark","GLOBAL",1)~ THEN BEGIN KindrekUnderdark
SAY @11  
IF ~~ THEN DO ~SetGlobal("KindrekUnderdark","GLOBAL",2)~
EXIT
END



IF ~Global("KindrekLeaveOverPCMage","LOCALS",1)~ THEN BEGIN KindrekPCMage
SAY @12  
IF ~~ THEN DO ~SetGlobal("KindrekLeaveOverPCMage","LOCALS",2)EquipMostDamagingMelee()LeaveParty()Enemy()Attack(LastSeenBy())~
EXIT
END



IF ~Global("KindrekDestroyDisplacementCloak","LOCALS",2)~ THEN BEGIN KindrekDestroyDisplacement
SAY @13  
IF ~~ THEN DO ~TakePartyItem("clck03")DestroyItem("clck03")SetGlobal("KindrekDestroyDisplacementCloak","LOCALS",3)~ EXIT
END



IF ~Global("KindrekDestroyReflectionCloak","LOCALS",2)~ THEN BEGIN KindrekDestroyReflection
SAY @13  
IF ~~ THEN DO ~TakePartyItem("clck24")DestroyItem("clck24")SetGlobal("KindrekDestroyReflectionCloak","LOCALS",3)~ EXIT
END



IF ~Global("KindrekDestroyMirroringCloak","LOCALS",2)~ THEN BEGIN KindrekDestroyMirroring
SAY @13  
IF ~~ THEN DO ~TakePartyItem("clck26")DestroyItem("clck26")SetGlobal("KindrekDestroyMirroringCloak","LOCALS",3)~ EXIT
END



IF ~IsGabber(Player1)
CombatCounter(0)~ THEN BEGIN KindrekChatsSOA
SAY @14
+ ~RandomNum(4,1)~ + @15 + KindrekCopperSOA1
+ ~RandomNum(4,2)~ + @15 + KindrekCopperSOA2
+ ~RandomNum(4,3)~ + @15 + KindrekCopperSOA3
+ ~RandomNum(4,4)~ + @15 + KindrekCopperSOA4

+ ~RandomNum(4,1)~ + @16 + KindrekSourSOA1
+ ~RandomNum(4,2)~ + @16 + KindrekSourSOA2
+ ~RandomNum(4,3)~ + @16 + KindrekSourSOA3
+ ~RandomNum(4,4)~ + @16 + KindrekSourSOA4

+ ~RandomNum(4,1)~ + @17 + KindrekThinkingSOA1
+ ~RandomNum(4,2)~ + @17 + KindrekThinkingSOA2
+ ~RandomNum(4,3)~ + @17 + KindrekThinkingSOA3
+ ~RandomNum(4,4)~ + @17 + KindrekThinkingSOA4

+ ~RandomNum(4,1)~ + @18 + KindrekMemorySOA1
+ ~RandomNum(4,2)~ + @18 + KindrekMemorySOA2
+ ~RandomNum(4,3)~ + @18 + KindrekMemorySOA3
+ ~RandomNum(4,4)~ + @18 + KindrekMemorySOA4

+ ~RandomNum(4,1)~ + @19 + KindrekWrongSOA1
+ ~RandomNum(4,2)~ + @19 + KindrekWrongSOA2
+ ~RandomNum(4,3)~ + @19 + KindrekWrongSOA3
+ ~RandomNum(4,4)~ + @19 + KindrekWrongSOA4

++ @20 + KKChatFixerSOA
END

IF ~~ THEN BEGIN KindrekCopperSOA1
 SAY @21  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekCopperSOA2
 SAY @22  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekCopperSOA3
 SAY @23  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekCopperSOA4
 SAY @24  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekSourSOA1
 SAY @25  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekSourSOA2
 SAY @26  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekSourSOA3
 SAY @27  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekSourSOA4
 SAY @28  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekThinkingSOA1
 SAY @29  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekThinkingSOA2
 SAY @30  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekThinkingSOA3
 SAY @31  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekThinkingSOA4
 SAY @32  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekMemorySOA1
 SAY @33  
 =
 @34
 =
 @35
 =
 @36
 =
 @37
 =
 @38
 =
 @39
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekMemorySOA2
 SAY @40  
 =
 @41
 =
 @42
 =
 @43
 =
 @44
 =
 @45
 =
 @46
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekMemorySOA3
 SAY @47  
 =
 @48
 =
 @49
 =
 @50
 =
 @51
 =
 @52
 =
 @53
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekMemorySOA4
 SAY @54  
 =
 @55
 =
 @56
 =
 @57
 =
 @58
 =
 @59
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekWrongSOA1
 SAY @60  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekWrongSOA2
 SAY @61  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekWrongSOA3
 SAY @62  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekWrongSOA4
 SAY @63  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KKChatFixerSOA
 SAY @64
 IF ~~ THEN DO ~StartCutScene("KKFIX")~ EXIT
END




IF ~Global("KindrekAnomenJealousy","GLOBAL",1)~ THEN BEGIN KindrekAnomenJealousy
SAY @65  
IF ~~ THEN DO ~SetGlobal("KindrekGloatsToAnomen","GLOBAL",1)SetGlobal("KindrekAnomenJealousy","GLOBAL",2)~ EXTERN ANOMENJ KindrekGloatsToAnomen
END

APPEND ANOMENJ
IF ~Global("KindrekGloatsToAnomen","GLOBAL",1)~ THEN BEGIN KindrekGloatsToAnomen
SAY @66
=
@67
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)SetGlobal("KindrekGloatsToAnomen","GLOBAL",2)LeaveParty()EscapeArea()~ EXIT
END
END



INTERJECT_COPY_TRANS XAPPREN1 2 KindrekPrebek
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @68
== XAPPREN1
 @69
END



INTERJECT_COPY_TRANS LAVOK 48 KindrekDemonHeart
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @70
END



INTERJECT MEKRATH 0 KindrekMekrath1
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @71
== MEKRATH
 @72
 DO ~Enemy()~
EXIT



INTERJECT MEKRAT 0 KindrekMekrath2
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @71
== MEKRAT
 @72
 DO ~Enemy()~
EXIT



INTERJECT HAMEK 0 KindrekMekrath3
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @71
== HAMEK
 @72
 DO ~Enemy()~
EXIT



INTERJECT_COPY_TRANS RAELIS 9 KindrekRaelis
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @73
== RAELIS
 @74
END



INTERJECT_COPY_TRANS SCDUR 23 KindrekUngerHilldark1
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @75
== SCDUR
 @76
END



INTERJECT_COPY_TRANS RIFTM01 1 KindrekDiseasedOne
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @77
== RIFTM01
 @78
END



INTERJECT UDVITH 0 KindrekVithal
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @79
== UDVITH
 @80
 DO ~Enemy()~
EXIT



INTERJECT_COPY_TRANS PPSAEM3 1 KindrekSaemon
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @81
== PPSAEM3
 @82
END



INTERJECT_COPY_TRANS SAHIMP03 0 KindrekElminster
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @83
== SAHIMP03
 @84
END



INTERJECT_COPY_TRANS ARAN 26 KindrekAranLinvail1
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @85
== ARAN
@86
=
@87
END



INTERJECT_COPY_TRANS ARAN 40 KindrekAranLinvail2
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @88
== ARAN
 @89
END



INTERJECT_COPY_TRANS IMOEN2 22 KindrekImoenAbandoned
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @90
== IMOEN2
 @91
END



INTERJECT_COPY_TRANS PPTIAX2 3 KindrekTiax
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @92
== PPTIAX2
 @93
END



INTERJECT_COPY_TRANS GARREN 22 KindrekWindspear
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @94
== GARREN
 @95
END



INTERJECT_COPY_TRANS VAELASA 6 KindrekDryads
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @96
END



INTERJECT_COPY_TRANS FIRMAG01 1 KindrekConster1
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @97
== FIRMAG01
 @98
END



INTERJECT_COPY_TRANS FIRMAG01 2 KindrekConster2
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @97
== FIRMAG01
 @98
END



INTERJECT_COPY_TRANS FIRMAG01 3 KindrekConster3
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @97
== FIRMAG01
 @98
END



INTERJECT_COPY_TRANS TOLGER2 0 KindrekTolgerias1
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @99
END



INTERJECT_COPY_TRANS TOLGER2 2 KindrekTolgerias2
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @99
END



INTERJECT_COPY_TRANS UDSILVER 34 KindrekAdalon
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @100
END



INTERJECT_COPY_TRANS GRVLCH01 0 KindrekLichInWall
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @101
== GRVLCH01
 @102
END



INTERJECT_COPY_TRANS PPCOWLED 1 KindrekPerth
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @103
END



INTERJECT_COPY_TRANS VICONI 2 KindrekViconiaJoin
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @104
== VICONI
 @105
END



INTERJECT_COPY_TRANS COHRVALE 1 KindrekCohrvale
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @106
== COHRVALE
 @107
END



INTERJECT_COPY_TRANS WELLYN 3 KindrekWellyn
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @108
 =
 @109
== WELLYN
 @110
END



INTERJECT_COPY_TRANS TOLGER2 4 KindrekTolgerias3
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @99
== TOLGER2
 @111
END



INTERJECT_COPY_TRANS TOLGER2 5 KindrekTolgerias4
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @99
== TOLGER2
 @111
END



INTERJECT_COPY_TRANS CELOGAN 17 KindrekLogan
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @112
END



INTERJECT_COPY_TRANS TREVIL01 15 KindrekKhellon1
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @113
END



INTERJECT_COPY_TRANS TREVIL01 24 KindrekKhellon2
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @114
END



INTERJECT_COPY_TRANS TREVIL03 2 KindrekVerthan
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @115
END



INTERJECT_COPY_TRANS JUGDAR01 2 KindrekDaar
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @116
END



INTERJECT_COPY_TRANS VALYGAR 3 KindrekValygar1
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @117
END



INTERJECT_COPY_TRANS VALYGAR 47 KindrekValygar2
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @117
END



INTERJECT_COPY_TRANS VALYGAR 48 KindrekValygar3
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @117
END



INTERJECT_COPY_TRANS MADEEN 1 KindrekMadeen
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @118
== MADEEN
@119
END



INTERJECT CORNEIL 9 KindrekCowledWizards
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @120  
END
 ++ @121 EXTERN KINDREKJ KindrekCowledWizards1a
 ++ @122 EXTERN KINDREKJ KindrekCowledWizards2a

APPEND KINDREKJ
IF ~~ THEN BEGIN KindrekCowledWizards1a
 SAY @123
 COPY_TRANS CORNEIL 9
END

IF ~~ THEN BEGIN KindrekCowledWizards2a
 SAY @124
 IF ~~ THEN DO ~LeaveParty()EscapeArea()~ EXIT
END
END


INTERJECT CORNEIL 11 KindrekBetrayed
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @125
 DO ~LeaveParty()Enemy()Attack(LastSeenBy())~
EXIT



INTERJECT_COPY_TRANS ANOMENJ 52 KindrekAnoSis
== KINDREKJ   IF ~InParty("Kindrek")~ THEN
 @126
END



INTERJECT_COPY_TRANS ANOMENJ 133 KindrekAnoBylanna
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@127
END



INTERJECT_COPY_TRANS KELDORJ 23 KindrekMariaAdultery
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@128
END



INTERJECT_COPY_TRANS HLSHANG 0 KindrekTwistedRune
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@129
END



INTERJECT_COPY_TRANS YUSUF 2 KindrekYusuf
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@130
END



INTERJECT_COPY_TRANS KAMIR 7 KindrekKamir
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@131
== KAMIR
@132
END



INTERJECT_COPY_TRANS HERVO 11 KindrekHervo
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@133
END



INTERJECT_COPY_TRANS KPSOLD01 4 KindrekKeepSoldier
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@134
END



INTERJECT_COPY_TRANS NALIA 64 KindrekNalia
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@135
END



INTERJECT_COPY_TRANS DCOWL1 0 KindrekRayis
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@136
END



INTERJECT_COPY_TRANS ISAEA 28 KindrekNaliaKidnap
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@137
END



INTERJECT_COPY_TRANS VALYGARP 2 KindrekLavok
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@138
END



INTERJECT_COPY_TRANS VALYGARJ 107 KindrekLavok
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@138
END



INTERJECT JUGJER01 0 KindrekJermien
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@139
=
@140
DO ~ClearAllActions()StartCutSceneMode()StartCutScene("KIKILJER")~
EXIT



INTERJECT EDWIN 27 KindrekEdwin
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@141
DO ~ClearAllActions()StartCutSceneMode()StartCutScene("KIKILEDW")~
EXIT



INTERJECT_COPY_TRANS JAHEIRAJ 112 KindrekGalvaery
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@142
END



INTERJECT_COPY_TRANS COPGREET 1 KindrekFrankie
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@143
END



INTERJECT_COPY_TRANS KALAH2 13 KindrekKalah
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@144
== KALAH2
@145
END



INTERJECT_COPY_TRANS PPIRENI1 10 KKIrenSpellhold1
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@146 
== PPIRENI1
@147
END



INTERJECT_COPY_TRANS PPIRENI1 13 KKIrenSpellhold2
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@148 
== PPIRENI1
@149
END



INTERJECT_COPY_TRANS PPIRENI1 17 KKIrenSpellhold3
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@150 
END



INTERJECT_COPY_TRANS PPIRENI1 21 KKIrenSpellhold4
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@151 
== PPIRENI1
@152
END



INTERJECT_COPY_TRANS PPTIAX 6 KKIrenSpellhold5
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@153 
END



INTERJECT_COPY_TRANS PPIRENI1 24 KKIrenSpellhold6
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@154
DO ~SetGlobal("KKLeftSpellhold","LOCALS",1)LeaveParty()EscapeAreaMove("AR1512",2456,1027,3)~
END



INTERJECT_COPY_TRANS PPIRENI1 27 KKIrenSpellhold7
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@155 
== PPIRENI1
@156
END



INTERJECT_COPY_TRANS PPIRENI2 32 KKIrenSpellhold8
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@157 
=
@158
== PPIRENI2
@159
END



INTERJECT PLAYER1 33 KindrekTreeofLife
== PLAYER1 IF ~InParty("Kindrek")~ THEN
@160
END
++ @161 EXTERN KINDREKJ KindrekTreeofLife1a

APPEND KINDREKJ
IF ~~ THEN BEGIN KindrekTreeofLife1a
SAY @162
=
@163 COPY_TRANS PLAYER1 33
END
END



INTERJECT_COPY_TRANS NALIAJ 161 KindrekKeep
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@164
=
@165
END



INTERJECT PLAYER1 5 KindrekSlayer
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@166  
END
++ @167 EXTERN KINDREKJ KindrekSlayer1a
++ @168 EXTERN KINDREKJ KindrekSlayer2a
++ @169 EXTERN KINDREKJ KindrekSlayer3a

APPEND KINDREKJ
IF ~~ THEN BEGIN KindrekSlayer1a
SAY @170
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekSlayer2a
SAY @171
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekSlayer3a
SAY @172
IF ~~ THEN EXIT
END
END



INTERJECT_COPY_TRANS UHMAY01 35 KindrekCabin
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@173
END



INTERJECT_COPY_TRANS RENAL 69 KindrekGuild
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@174
END



INTERJECT_COPY_TRANS HellJon 7 KindrekHellJon1
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@175  
=
@176
END



INTERJECT_COPY_TRANS HellJon 10 KindrekHellJon2
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@175  
=
@176
END



INTERJECT_COPY_TRANS HellJon 9 KindrekHellJon3
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@175  
=
@176
END



INTERJECT_COPY_TRANS HellJon 8 KindrekHellJon4
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@175  
=
@176
END



INTERJECT_COPY_TRANS PLAYER1 25 KindrekInHell
== KINDREKJ IF ~InParty("Kindrek")~ THEN
@177  
END



INTERJECT TRGYP02 2 KindrekGyppos
== TRGYP02 IF ~!InPartySlot(LastTalkedToBy,0)
Name("Kindrek",LastTalkedToBy)~ THEN
@178
DO ~SetGlobal("UselessGlobal","LOCALS",1)~ EXTERN KINDREKJ KindrekGyppos1

APPEND KINDREKJ
IF ~~ THEN BEGIN KindrekGyppos1
SAY @179
IF ~~ THEN DO ~SetGlobal("UselessGlobal","LOCALS",1)~
EXTERN TRGYP02 KindrekGyppos2
END
END

APPEND TRGYP02
IF ~~ THEN BEGIN KindrekGyppos2
SAY @180
IF ~~ THEN DO ~SetGlobal("UselessGlobal","LOCALS",1)~ EXTERN KINDREKJ KindrekGyppos3
END
END

APPEND KINDREKJ
IF ~~ THEN BEGIN KindrekGyppos3
SAY @181
=
@182
IF ~~ THEN EXIT
END
END
