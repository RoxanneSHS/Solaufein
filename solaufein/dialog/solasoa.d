EXTEND_BOTTOM PLAYER1 16
  IF ~IsValidForPartyDialogue("Sola")
      Global("SolaBeatJon","GLOBAL",0)~ THEN
    DO ~SetGlobal("IrenicusBeat","AR2806",2)
        SetGlobal("SolaBeatJon","GLOBAL",1)
        SetGlobal("HadPeopleBeforeHell","LOCALS",1)~ EXTERN SOLA beat_jon_1
END

EXTEND_BOTTOM PLAYER1 25
  IF ~IsValidForPartyDialogue("Sola")
      Global("SolaWelcomeHell","GLOBAL",0)~ THEN 
    DO ~SetGlobal("SolaWelcomeHell","GLOBAL",1)~ EXTERN SOLA in_hell_1
END

EXTEND_BOTTOM PLAYER1 33
  IF ~IsValidForPartyDialogue("Sola")
Global("SolaTOL","GLOBAL",0)
GlobalGT("SolaTalk","GLOBAL",13)
GlobalsGT("SolaRemorse","SolaPragma")~ THEN 
      DO ~SetGlobal("SolaTOL","GLOBAL",1)~
      EXTERN PLAYER1 tree_of_life_rem
  IF ~IsValidForPartyDialogue("Sola")
Global("SolaTOL","GLOBAL",0)
GlobalGT("SolaTalk","GLOBAL",13)
!GlobalsGT("SolaRemorse","SolaPragma")~ THEN 
      DO ~SetGlobal("SolaTOL","GLOBAL",1)~
      EXTERN PLAYER1 tree_of_life_pra
  IF ~IsValidForPartyDialogue("Sola")
Global("SolaTOL","GLOBAL",0)
!GlobalGT("SolaTalk","GLOBAL",13)~ THEN 
      DO ~SetGlobal("SolaTOL","GLOBAL",1)~
      EXTERN PLAYER1 tree_of_life_norom
END

APPEND PLAYER1
  IF ~~ THEN BEGIN tree_of_life_rem
    SAY @4 = @5
    IF ~~ THEN EXTERN SOLA tree_of_life_rem 
  END 
  IF ~~ THEN BEGIN tree_of_life_pra
    SAY @12 = @5
    IF ~~ THEN EXTERN SOLA tree_of_life_pra 
  END 
  IF ~~ THEN BEGIN tree_of_life_norom
    SAY @20 
    IF ~~ THEN REPLY @21 EXTERN SOLA tree_of_life_norom 
    IF ~~ THEN REPLY @22 EXTERN SOLA tree_of_life_norom 
    IF ~~ THEN REPLY @23 EXTERN SOLA tree_of_life_norom_kill
  END 
END

APPEND SOLA 
  IF ~~ THEN BEGIN beat_jon_1
    SAY @1
    COPY_TRANS PLAYER1 16
  END
 
  IF ~~ THEN BEGIN in_hell_1
    SAY @2 = @3
    COPY_TRANS PLAYER1 25
  END
  
  IF ~~ THEN BEGIN tree_of_life_rem
    SAY @6 = @7 = @8 = @9 = @10 = @11
    COPY_TRANS PLAYER1 33
  END
  
  IF ~~ THEN BEGIN tree_of_life_pra
    SAY @13 = @14 = @15 = @9916 = @9917 = @18 = @19
    COPY_TRANS PLAYER1 33
  END
  
  IF ~~ THEN BEGIN tree_of_life_norom
    SAY @25 = @9916 = @9917 = @18 = @26 
    COPY_TRANS PLAYER1 33
  END
  
  IF ~~ THEN BEGIN tree_of_life_norom_kill
    SAY @24
    COPY_TRANS PLAYER1 33
  END
  
END
