INTERJECT SHOP08 0 Sola_IJ0
  == "SOLA" IF ~InParty("Sola")~ THEN @1
  == "SHOP08" IF ~InParty("Sola")~ THEN @2
  == "SOLA" IF ~InParty("Sola")~ THEN @3
  == "SHOP08" IF ~InParty("Sola")~ THEN @4
END SHOP08 0 


INTERJECT SCROLL01 0 Sola_IJ1
  == "SOLA"     IF ~InParty("Sola")~ THEN @10
  == "SCROLL01" IF ~InParty("Sola")~ THEN @11 = @12
  == "SOLA"     IF ~InParty("Sola")~ THEN @13 = @14 = @15
  == "SCROLL01" IF ~InParty("Sola")~ THEN @16
END SCROLL01 1 

APPEND BELMIN 
  IF WEIGHT #-1 ~See("Sola")
                InParty("Sola")
                Global("belminsola","AR0700",0)~ THEN BEGIN sola
    SAY #25316
      = #25318
    IF ~~ THEN 
      DO ~SetGlobal("belminsola","AR0700",1) Enemy() Attack("Sola")~ EXIT
  END
END

EXTEND_BOTTOM SPPAIN 23
  IF ~InParty("Sola")~ THEN GOTO hate_sola
END
CHAIN SPPAIN hate_sola
  @20 == "SOLA" @21
END SPPAIN 25

INTERJECT DOGHMA 0 Sola_IJ2
  == "SOLA"     IF ~InParty("Sola")~ THEN @30
  == "DOGHMA"   IF ~InParty("Sola")~ THEN @31 = @32 = @33 = @34
  == "JAHEIRAJ" IF ~InParty("Sola") InParty("Jaheira")~ THEN @36
  == "VALENJ"   IF ~InParty("Sola") InParty("Valen")~ THEN @37
  == "SOLA"     IF ~InParty("Sola") InParty("Valen")~ THEN @38
  == "SOLA"     IF ~InParty("Sola")~ THEN @35
END DOGHMA 1

INTERJECT MESSEN 7 Sola_IJ3
  == "SOLA"     IF ~InParty("Sola")~ THEN @40 = @41 = @42
END MESSEN 7

INTERJECT TREVIL01 5 Sola_IJ4
  == "SOLA"     IF ~InParty("Sola")~ THEN @50 
END TREVIL01 6

INTERJECT CEFALDOR 6 Sola_IJ5
  == "SOLA"     IF ~InParty("Sola")~ THEN @60
  == "CEFALDOR" IF ~InParty("Sola")~ THEN @61
  == "SOLA"     IF ~InParty("Sola")~ THEN @62 = @63
END CEFALDOR 0

INTERJECT PALKNI05 0 Sola_IJ6
  == "SOLA"     IF ~InParty("Sola")~ THEN @70
  == "PALKNI05" IF ~InParty("Sola")~ THEN @71 = @72 = @73
  == "SOLA"     IF ~InParty("Sola")~ THEN @74
END PALKNI05 3

INTERJECT SAMIA 1 Sola_IJ7
  == "SOLA"     IF ~InParty("Sola")~ THEN @80 = @81
END SAMIA 4


INTERJECT FIRWLF01 1 Sola_IJ8
  == "SOLA"     IF ~InParty("Sola")~ THEN @90 = #33567
END FIRWLF01 2

INTERJECT FIRWLF01 2 Sola_IJ8
  == "SOLA"     IF ~InParty("Sola")~ THEN @90 = #37370
END FIRWLF01 8

INTERJECT FIRKRA02 0 Sola_IJ9
  == "SOLA"     IF ~InParty("Sola")~ THEN @100
  == "FIRKRA02" IF ~InParty("Sola")~ THEN @101
END FIRKRA02 1

INTERJECT FIRKRA02 20 Sola_IJ10
  == "SOLA"     IF ~InParty("Sola")~ THEN @102 = @103 = @104
  == "FIRKRA02" IF ~InParty("Sola")~ THEN @105
END FIRKRA02 21

INTERJECT FIRMAG01 0 Sola_IJ11
  == "SOLA"     IF ~InParty("Sola")~ THEN @110
END FIRMAG01 1

INTERJECT KPCAPT01 11 Sola_IJ12
  == "SOLA"     IF ~InParty("Sola")~ THEN @120 = @121 = @122
END KPCAPT01 many_arrows

