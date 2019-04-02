BEGIN BPRENASH

CHAIN
IF ~See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("SurpriseKindrek","LOCALS",0)~
THEN BPRENASH SurpriseKindrek
@0
DO ~SetGlobal("SurpriseKindrek","LOCALS",1)~
== BKINDREK
@1  
== BPRENASH
@2
 DO ~Enemy()SetGlobal("KindrekPrenashFight","GLOBAL",1)
 ReallyForceSpell(Myself,WIZARD_STONE_SKIN)
 ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_NORMAL_WEAPONS)
 ReallyForceSpell(Myself,WIZARD_FIRE_SHIELD_BLUE)
 ReallyForceSpell(Myself,WIZARD_ARMOR)~
EXIT
