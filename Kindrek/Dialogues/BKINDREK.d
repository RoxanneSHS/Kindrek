BEGIN BKINDREK



IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR (5)
Global("KindrekLeaveOverEdwin","LOCALS",1)
Global("KindrekLeaveOverTsujatha","LOCALS",1)
Global("KindrekLeaveOverTashia","LOCALS",1)
Global("KindrekLeaveOverZaiya","LOCALS",1)
Global("KindrekLeaveOverKelsey","LOCALS",1)~ THEN BEGIN KindrekLeaveOverWizard
SAY @0  
IF ~~ THEN DO ~EquipMostDamagingMelee()LeaveParty()Enemy()Attack(LastSeenBy())~ EXIT
END


IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("KindrekLeaveOverIrenicus","LOCALS",1)~ THEN BEGIN KindrekLeaveOverIrenicus
SAY @1  
IF ~~ THEN DO ~EquipMostDamagingMelee()LeaveParty()Enemy()Attack(LastSeenBy())~ EXIT
END



IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Gender(Player1,FEMALE)
Global("KindrekPropositionPC","GLOBAL",0)~ THEN BEGIN KindrekPropositionPC
SAY @2  
 ++ @3 DO ~SetGlobal("KindrekPropositionPC","GLOBAL",1)~ GOTO KindrekPropositionPC1a
 ++ @4 DO ~SetGlobal("KindrekPropositionPC","GLOBAL",1)~ GOTO KindrekPropositionPC2a
 ++ @5 DO ~SetGlobal("KindrekPropositionPC","GLOBAL",1)~ GOTO KindrekPropositionPC3a
 ++ @6 DO ~SetGlobal("KindrekPropositionPC","GLOBAL",1)~ GOTO KindrekPropositionPC4a
END

IF ~~ THEN BEGIN KindrekPropositionPC1a
 SAY @7
 =
 @8
 IF ~~ THEN DO ~SetGlobal("KindrekDidNotDoPC","GLOBAL",1)GivePartyAllEquipment()LeaveParty()EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN KindrekPropositionPC2a
 SAY @9
 ++ @10 GOTO KindrekPropositionPC2b
 ++ @11 GOTO KindrekPropositionPC2c
END

IF ~~ THEN BEGIN KindrekPropositionPC2b
 SAY @12
 IF ~~ THEN DO ~SetGlobal("KindrekDidNotDoPC","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN KindrekPropositionPC2c
 SAY @13
 IF ~~ THEN DO ~SetGlobal("KindrekDidPC","GLOBAL",1)RestParty()~ EXIT
END

IF ~~ THEN BEGIN KindrekPropositionPC3a
 SAY @14
 ++ @15 GOTO KindrekPropositionPC2b
 ++ @16 GOTO KindrekPropositionPC2c
END

IF ~~ THEN BEGIN KindrekPropositionPC4a
 SAY @17
 =
 @18
 ++ @19  GOTO KindrekPropositionPC4b
 ++ @20 GOTO KindrekPropositionPC4b
 ++ @21 GOTO KindrekPropositionPC1a
 ++ @22 GOTO KindrekPropositionPC2c
END

IF ~~ THEN BEGIN KindrekPropositionPC4b
 SAY @23
 IF ~~ THEN DO ~SetGlobal("KindrekDidNotDoPC","GLOBAL",1)~ EXIT
END



IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,FIGHTER_ALL)
!Class(Player1,MONK)
Global("KindrekFighterTalk","GLOBAL",0)~ THEN BEGIN KindrekFighter
SAY @24  
 ++ @25 DO ~SetGlobal("KindrekFighterTalk","GLOBAL",1)~ GOTO KindrekFighter1a
 ++ @26 DO ~SetGlobal("KindrekFighterTalk","GLOBAL",1)~ GOTO KindrekFighter2a
 ++ @27 DO ~SetGlobal("KindrekFighterTalk","GLOBAL",1)~ GOTO KindrekFighter3a
END

IF ~~ THEN BEGIN KindrekFighter1a
 SAY @28
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekFighter2a
 SAY @29
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekFighter3a
 SAY @30
 IF ~~ THEN EXIT
END



IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,MONK)
Global("KindrekMonkTalk","GLOBAL",0)~ THEN BEGIN KindrekMonk
 SAY @31  
 ++ @32 DO ~SetGlobal("KindrekMonkTalk","GLOBAL",1)~ GOTO KindrekMonk1a
 ++ @33 DO ~SetGlobal("KindrekMonkTalk","GLOBAL",1)~ GOTO KindrekMonk1a