APPEND KPCAPT01
  IF ~~ THEN BEGIN many_arrows
    SAY @123
    IF ~~ THEN DO ~GiveItemCreate("arow08",Player1,100,0,0)
                   GiveItemCreate("arow04",Player1,100,0,0)
                   GiveItemCreate("bolt04",Player1,100,0,0)~ EXIT
  END
END

INTERJECT VICONI 8 Sola_IJ13
  == "VICONI"     IF ~InParty("Sola")~ THEN @130
  == "SOLA"       IF ~InParty("Sola")~ THEN @131
  == "VICONI"     IF ~InParty("Sola")~ THEN @132
END SOLA free_vic

INTERJECT VICONI 2 Sola_IJ14
  == "VICONI"     IF ~InParty("Sola")~ THEN @140
  == "SOLA"       IF ~InParty("Sola")~ THEN @141
END VICONI 25

APPEND SOLA
  IF ~~ THEN BEGIN free_vic
    SAY @133
    IF ~~ THEN DO
~ActionOverride("Viconia",JumpToPoint([1824.1141]))
FadeFromColor([20.0],0)
SetGlobal("ViconiaStake","AR1000",2)
SetGlobal("ViconiaFree","AR1000",1)~ EXIT
  END
END

INTERJECT DELON 10 Sola_IJ15
  == "SOLA"       IF ~InParty("Sola")~ THEN @150 = @151 = @152 = @153
END DELON 20 

INTERJECT_COPY_TRANS TOLGER 2 Sola_IJ17
  == "SOLA"         IF ~InParty("Sola")~ THEN @160
  == "TOLGER"       IF ~InParty("Sola")~ THEN @161 = @162
  == "SOLA"         IF ~InParty("Sola")~ THEN @163
  == "TOLGER"       IF ~InParty("Sola")~ THEN @164
  == "SOLA"         IF ~InParty("Sola")~ THEN @165
  == "TOLGER"       IF ~InParty("Sola")~ THEN @166
END 

INTERJECT UHOGRE01 9 Sola_IJ18
  == "SOLA"         IF ~InParty("Sola")~ THEN @170
  == "UHOGRE01"         IF ~InParty("Sola")~ THEN @171
  == "SOLA"         IF ~InParty("Sola")~ THEN @172 = @173
END UHOGRE01 10

INTERJECT UHOGRE01 10 Sola_IJ19
  == "SOLA"         IF ~InParty("Sola")~ THEN #33310
END UHOGRE01 15

INTERJECT VALYGAR 3 Sola_IJ20
  == "SOLA"         IF ~InParty("Sola")~ THEN @180
END VALYGAR 47

APPEND SHADEL
  IF WEIGHT #-1 ~InParty("Sola")~ THEN BEGIN shade0
    SAY @190
    IF ~~ THEN EXTERN SOLA shade1
  END
  CHAIN2 SOLA shade1
      @191
    == @192
    == @193
    == @194 = @195 = @196 = @197
    == @198 
    == @199
    == @200 = @201
    == @202
    == @203
  END SHADEL shade2
  IF ~~ THEN BEGIN shade2
    SAY @204
    IF ~~ THEN DO
~CreateCreatureObjectDoor("solaspi",Myself,0,0,0)
ActionOverride("rngsha02",Enemy())
Enemy()
ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_ENERGY)
ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
ReallyForceSpell(Myself,WIZARD_GLOBE_OF_INVULNERABILITY)
ReallyForceSpell("sola",WIZARD_LOWER_RESISTANCE)
ReallyForceSpell("sola",WIZARD_LOWER_RESISTANCE)
ReallyForceSpell("sola",WIZARD_LOWER_RESISTANCE)
ReallyForceSpell("sola",WIZARD_GREATER_MALISON)
ReallyForceSpell("sola",WIZARD_POWER_WORD_BLIND)
ReallyForceSpell("sola",WIZARD_SYMBOL_FEAR)
ActionOverride("Sola",ReallyForceSpellRES("solaspl","sola"))~ EXIT
  END
END

INTERJECT OBSSOL01 5 Sola_IJ21
  == "SOLA"         IF ~InParty("Sola")~ THEN @210
  == "OBSSOL01"         IF ~InParty("Sola")~ THEN @211 = @212 = @213
  == "SOLA"         IF ~InParty("Sola")~ THEN @214
  == "OBSSOL01"         IF ~InParty("Sola")~ THEN @215
END OBSSOL01 3

