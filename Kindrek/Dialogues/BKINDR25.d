BEGIN BKINDR25



IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR (5)
Global("KKLeaveOverEdwinTOB","LOCALS",1)
Global("KKLeaveOverTsujathaTOB","LOCALS",1)
Global("KKLeaveOverTashiaTOB","LOCALS",1)
Global("KKLeaveOverZaiyaTOB","LOCALS",1)
Global("KKLeaveOverKelseyTOB","LOCALS",1)~ THEN BEGIN KindrekLeaveOverWizardTOB
SAY @0  
IF ~~ THEN DO ~LeaveParty()Enemy()EquipMostDamagingMelee()Attack(LastSeenBy())~ EXIT
END



IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("KKLeaveOverIrenicusTOB","LOCALS",1)~ THEN BEGIN KindrekLeaveOverIrenicusTOB
SAY @1  
IF ~~ THEN DO ~LeaveParty()Enemy()EquipMostDamagingMelee()Attack(LastSeenBy())~ EXIT
END



CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("AerieKindrekTOB","GLOBAL",0)~ THEN BAERIE25 KKAerieWicked
@2
DO ~SetGlobal("AerieKindrekTOB","GLOBAL",1)~
== BKINDR25
@3  
== BAERIE25
@4
== BKINDR25
@5
EXIT



CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("AnomenKindrekTOB","GLOBAL",0)~ THEN BKINDR25 KKAnomenUndead
@6  
DO ~SetGlobal("AnomenKindrekTOB","GLOBAL",1)~
== BANOME25
@7
== BKINDR25
@8
== BANOME25
@9
EXIT



CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("CerndKindrekTOB","GLOBAL",0)~ THEN BCERND25 KKCerndDiscord
@10
DO ~SetGlobal("CerndKindrekTOB","GLOBAL",1)~
== BKINDR25
@11  
== BCERND25
@12
== BKINDR25
@13
EXIT



CHAIN
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",STATE_SLEEPING)
Global("HaerdalisKindrekTOB","GLOBAL",0)~ THEN BKINDR25 KKHaerSigil
@14  
DO ~SetGlobal("HaerdalisKindrekTOB","GLOBAL",1)~
== BHAERD25
@15
== BKINDR25
@16
== BHAERD25
@17
EXIT



CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("ImoenKindrekTOB","GLOBAL",0)~ THEN BKINDR25 KKImmySlayer
@18  
DO ~SetGlobal("ImoenKindrekTOB","GLOBAL",1)~
== BIMOEN25
@19
== BKINDR25
@20
== BIMOEN25
@21
EXIT



CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("JaheiraKindrekTOB","GLOBAL",0)~ THEN BKINDR25 KKJaheiraPester
@22  
DO ~SetGlobal("JaheiraKindrekTOB","GLOBAL",1)~
== BJAHEI25
@23
== BKINDR25
@24
== BJAHEI25
@25
EXIT



CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("KeldornKindrekTOB","GLOBAL",0)~ THEN BKINDR25 KKKeldornWeary
@26  
DO ~SetGlobal("KeldornKindrekTOB","GLOBAL",1)~
== BKELDO25
@27
== BKINDR25
@28
== BKELDO25
@29
== BKINDR25
@30
== BKELDO25
@31
EXIT



CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("KorganKindrekTOB","GLOBAL",0)~ THEN BKORGA25 KKKorganMeanStreak
@32
DO ~SetGlobal("KorganKindrekTOB","GLOBAL",1)~
== BKINDR25
@33  
== BKORGA25
@34
== BKINDR25
@35
=
@36
== BKORGA25
@37
EXIT



CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("MazzyKindrekTOB","GLOBAL",0)~ THEN BKINDR25 KKMazzyStature
@38  
DO ~SetGlobal("MazzyKindrekTOB","GLOBAL",1)~
==BMAZZY25
@39
==BKINDR25
@40
EXIT



CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("MinscKindrekTOB","GLOBAL",0)~ THEN BMINSC25 KKMinscHeadButt
@41
DO ~SetGlobal("MinscKindrekTOB","GLOBAL",1)~
==BKINDR25
@42  
=
@43
EXIT



CHAIN
IF ~InParty("Kindrek")
See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("NaliaKindrekTOB","GLOBAL",0)~ THEN BNALIA25 KKNaliaBully
@44
DO ~SetGlobal("NaliaKindrekTOB","GLOBAL",1)~
== BKINDR25
@45  
== BNALIA25
@46
== BKINDR25
@47
EXIT



CHAIN
IF ~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",STATE_SLEEPING)
Global("SarevokKindrekTOB","GLOBAL",0)~ THEN BKINDR25 KKSarevokOpportunity
@48  
DO ~SetGlobal("SarevokKindrekTOB","GLOBAL",1)~
==BSAREV25
@49
==BKINDR25
@50
== BSAREV25
@51
== BKINDR25
@52
EXIT



CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("ValygarKindrekTOB","GLOBAL",0)~ THEN BKINDR25 KKValygarFuture
@53  
DO ~SetGlobal("ValygarKindrekTOB","GLOBAL",1)~
== BVALYG25
@54
== BKINDR25
@55
== BVALYG25
@56
== BKINDR25
@57
== BVALYG25
@58
== BKINDR25
@59
== BVALYG25
@60
EXIT



CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("ViconiaKindrekTOB","GLOBAL",0)~ THEN BKINDR25 KKViconiaTesty
@61  
DO ~SetGlobal("ViconiaKindrekTOB","GLOBAL",1)~
== BVICON25
@62
== BKINDR25
@63
== BVICON25
@64
EXIT
