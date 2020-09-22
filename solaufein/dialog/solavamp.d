EXTEND_BOTTOM BODHIAMB 5
  IF ~InParty("Sola")
!Dead("Sola")
Global("SolaVamp","GLOBAL",0)~ THEN DO ~SetGlobal("SolaVamp","GLOBAL",1)~
  EXTERN BODHIAMB take_sola
END

APPEND BODHIAMB 
  IF ~~ THEN BEGIN take_sola
    SAY @1 = @2
    IF ~~ THEN EXTERN SOLA never_take_me
  END
  
  IF ~~ THEN BEGIN yes_i_will
    SAY @4
    IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("SolaVCut")~ JOURNAL @1005 EXIT
  END
  
  IF WEIGHT #-1 ~!Global("SolaVampire","GLOBAL",0)~ THEN BEGIN where_was_i
    SAY @6
    COPY_TRANS BODHIAMB 5
  END
END

EXTEND_BOTTOM C6BODHI 1
  IF ~~ THEN REPLY #18694 GOTO 22
END

EXTEND_BOTTOM C6BODHI 21
 IF ~Global("SolaVampire","GLOBAL",2)~ THEN EXTERN C6BODHI 23
END

EXTEND_TOP C6BODHI 23
 IF ~Global("SolaVampire","GLOBAL",2)~ THEN REPLY @7 EXTERN C6BODHI hand_over
END

APPEND C6BODHI 
  IF ~~ THEN BEGIN hand_over
    SAY @8  
    IF ~IsValidForPartyDialogue("Valygar")~ THEN EXTERN BVALYGA valy_hates
    IF ~!IsValidForPartyDialogue("Valygar")~ THEN EXTERN C6BODHI moon
  END
  IF ~~ THEN BEGIN moon
    SAY @11
    IF ~~ THEN EXTERN SOLAVAMP start
  END
  IF ~~ THEN BEGIN hush_now
    SAY @40
    COPY_TRANS C6BODHI 23
    IF ~~ THEN REPLY @80 EXTERN C6BODHI 22
  END
END

APPEND BVALYGA 
  IF ~~ THEN BEGIN valy_hates
    SAY @9 = @10
    IF ~~ THEN EXTERN C6BODHI moon
  END
END

APPEND sola
  IF ~~ THEN BEGIN never_take_me
    SAY @3 
    IF ~~ THEN EXTERN BODHIAMB yes_i_will
  END

  IF WEIGHT #-1 ~Global("SolaBackFromDead","GLOBAL",1)~ THEN BEGIN thanks
    SAY @50 = @51 = @52 = @53 = @54 = @55 = @56
    IF ~~ THEN REPLY @57 DO ~SetGlobal("SolaBackFromDead","GLOBAL",2)~ 
      GOTO thanks_2
  END

  IF ~~ THEN BEGIN thanks_2
    SAY @58 = @59 = @60 
    IF ~~ THEN REPLY @61 GOTO of_course
    IF ~~ THEN REPLY @62 GOTO compassion
    IF ~GlobalGT("SolaTalk","GLOBAL",13)~ THEN REPLY @63 GOTO love
  END

  IF ~~ THEN BEGIN of_course SAY @64 IF ~~ THEN GOTO some END
  IF ~~ THEN BEGIN compassion SAY @65 IF ~~ THEN GOTO some END
  IF ~~ THEN BEGIN love SAY @66 = @67 IF ~~ THEN GOTO some END

  IF ~~ THEN BEGIN some
    SAY @68 
    IF ~~ THEN DO ~ReallyForceSpell(Myself,4241)
ReallyForceSpell(Myself,4242)
AddSpecialAbility("solarepu")
AddSpecialAbility("solarepu")
AddSpecialAbility("solarepu")~ GOTO some2
END

  IF ~~ THEN BEGIN some2
    SAY @69 = @70
    IF ~~ THEN REPLY @71 DO ~SetGlobal("SolaLeave","GLOBAL",0)
  SetGlobal("SolaJoin","GLOBAL",5)~ GOTO wish
    IF ~~ THEN REPLY @72 DO ~SetGlobal("SolaLeave","GLOBAL",3)~ GOTO wish
  END
  IF ~~ THEN BEGIN wish
    SAY @73
    IF ~~ THEN EXIT
  END
END

BEGIN solavamp

IF ~~ THEN BEGIN start
  SAY @20 = @21 = @22 = @23 = @24
  IF ~~ THEN REPLY @25 GOTO what
  IF ~~ THEN REPLY @26 GOTO shadow
END

IF ~~ THEN BEGIN what
  SAY @27
  IF ~~ THEN GOTO dream
END

IF ~~ THEN BEGIN shadow
  SAY @28
  IF ~~ THEN GOTO dream
END

IF ~~ THEN BEGIN dream
  SAY @29 = @30 = @31 = @32 = @33 = @34 = @35
  IF ~~ THEN EXTERN C6BODHI hush_now
END

EXTEND_BOTTOM SUDEMIN 2
	IF ~PartyHasItem("solabody")~ THEN REPLY @100 EXTERN SUDEMIN 3 
END

EXTEND_TOP C6ELHAN2 70
  IF ~PartyHasItem("solabody")~ THEN REPLY @101 EXTERN C6ELHAN2 76
END

EXTEND_TOP WARSAGE 0
IF ~!Dead("c6bodhi")
Global("solabody","GLOBAL",2)~
 THEN REPLY @102 EXTERN WARSAGE 6
END

EXTEND_TOP WARSAGE 0
IF ~PartyHasItem("solabody")~
 THEN REPLY @103 EXTERN WARSAGE 5
END

ADD_TRANS_TRIGGER IMNBOOK1 0 ~OR(2)
!Global("RevealUmar","GLOBAL",1)
!PartyHasItem("solabody")~

EXTEND_TOP IMNBOOK1 0
 IF ~PartyHasItem("solabody")
Global("RevealUmar","GLOBAL",1)
!PartyHasItem("MISCBL")
!PartyHasItem("MISCBM")
!PartyHasItem("MISCBN")
!PartyHasItem("MISCBO")~
   THEN REPLY #59383 EXTERN IMNBOOK1 4
END
