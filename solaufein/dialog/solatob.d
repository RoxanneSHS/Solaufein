INTERJECT_COPY_TRANS ILLASERA 8 Sola_TOB0
  == "SOLA"     IF ~InParty("Sola")~ THEN @1
  == "ILLASERA" IF ~InParty("Sola")~ THEN @2
  == "SOLA"     IF ~InParty("Sola")~ THEN @3
  == "ILLASERA" IF ~InParty("Sola")~ THEN @4
END 

INTERJECT_COPY_TRANS SAREV25A 59 Sola_TOB1
  == "SOLA"     IF ~InParty("Sola") !GlobalsGT("SolaRemorse","SolaPragma")~ 
                THEN @10
  == "SOLA"     IF ~InParty("Sola") GlobalsGT("SolaRemorse","SolaPragma")~ 
                THEN @11
  == "SAREV25A" IF ~InParty("Sola")~ THEN @12
END 

INTERJECT_COPY_TRANS SARMEL01 5 Sola_TOB2
  == "SOLA"     IF ~InParty("Sola")~ THEN @20
END

INTERJECT SARMEL01 16 Sola_TOB3
  == "SOLA"     IF ~InParty("Sola")~ THEN @21
END SARMEL01 17 

INTERJECT SARCPT01 23 Sola_TOB4
  == "SOLA"     IF ~InParty("Sola")~ THEN @21
END SARMEL01 24 

INTERJECT_COPY_TRANS SARKIS01 36 Sola_TOB5
  == "SOLA"     IF ~InParty("Sola")~ THEN @40
END

INTERJECT_COPY_TRANS SARKIS01 22 Sola_TOB5
  == "SOLA"     IF ~InParty("Sola")~ THEN @40
END

INTERJECT_COPY_TRANS SARMAG01 8 Sola_TOB6
  == "SOLA"     IF ~InParty("Sola")~ THEN @50
  == "SARMAG01"     IF ~InParty("Sola")~ THEN @51
END

INTERJECT SARBUL06 0 Sola_TOB7
  == "SOLA"     IF ~InParty("Sola")~ THEN @60
  == "SARBUL06"     IF ~InParty("Sola")~ THEN @61
  == "SOLA"     IF ~InParty("Sola")~ THEN @62
  == "SARBUL06"     IF ~InParty("Sola")~ THEN @63
  == "SOLA"     IF ~InParty("Sola")~ THEN @64
END SARBUL06 4

EXTEND_BOTTOM SARVOLO 9 #1
  IF ~InParty("Sola")~ THEN REPLY @70 GOTO sola
END

CHAIN3 SARVOLO sola
  @71
  == "SARVOLO" IF ~!GlobalsGT("SolaRemorse","SolaPragma")~ THEN @72
  == "SARVOLO" IF ~GlobalsGT("SolaRemorse","SolaPragma")~ THEN @73
  == "SOLA" @74
END SARVOLO 9

INTERJECT SARBHA03 4 Sola_TOB8
  == "SOLA" IF ~InParty("Sola")~ THEN @80 = @81
  == "SARBHA03" IF ~InParty("Sola")~ THEN @82
END SARBHA03 5

INTERJECT_COPY_TRANS FINSOL01 27 Sola_TOB_End
  == "SOLA" IF ~InParty("Sola") !Global("SolaTalk","GLOBAL",-1)~ 
            THEN @1000 = @1001 = @1002 = @1003 = @1004 = @1005 = @1006
END
