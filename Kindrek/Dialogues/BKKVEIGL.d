BEGIN BKKVEIGL



CHAIN
IF ~See("Kindrek")
!StateCheck("Kindrek",STATE_SLEEPING)
Global("KindrekVeigleTalk","LOCALS",1)~
THEN BKKVEIGL KindrekVeigleTalk
@0
DO ~SetGlobal("KindrekVeigleTalk","LOCALS",2)~
== BKINDREK
@1
== BKKVEIGL
@2
== BKINDREK
@3
== BKKVEIGL
@4
== BKINDREK
@5
== BKKVEIGL
@6
== BKINDREK
@7
== BKKVEIGL
@8
== BKINDREK
@9
END
 ++ @10 DO ~SetGlobal("AcceptedVeigleQuest","GLOBAL",1)~ GOTO KindrekVeigleTalk1
 ++ @11 GOTO KindrekVeigleTalk2
 ++ @12 GOTO KindrekVeigleTalk3
 ++ @13 GOTO KindrekVeigleTalk4

CHAIN BKKVEIGL KindrekVeigleTalk1
@14 DO ~EscapeArea()~
EXIT

CHAIN BKKVEIGL KindrekVeigleTalk2
@15
== BKINDREK
@15
== BKKVEIGL
@16
== BKINDREK
@17
END
 ++ @18 GOTO KindrekVeigleTalk5
 ++ @19 DO ~SetGlobal("AcceptedVeigleQuest","GLOBAL",1)~ GOTO KindrekVeigleTalk1
 ++ @12 GOTO KindrekVeigleTalk3

CHAIN BKKVEIGL KindrekVeigleTalk3
@20
== BKINDREK
@21
END
 ++ @22 DO ~SetGlobal("AcceptedVeigleQuest","GLOBAL",1)~ GOTO KindrekVeigleTalk1
 ++ @23 GOTO KindrekVeigleTalk6
 ++ @24 GOTO KindrekVeigleTalk7

CHAIN BKKVEIGL KindrekVeigleTalk4
@25
== BKINDREK
@26
END
 ++ @27 GOTO KindrekVeigleTalk8
 ++ @28 DO ~SetGlobal("AcceptedVeigleQuest","GLOBAL",1)~ GOTO KindrekVeigleTalk1

CHAIN BKKVEIGL KindrekVeigleTalk5
@29
== BKINDREK
@30
END
 ++ @27 GOTO KindrekVeigleTalk8
 ++ @28 DO ~SetGlobal("AcceptedVeigleQuest","GLOBAL",1)~ GOTO KindrekVeigleTalk1

CHAIN BKKVEIGL KindrekVeigleTalk6
@31
== BKINDREK
@30
END
 ++ @27 GOTO KindrekVeigleTalk8
 ++ @28 DO ~SetGlobal("AcceptedVeigleQuest","GLOBAL",1)~ GOTO KindrekVeigleTalk1

CHAIN BKKVEIGL KindrekVeigleTalk7
@25
== BKINDREK
@32
END
 ++ @27 GOTO KindrekVeigleTalk8
 ++ @28 DO ~SetGlobal("AcceptedVeigleQuest","GLOBAL",1)~ GOTO KindrekVeigleTalk1

CHAIN BKKVEIGL KindrekVeigleTalk8
@33 DO ~EscapeArea()~
== BKINDREK
@34 DO ~SetGlobal("KindrekJoined","LOCALS",0)LeaveParty()EscapeArea()~
EXIT