END

IF ~~ THEN BEGIN KindrekMonk1a
 SAY @34
 IF ~~ THEN EXIT
END



IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,PALADIN_ALL)
Global("KindrekPaladinTalk","GLOBAL",0)~ THEN BEGIN KindrekPaladin
 SAY @35  
 ++ @36 DO ~SetGlobal("KindrekPaladinTalk","GLOBAL",1)~ GOTO KindrekPaladin1a
 ++ @37 DO ~SetGlobal("KindrekPaladinTalk","GLOBAL",1)~ GOTO KindrekPaladin2a
END

IF ~~ THEN BEGIN KindrekPaladin1a
 SAY @38
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekPaladin2a
 SAY @39
 IF ~~ THEN EXIT
END



IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,RANGER_ALL)
Global("KindrekRangerTalk","GLOBAL",0)~ THEN BEGIN KindrekRanger
 SAY @40  
 ++ @41 DO ~SetGlobal("KindrekRangerTalk","GLOBAL",1)~ GOTO KindrekRanger1a
 ++ @42 DO ~SetGlobal("KindrekRangerTalk","GLOBAL",1)~ GOTO KindrekRanger2a
 ++ @43 DO ~SetGlobal("KindrekRangerTalk","GLOBAL",1)~ GOTO KindrekRanger3a
END

IF ~~ THEN BEGIN KindrekRanger1a
 SAY @44
 ++ @45 GOTO KindrekRanger1b
 ++ @46 GOTO KindrekRanger1c
END

IF ~~ THEN BEGIN KindrekRanger1b
 SAY @47
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekRanger1c
 SAY @48
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekRanger2a
 SAY @49
 ++ @50 GOTO KindrekRanger2b
END

IF ~~ THEN BEGIN KindrekRanger2b
 SAY @51
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekRanger3a
 SAY @52
 ++ @53 EXIT
 ++ @54 GOTO KindrekRanger3b
 ++ @55 GOTO KindrekRanger3c
END

IF ~~ THEN BEGIN KindrekRanger3b
 SAY @56
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekRanger3c
 SAY @57
 IF ~~ THEN EXIT
END



IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,THIEF_ALL)
Global("KindrekThiefTalk","GLOBAL",0)~ THEN BEGIN KindrekThief
 SAY @58  
 ++ @59 DO ~SetGlobal("KindrekThiefTalk","GLOBAL",1)~ GOTO KindrekThief1a
 ++ @60 DO ~SetGlobal("KindrekThiefTalk","GLOBAL",1)~ GOTO KindrekThief2a
 ++ @61 DO ~SetGlobal("KindrekThiefTalk","GLOBAL",1)~ GOTO KindrekThief3a
END

IF ~~ THEN BEGIN KindrekThief1a
 SAY @62
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekThief2a
 SAY @63
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekThief3a
 SAY @64
 ++ @65 GOTO KindrekThief3b
 ++ @66 GOTO KindrekThief3b
 ++ @67 GOTO KindrekThief3b
END

IF ~~ THEN BEGIN KindrekThief3b
 SAY @68
 IF ~~ THEN EXIT
END



IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,CLERIC)
Global("KindrekLathandarTalk","GLOBAL",0)~ THEN BEGIN KindrekCleric
 SAY@69  
 ++ @70 DO ~SetGlobal("KindrekLathandarTalk","GLOBAL",1)~ GOTO KindrekCleric1a
 ++ @71 DO ~SetGlobal("KindrekLathandarTalk","GLOBAL",1)~ GOTO KindrekCleric2a
 ++ @72 DO ~SetGlobal("KindrekLathandarTalk","GLOBAL",1)~ GOTO KindrekCleric3a
END

IF ~~ THEN BEGIN KindrekCleric1a
 SAY @73
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekCleric2a
 SAY @74
 ++ @75 GOTO KindrekCleric2b
 ++ @76 GOTO KindrekCleric2c
 ++ @77 GOTO KindrekCleric2d
END

IF ~~ THEN BEGIN KindrekCleric2b
 SAY @78
 IF ~~ THEN DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN KindrekCleric2c
 SAY @79
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekCleric2d
 SAY @80
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekCleric3a
 SAY @81
 ++ @82 GOTO KindrekCleric3b
 ++ @83 GOTO KindrekCleric3c
