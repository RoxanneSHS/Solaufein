REPLACE ~UHMER01~

IF ~~ THEN BEGIN 5
  SAY #32640
  IF ~GlobalGT("SolaTalk","GLOBAL",13)~ THEN DO ~StartStore("wwmer01",LastTalkedToBy(Myself))~ EXIT
  IF ~!GlobalGT("SolaTalk","GLOBAL",13)~ THEN DO ~StartStore("uhmer01",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY #32663
  IF ~GlobalGT("SolaTalk","GLOBAL",13)~ THEN DO ~StartStore("wwmer01",LastTalkedToBy(Myself))~ EXIT
  IF ~!GlobalGT("SolaTalk","GLOBAL",13)~ THEN DO ~StartStore("uhmer01",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY #38049 
  IF ~GlobalGT("SolaTalk","GLOBAL",13)~ THEN DO ~StartStore("wwmer01",LastTalkedToBy(Myself))~ EXIT
  IF ~!GlobalGT("SolaTalk","GLOBAL",13)~ THEN DO ~StartStore("uhmer01",LastTalkedToBy(Myself))~ EXIT
END

END
