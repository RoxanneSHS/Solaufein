BEGIN solafoe

IF ~Global("SolaFoeFight","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
=@2
IF ~~ THEN REPLY @3  GOTO 2
IF ~~ THEN REPLY @4  GOTO 7
IF ~~ THEN REPLY @5  GOTO 8
END

IF ~~ THEN BEGIN 2
  SAY @6 
  =@7
  IF ~IsValidForPartyDialog("VICONIA")~ THEN GOTO 4
  IF ~!IsValidForPartyDialog("VICONIA")~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN EXTERN SOLA damnyou
END

IF ~~ THEN BEGIN thinknot
  SAY @10
  IF ~~ THEN GOTO drider
END

IF ~~ THEN BEGIN 7
  SAY @11 = @200
  =@7
  IF ~IsValidForPartyDialog("VICONIA")~ THEN GOTO 4
  IF ~!IsValidForPartyDialog("VICONIA")~ THEN GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY @12
  =@7
  IF ~IsValidForPartyDialog("VICONIA")~ THEN GOTO 4
  IF ~!IsValidForPartyDialog("VICONIA")~ THEN GOTO 5
END

IF ~~ THEN BEGIN drider
  SAY @14 
= @13 
  IF ~~ THEN DO ~IncrementGlobal("SolaFoeFight","GLOBAL",1)~ EXIT
END

APPENDI SOLA
  IF ~~ THEN BEGIN damnyou
    SAY @175
    IF ~~ THEN EXTERN solafoe thinknot
  END
END