INTERJECT GAAL 0 Sola_IJ22
  == "SOLA"         IF ~InParty("Sola")~ THEN @220
  == "GAAL"         IF ~InParty("Sola")~ THEN @221
  == "SOLA"         IF ~InParty("Sola")~ THEN @222
  == "GAAL"         IF ~InParty("Sola")~ THEN @223
  == "SOLA"         IF ~InParty("Sola")~ THEN @224
  == "GAAL"         IF ~InParty("Sola")~ THEN @225
  == "SOLA"         IF ~InParty("Sola")~ THEN @226
  == "GAAL"         IF ~InParty("Sola")~ THEN @227
  == "SOLA"         IF ~InParty("Sola")~ THEN @228 = @229
END GAAL 3

INTERJECT RAELIS 64 Sola_IJ23
  == "SOLA"         IF ~InParty("Sola")~ THEN @230
  == "RAELIS"         IF ~InParty("Sola")~ THEN @231
  == "SOLA"         IF ~InParty("Sola")~ THEN @232
  == "RAELIS"         IF ~InParty("Sola")~ THEN @233 = @234
  == "SOLA"         IF ~InParty("Sola")~ THEN @235
  == "RAELIS"         IF ~InParty("Sola")~ THEN @236
  == "SOLA"         IF ~InParty("Sola")~ THEN @237
  == "RAELIS"         IF ~InParty("Sola")~ THEN @238
  == "SOLA"         IF ~InParty("Sola")~ THEN @239
END RAELIS 65

INTERJECT UDSIMYAZ 13 Sola_IJ24
  == "UDSIMYAZ"     IF ~InParty("Sola")~ THEN @240
  == "SOLA"         IF ~InParty("Sola")~ THEN @241
  == "UDSIMYAZ"     IF ~InParty("Sola")~ THEN @242
  == "SOLA"         IF ~InParty("Sola")~ THEN @243
  == "UDSIMYAZ"     IF ~InParty("Sola")~ THEN @244
  == "SOLA"         IF ~InParty("Sola")~ THEN @245
END UDSIMYAZ 15

INTERJECT UDILSLA2 8 Sola_IJ25
  == "SOLA"         IF ~InParty("Sola")~ THEN @250 = @251 = @252
END UDILSLA2 9

INTERJECT c6drizz1 40 Sola_IJ26
  == "SOLA"         IF ~InParty("Sola")~ THEN @260
  == "c6drizz1"     IF ~InParty("Sola")~ THEN @261
  == "SOLA"         @999262
  == "c6drizz1"     @263
  == "SOLA"         @264
  == "c6drizz1"     @265
  == "SOLA"         @266
  == "c6drizz1"     @267
  == "SOLA"         @268
  == "c6drizz1"     @269 = @270 = @271
  == "SOLA"         @272
  == "c6drizz1"     @273
  == "SOLA"         @274
  == "c6drizz1"     @275
  == "SOLA"         @276
  == "c6drizz1"     @277
  == "SOLA"         @278
END c6drizz1 38

INTERJECT suelf5 0 Sola_IJ27
  == "SOLA" IF ~InParty("Sola")~ THEN @280
END suelf5 1

INTERJECT suelf5 2 Sola_IJ28
  == "SOLA" IF ~InParty("Sola")~ THEN #54471
END suelf4 2

INTERJECT sudemin 2 Sola_IJ29
  == "sudemin" IF ~InParty("Sola")~ THEN @290
  == "SOLA" IF ~InParty("Sola")~ THEN @291
  == "sudemin" IF ~InParty("Sola")~ THEN @292
  == "SOLA" IF ~InParty("Sola")~ THEN @293 = @294
END sudemin 4

INTERJECT suavatar 13 Sola_IJ30
  == "suavatar" IF ~InParty("Sola")~ THEN @300
END suavatar 11

INTERJECT hellsare 24 Sola_IJ31
  == "SOLA" IF ~InParty("Sola")~ THEN @310
END HELLSARE 25

INTERJECT_COPY_TRANS SURAAM 2 Sola_IJ32
  == "SOLA" IF ~InParty("Sola")~ THEN @320
  == "SURAAM" IF ~InParty("Sola")~ THEN @321
  == "SOLA" IF ~InParty("Sola")~ THEN @322
  == "SURAAM" IF ~InParty("Sola")~ THEN @323
  == "SOLA" IF ~InParty("Sola")~ THEN @324
  == "SURAAM" IF ~InParty("Sola")~ THEN @325
  == "SOLA" IF ~InParty("Sola")~ THEN @326
  == "SURAAM" IF ~InParty("Sola")~ THEN @327
END
