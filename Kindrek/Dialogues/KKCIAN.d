BEGIN KKCIAN

CHAIN
IF ~See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("CianSurpriseKindrek","LOCALS",0)~
THEN KKCIAN CianSurpriseKindrek
@0
DO ~SetGlobal("CianSurpriseKindrek","LOCALS",1)~
== BKINDREK
@1
== KKCIAN
@2
== BKINDREK
@3
== KKCIAN
@4
=
@5
== BKINDREK
@6
== KKCIAN
@7
== BKINDREK
@8
END
 ++ @9 GOTO CianSurpriseKindrek1
 ++ @10 GOTO CianSurpriseKindrek2
 ++ @11 GOTO CianSurpriseKindrek3

CHAIN KKCIAN CianSurpriseKindrek1
@12
=
@13
DO ~SetGlobal("KindrekCianFight","GLOBAL",1)ReallyForceSpell(Myself,WIZARD_STONE_SKIN)~
EXIT

CHAIN KKCIAN CianSurpriseKindrek2
@14
=
@13
DO ~SetGlobal("KindrekCianFight","GLOBAL",1)ReallyForceSpell(Myself,WIZARD_STONE_SKIN)~
EXIT

CHAIN KKCIAN CianSurpriseKindrek3
@15
=
@16
=
@17
== BKINDREK
@18
END
 ++ @19 GOTO CianSurpriseKindrek4
 ++ @20 GOTO CianSurpriseKindrek2
 ++ @21 GOTO CianSurpriseKindrek4
 ++ @22 GOTO CianSurpriseKindrek1

CHAIN KKCIAN CianSurpriseKindrek4
@23
== BKINDREK
@24
DO ~SetGlobal("BetrayedKindrekToCian","GLOBAL",1)ClearAllActions()StartCutSceneMode()StartCutScene("KKBETRAY")~
EXIT
