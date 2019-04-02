BEGIN KIND25J



IF ~Global("KKLeaveOverPCMageTOB","LOCALS",1)~ THEN BEGIN KindrekPCMageTOB
SAY @0  
IF ~~ THEN DO ~SetGlobal("KKLeaveOverPCMageTOB","LOCALS",2)LeaveParty()Enemy()EquipMostDamagingMelee()Attack(LastSeenBy())~
EXIT
END



IF ~Global("KKDestroyDisplacementCloakTOB","LOCALS",2)~ THEN BEGIN KindrekDestroyDisplacementTOB
SAY @1  
IF ~~ THEN DO ~TakePartyItem("clck03")DestroyItem("clck03")SetGlobal("KindrekDestroyDisplacementCloakTOB","LOCALS",3)~ EXIT
END



IF ~Global("KKDestroyReflectionCloakTOB","LOCALS",2)~ THEN BEGIN KindrekDestroyReflectionTOB
SAY @1  
IF ~~ THEN DO ~TakePartyItem("clck24")DestroyItem("clck24")SetGlobal("KindrekDestroyReflectionCloakTOB","LOCALS",3)~ EXIT
END



IF ~Global("KKDestroyMirroringCloakTOB","LOCALS",2)~ THEN BEGIN KindrekDestroyMirroringTOB
SAY @1  
IF ~~ THEN DO ~TakePartyItem("clck26")DestroyItem("clck26")SetGlobal("KindrekDestroyMirroringCloakTOB","LOCALS",3)~ EXIT
END



IF ~IsGabber(Player1)
CombatCounter(0)~ THEN BEGIN KindrekChatsTOB
SAY @2
+ ~RandomNum(4,1)~ + @3 + KindrekCopperTOB1
+ ~RandomNum(4,2)~ + @3 + KindrekCopperTOB2
+ ~RandomNum(4,3)~ + @3 + KindrekCopperTOB3
+ ~RandomNum(4,4)~ + @3 + KindrekCopperTOB4

+ ~RandomNum(4,1)~ + @4 + KindrekSourTOB1
+ ~RandomNum(4,2)~ + @4 + KindrekSourTOB2
+ ~RandomNum(4,3)~ + @4 + KindrekSourTOB3
+ ~RandomNum(4,4)~ + @4 + KindrekSourTOB4

+ ~RandomNum(4,1)~ + @5 + KindrekThinkingTOB1
+ ~RandomNum(4,2)~ + @5 + KindrekThinkingTOB2
+ ~RandomNum(4,3)~ + @5 + KindrekThinkingTOB3
+ ~RandomNum(4,4)~ + @5 + KindrekThinkingTOB4

+ ~RandomNum(4,1)~ + @6 + KindrekMemoryTOB1
+ ~RandomNum(4,2)~ + @6 + KindrekMemoryTOB2
+ ~RandomNum(4,3)~ + @6 + KindrekMemoryTOB3
+ ~RandomNum(4,4)~ + @6 + KindrekMemoryTOB4

+ ~RandomNum(4,1)~ + @7 + KindrekWrongTOB1
+ ~RandomNum(4,2)~ + @7 + KindrekWrongTOB2
+ ~RandomNum(4,3)~ + @7 + KindrekWrongTOB3
+ ~RandomNum(4,4)~ + @7 + KindrekWrongTOB4

++ @8 + KKChatFixerTOB
END

IF ~~ THEN BEGIN KindrekCopperTOB1
 SAY @9  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekCopperTOB2
 SAY @10  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekCopperTOB3
 SAY @11  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekCopperTOB4
 SAY @12  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekSourTOB1
 SAY @13  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekSourTOB2
 SAY @14  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekSourTOB3
 SAY @15  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekSourTOB4
 SAY @16  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekThinkingTOB1
 SAY @17  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekThinkingTOB2
 SAY @18  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekThinkingTOB3
 SAY @19  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekThinkingTOB4
 SAY @20  
 =
 @21
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekMemoryTOB1
 SAY @22  
 =
 @23
 =
 @24
 =
 @25
 =
 @26
 =
 @27
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekMemoryTOB2
 SAY @28  
 =
 @29
 =
 @30
 =
 @31
 =
 @32
 =
 @33
 =
 @34
 =
 @35
 =
 @36
 =
 @37
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekMemoryTOB3
 SAY @38  
 =
 @39
 =
 @40
 =
 @41
 =
 @42
 =
 @43
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekMemoryTOB4
 SAY @44  
 =
 @45
 =
 @46
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekWrongTOB1
 SAY @47  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekWrongTOB2
 SAY @48  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekWrongTOB3
 SAY @49  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KindrekWrongTOB4
 SAY @50  
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KKChatFixerTOB
 SAY @51
 IF ~~ THEN DO ~StartCutScene("KKFIX")~ EXIT
END


INTERJECT_COPY_TRANS SARMEL01 46 KindrekYagaShura
== KIND25J IF ~InParty("Kindrek")~ THEN
@52
== SARMEL01
@53
END



INTERJECT 25SPELL 2 KindrekLazarusKill
== KIND25J IF ~InParty("Kindrekk")~ THEN
@54
== 25SPELL
@55 DO ~Enemy()~
END



INTERJECT_COPY_TRANS BALTH 24 KindrekBalthazar
== KIND25J IF ~InParty("Kindrek")~ THEN
@56
== BALTH
@57
END



INTERJECT_COPY_TRANS AMLICH01 0 KindrekVongoethe
== KIND25J IF ~InParty("Kindrek")~ THEN
@58
== AMLICH01
@59
END



EXTEND_TOP SARVOLO 9
IF ~InParty("Kindrek")~ THEN REPLY @60 GOTO KindrekVolo
END

CHAIN SARVOLO KindrekVolo
@61
== KIND25J IF ~InParty("Kindrek")~ THEN @62  
EXTERN SARVOLO 9



EXTEND_TOP FATESP 6 #5
IF ~!Dead("Kindrek")
    !InMyArea("Kindrek")
    Global("KindrekSummoned","GLOBAL",0)~
THEN
  REPLY @63
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
     Wait(2)
     CreateCreature("KINDRE25",[1999.1218],0)
     SetGlobal("KindrekSummoned","GLOBAL",1)~
     GOTO 8
END