END

IF ~~ THEN BEGIN KindrekCleric3b
 SAY @84
 IF ~~ THEN DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN KindrekCleric3c
 SAY @85
 IF ~~ THEN EXIT
END



IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,DRUID_ALL)
Global("KindrekDruidTalk","GLOBAL",0)~ THEN BEGIN KindrekDruid
 SAY @86  
 ++ @87 DO ~SetGlobal("KindrekDruidTalk","GLOBAL",1)~ GOTO KindrekDruid1a
 ++ @88 DO ~SetGlobal("KindrekDruidTalk","GLOBAL",1)~ GOTO KindrekDruid2a
 ++ @89 DO ~SetGlobal("KindrekDruidTalk","GLOBAL",1)~ GOTO KindrekDruid3a
 ++ @90 GOTO KindrekDruid4a
END

IF ~~ THEN BEGIN KindrekDruid1a
 SAY @91
 ++ @92 GOTO KindrekDruid1b
 ++ @93 GOTO KindrekDruid1c
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekDruid1b
 SAY @94
=
 @95
=
 @96
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekDruid1c
 SAY @97
=
 @95
=
 @96
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekDruid2a
 SAY @98
 ++ @99 GOTO KindrekDruid2b
 ++ @100 GOTO KindrekDruid2b
END

IF ~~ THEN BEGIN KindrekDruid2b
 SAY @101
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekDruid3a
 SAY @102
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekDruid4a
 SAY @103
 ++ @104 GOTO KindrekDruid4b
 ++ @105 GOTO KindrekDruid4c
 ++ @106 GOTO KindrekDruid4d
END

IF ~~ THEN BEGIN KindrekDruid4b
 SAY @107
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekDruid4c
 SAY @108
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekDruid4d
 SAY @109
 IF ~~ THEN EXIT
END



CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AerieKindrekTalk","GLOBAL",0)~ THEN BKINDREK KKAerieFly
@110  
DO ~SetGlobal("AerieKindrekTalk","GLOBAL",1)~
== BAERIE
@111
== BKINDREK
@112
== BAERIE
@113
== BKINDREK
@114
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AerieKindrekTalk","GLOBAL",1)~ THEN BKINDREK KKAerieStrangle
@115  
DO ~SetGlobal("AerieKindrekTalk","GLOBAL",2)~
== BAERIE
@116
== BKINDREK
@117
== BAERIE
@118
EXIT

CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("AerieKindrekTalk","GLOBAL",2)~ THEN BAERIE KKAerieBenefits
@119
DO ~SetGlobal("AerieKindrekTalk","GLOBAL",3)~
== BKINDREK
@120  
== BAERIE
@121
== BKINDREK
@122
== BAERIE
@123
EXIT



CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("AnomenKindrekTalk","GLOBAL",0)~ THEN BKINDREK KKAnomenArrogant
@124  
DO ~SetGlobal("AnomenKindrekTalk","GLOBAL",1)~
== BANOMEN
@125
== BKINDREK
@126
EXIT

CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("AnomenKindrekTalk","GLOBAL",1)~ THEN BANOMEN KKAnomenMagic
@127
DO ~SetGlobal("AnomenKindrekTalk","GLOBAL",2)~
== BKINDREK
@128  
== BANOMEN
@129
== BKINDREK
@130
== BANOMEN
@131
== BKINDREK
@132
== BANOMEN
@133
== BKINDREK
@134
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
!Global("AnomenIsNotKnight","GLOBAL",1)
Global("AnomenKindrekTalk","GLOBAL",2)~ THEN BKINDREK KKAnomenOrder
@135  
DO ~SetGlobal("AnomenKindrekTalk","GLOBAL",3)~
== BANOMEN
@136
== BKINDREK
@137
== BANOMEN
@138
== BKINDREK
@139
== BANOMEN
@140
== BKINDREK
@141
EXIT



CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("CerndKindrekTalk","GLOBAL",0)~ THEN BKINDREK KKCerndShapeshift
@142  
DO ~SetGlobal("CerndKindrekTalk","GLOBAL",1)~
== BCERND
@143
== BKINDREK
@144
== BCERND
@145
== BKINDREK
@146
== BCERND
@147
== BKINDREK
@148
END



CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("ImoenKindrekTalk","GLOBAL",0)~ THEN BKINDREK KKImmyRescue
@149  
DO ~SetGlobal("ImoenKindrekTalk","GLOBAL",1)~
== IMOEN2J
@150
== BKINDREK
@151
== IMOEN2J
@152
== BKINDREK
@153
== IMOEN2J
@154
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("ImoenKindrekTalk","GLOBAL",1)~ THEN BKINDREK KKImmySpellhold
@155  
DO ~SetGlobal("ImoenKindrekTalk","GLOBAL",2)~
== IMOEN2J
@156
== BKINDREK
@157
== IMOEN2J
@158
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("ImoenKindrekTalk","GLOBAL",2)~ THEN BKINDREK KKImmyDisruptor
@159 
DO ~SetGlobal("ImoenKindrekTalk","GLOBAL",3)~
== IMOEN2J
@160
== BKINDREK
@161
== IMOEN2J
@162
== BKINDREK
@163
== IMOEN2J
@164
== BKINDREK
@165
=
@166
== IMOEN2J
@167
== BKINDREK
@168
== IMOEN2J
@169
== BKINDREK
@170
EXIT



CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("JaheiraKindrekTalk","GLOBAL",0)~ THEN BKINDREK KKJaheiraFallen
@171  
DO ~SetGlobal("JaheiraKindrekTalk","GLOBAL",1)~
== BJAHEIR
@172
== BKINDREK
@173
== BJAHEIR
@174
EXIT

CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("JaheiraKindrekTalk","GLOBAL",1)~ THEN BJAHEIR KKJaheiraConfused
@175
DO ~SetGlobal("JaheiraKindrekTalk","GLOBAL",2)~
== BKINDREK
@176  
== BJAHEIR
@177
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("JaheiraKindrekTalk","GLOBAL",2)~ THEN BKINDREK KKJaheiraCompanion
@178  
DO ~SetGlobal("JaheiraKindrekTalk","GLOBAL",3)~
== BJAHEIR
@179
== BKINDREK
@180
== BJAHEIR
@181
== BKINDREK
@182
== BJAHEIR
@183
EXIT



CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("KeldornKindrekTalk","GLOBAL",0)~ THEN BKELDOR KKKeldornHealing
@184
DO ~SetGlobal("KeldornKindrekTalk","GLOBAL",1)~
== BKINDREK
@161  
== BKELDOR
@186
== BKINDREK
@187
== BKELDOR
@188
== BKINDREK
@189
== BKELDOR
@190
== BKINDREK
@191
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("KeldornKindrekTalk","GLOBAL",1)~ THEN BKINDREK KKKeldornDispel
@192  
DO ~SetGlobal("KeldornKindrekTalk","GLOBAL",2)~
== BKELDOR
@193
== BKINDREK
@194
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("KeldornKindrekTalk","GLOBAL",2)~ THEN BKINDREK KKKeldornScars
@195  
DO ~SetGlobal("KeldornKindrekTalk","GLOBAL",3)~
== BKELDOR
@196
== BKINDREK
@197
== BKELDOR
@198
== BKINDREK
@199
== BKELDOR
@200
EXIT



CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("KorganKindrekTalk","GLOBAL",0)~ THEN BKORGAN KKKorganLittleKindrek
@201
DO ~SetGlobal("KorganKindrekTalk","GLOBAL",1)~
== BKINDREK
@202  
== BKORGAN
@203
== BKINDREK
@204
== BKORGAN
@205
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("KorganKindrekTalk","GLOBAL",1)~ THEN BKINDREK KKKorganAxe
@206  
DO ~SetGlobal("KorganKindrekTalk","GLOBAL",2)~
== BKORGAN
@207
== BKINDREK
@208
== BKORGAN
@209
== BKINDREK
@210
== BKORGAN
@211
EXIT

CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("KorganKindrekTalk","GLOBAL",2)~ THEN BKORGAN KKKorganAle
@212
DO ~SetGlobal("KorganKindrekTalk","GLOBAL",3)~
== BKINDREK
@213  
== BKORGAN
@214
== BKINDREK
@215
== BKORGAN
@216
== BKINDREK
@217
EXIT



CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("MazzyKindrekTalk","GLOBAL",0)~ THEN BKINDREK KKMazzyGourd
@218  
DO ~SetGlobal("MazzyKindrekTalk","GLOBAL",1)~
== BMAZZY
@219
== BKINDREK
@220
== BMAZZY
@221
== BKINDREK
@222
== BMAZZY
@223
EXIT



CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("MinscKindrekTalk","GLOBAL",0)~ THEN BKINDREK KKMinscButtkicking
@224  
DO ~SetGlobal("MinscKindrekTalk","GLOBAL",1)~
== BMINSC
@225
== BKINDREK
@226
== BMINSC
@227
== BKINDREK
@228
=
@229
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("MinscKindrekTalk","GLOBAL",1)~ THEN BKINDREK KKMinscBerserk
@230  
DO ~SetGlobal("MinscKindrekTalk","GLOBAL",2)~
== BMINSC
@231
== BKINDREK
@232
EXIT

CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("MinscKindrekTalk","GLOBAL",2)~ THEN BMINSC KKMinscKillBoo
@233
DO ~SetGlobal("MinscKindrekTalk","GLOBAL",3)~
== BKINDREK
@234  
== BMINSC
@235
== BKINDREK
@236
== BMINSC
@237
== BKINDREK
@238
== BMINSC
@239
== BKINDREK
@240
EXIT



CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("ValygarKindrekTalk","GLOBAL",0)~ THEN BKINDREK KKValygarGreatMan
@241  
DO ~SetGlobal("ValygarKindrekTalk","GLOBAL",1)~
== BVALYGA
@242
== BKINDREK
@243
== BVALYGA
@244
== BKINDREK
@245
== BVALYGA
@246
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("ValygarKindrekTalk","GLOBAL",1)~ THEN BKINDREK KKValygarCursed
@247  
DO ~SetGlobal("ValygarKindrekTalk","GLOBAL",2)~
== BVALYGA
@248
== BKINDREK
@249
EXIT

CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("ValygarKindrekTalk","GLOBAL",2)~ THEN BVALYGA KKValygarWhy
@250
DO ~SetGlobal("ValygarKindrekTalk","GLOBAL",3)~
== BKINDREK
@251  
=
@252
=
@253
=
@254
=
@255
=
@256
=
@257
== BVALYGA
@258
EXIT



CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("KindrekViconiaJealousy","GLOBAL",0)
OR (2)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN BKINDREK KKViconiaJealousy
@259  
DO ~SetGlobal("KindrekViconiaJealousy","GLOBAL",1)~
== BVICONI
@260
== BKINDREK
@261
== BVICONI
@262
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("ViconiaKindrekTalk","GLOBAL",0)~ THEN BKINDREK KKViconiaProposition1
@263  
DO ~SetGlobal("ViconiaKindrekTalk","GLOBAL",1)~
== BVICONI
@264
== BKINDREK
@265
== BVICONI
@266
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("ViconiaKindrekTalk","GLOBAL",1)~ THEN BKINDREK KKViconiaProposition2
@267  
DO ~SetGlobal("ViconiaKindrekTalk","GLOBAL",2)~
== BVICONI
@268
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("ViconiaKindrekTalk","GLOBAL",2)~ THEN BKINDREK KKViconiaProposition3
@269  
DO ~SetGlobal("ViconiaKindrekTalk","GLOBAL",3)~
== BVICONI
@270
== BKINDREK
@271
== BVICONI
@272
EXIT




CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("YoshimoKindrekTalk","GLOBAL",0)~ THEN BKINDREK KKYoshimoSneaking
@273  
DO ~SetGlobal("YoshimoKindrekTalk","GLOBAL",1)~
== BYOSHIM
@274
== BKINDREK
@275
== BYOSHIM
@276
EXIT

CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("YoshimoKindrekTalk","GLOBAL",1)~ THEN BYOSHIM KKYoshimoOrigins
@277
DO ~SetGlobal("YoshimoKindrekTalk","GLOBAL",2)~
== BKINDREK
@278  
== BYOSHIM
@279
== BKINDREK
@280
== BYOSHIM
@281
== BKINDREK
@282
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("YoshimoKindrekTalk","GLOBAL",2)~ THEN BKINDREK KKYoshimoBounty
@283  
DO ~SetGlobal("YoshimoKindrekTalk","GLOBAL",3)~
== BYOSHIM
@284
== BKINDREK
@285
== BYOSHIM
@286
== BKINDREK
@287
== BYOSHIM
@288
==BKINDREK
@289
EXIT
