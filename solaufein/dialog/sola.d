BEGIN sola

IF ~Global("SolaufeinSummoned","GLOBAL",1)~ THEN BEGIN 0
  SAY @1 
  IF ~~ THEN DO ~SetGlobal("SolaufeinSummoned","GLOBAL",2)~ GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY @2 
  IF ~~ THEN GOTO 5
END

IF ~Global("SolaTalk","GLOBAL",0)~ THEN BEGIN 2
  SAY @3 
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @4 
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5 
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @6 
  IF ~~ THEN REPLY @7 
    DO ~SetGlobal("SolaJoin","GLOBAL",1)
        SetGlobal("SolaTalk","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @8 
    DO ~SetGlobal("SolaTalk","GLOBAL",1)~ GOTO surface
  IF ~~ THEN REPLY @9 
    GOTO 6
END

IF ~~ THEN BEGIN surface
  SAY @300
  IF ~~ THEN DO ~SetGlobal("SolaTalk","GLOBAL",1)
SetGlobal("SolaTeleport","GLOBAL",3)
CreateVisualEffectObject("SPDIMNDR",Myself)
MoveBetweenAreas("AR2500",[300.300],10)
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @10 
  IF ~~ THEN DO ~SetGlobal("SolaNoJoin","GLOBAL",1)
ReallyForceSpell(Myself,DRYAD_TELEPORT)
Wait(1)
DestroySelf()
~ EXIT
END

IF ~Global("SolaTalk","GLOBAL",2)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 7
  SAY @11 
  IF ~~ THEN REPLY @12 
    GOTO 8
  IF ~~ THEN REPLY @13 
    GOTO 8
  IF ~~ THEN REPLY @14 
    DO ~SetGlobal("SolaTalk","GLOBAL",-1)~ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @15 
  IF ~~ THEN REPLY @16 
    GOTO 9
  IF ~~ THEN REPLY @17 
    GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @18 
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @19 
  IF ~~ THEN DO ~SetGlobal("SolaTalk","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @20 
  IF ~~ THEN EXIT
END

IF ~Global("SolaTalk","GLOBAL",4)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 12
  SAY @21 
  IF ~~ THEN REPLY @22 
    GOTO 13
  IF ~~ THEN REPLY @23 
    GOTO 10
END

IF ~~ THEN BEGIN 13
  SAY @24 
  IF ~~ THEN REPLY @25 
    GOTO 14
  IF ~~ THEN REPLY @26 
    GOTO 124
END

IF ~~ THEN BEGIN 14
  SAY @27 
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ GOTO 123
END

IF ~Global("SolaTeleport","GLOBAL",3)
!InParty(Myself)~ THEN BEGIN 15
  SAY @28 
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @29 
  IF ~~ THEN DO ~SetGlobal("SolaLeave","GLOBAL",4)~ REPLY @30 
    EXIT
  IF ~~ THEN REPLY @31 
    DO ~SetGlobal("SolaJoin","GLOBAL",1)
SetGlobal("SolaTeleport","GLOBAL",4)~ EXIT
END

IF ~Global("SolaTeleport","GLOBAL",1)
    AreaCheck("AR2401")~ THEN BEGIN 17
  SAY @32 
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @33 
  IF ~~ THEN DO ~SetGlobal("SolaTeleport","GLOBAL",2)~ EXIT
END

IF ~Global("SolaTalk","GLOBAL",7)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 19
  SAY @34 
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @35 
  IF ~~ THEN REPLY @36 
    DO ~IncrementGlobal("SolaPragma","GLOBAL",1)~ GOTO 21
  IF ~~ THEN REPLY @37 
    DO ~IncrementGlobal("SolaRemorse","GLOBAL",1)~ GOTO 23
  IF ~~ THEN REPLY @38 
    GOTO 10
END

IF ~~ THEN BEGIN 21
  SAY @39 
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @40 
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @41 
  IF ~~ THEN GOTO 22
END

IF ~Global("SolaTalk","GLOBAL",5)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 24
  SAY @42 
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @43 
  IF ~~ THEN REPLY @44 GOTO 26
  IF ~~ THEN REPLY @45 GOTO 29
  IF ~~ THEN REPLY @46 GOTO 30
END

IF ~~ THEN BEGIN 26
  SAY @47 
  IF ~~ THEN REPLY @48 
    GOTO 27
  IF ~~ THEN REPLY @49 
    GOTO 28
END

IF ~~ THEN BEGIN 27
  SAY @50 
  IF ~~ THEN DO ~IncrementGlobal("SolaPragma","GLOBAL",1)
SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @51 
  IF ~~ THEN DO ~IncrementGlobal("SolaRemorse","GLOBAL",1)
SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @52 
  IF ~~ THEN REPLY @53 GOTO 28
  IF ~~ THEN REPLY @54 GOTO 28
  IF ~~ THEN REPLY @2030 GOTO bowers1
END

IF ~~ THEN BEGIN bowers1 SAY @2031 IF ~~ THEN REPLY @2032 GOTO bowers2 END
IF ~~ THEN BEGIN bowers2 SAY @2033 IF ~~ THEN REPLY @2034 GOTO bowers3 END
IF ~~ THEN BEGIN bowers3 SAY @2035 IF ~~ THEN 
  DO ~IncrementGlobal("SolaPragma","GLOBAL",1)
SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @55 
  IF ~~ THEN REPLY @56 
    GOTO 27
  IF ~~ THEN REPLY @57 
    GOTO 27
END

IF ~Global("SolaTalk","GLOBAL",9)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 31 
  SAY @58 
  IF ~~ THEN REPLY @59 
    GOTO 32
  IF ~~ THEN REPLY @60 
    GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @61 
  IF ~~ THEN REPLY @62 
    DO ~IncrementGlobal("SolaRemorse","GLOBAL",1)~ GOTO 33
  IF ~~ THEN REPLY @63 
    DO ~IncrementGlobal("SolaPragma","GLOBAL",1)~ GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @64 
  IF ~~ THEN REPLY @65 
    GOTO 34
  IF ~~ THEN REPLY @66 
    GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @67 
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~Global("SolaTalk","GLOBAL",10)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 35
  SAY @68 
  IF ~~ THEN REPLY @69 
    DO ~IncrementGlobal("SolaPragma","GLOBAL",1)~ GOTO 36
  IF ~~ THEN REPLY @70 
    DO ~IncrementGlobal("SolaPragma","GLOBAL",1)~ GOTO 37
  IF ~~ THEN REPLY @71 
    DO ~IncrementGlobal("SolaRemorse","GLOBAL",1)~ GOTO 38
END

IF ~~ THEN BEGIN 36
  SAY @72 
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 37
  SAY @73 
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 38
  SAY @74 
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @75 
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @76 
  IF ~~ THEN EXIT
END

IF ~Global("SolaTalk","GLOBAL",11)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 41
  SAY @77 
  IF ~~ THEN REPLY @78 
    DO ~IncrementGlobal("SolaPragma","GLOBAL",1)~ GOTO 43
  IF ~~ THEN REPLY @79 
    DO ~IncrementGlobal("SolaRemorse","GLOBAL",1)~ GOTO 42
  IF ~~ THEN REPLY @80 
    DO ~IncrementGlobal("SolaPragma","GLOBAL",1)~ GOTO 43
  IF ~~ THEN REPLY @81 
    DO ~IncrementGlobal("SolaRemorse","GLOBAL",1)~ GOTO 43
END

IF ~~ THEN BEGIN 42
  SAY @82 
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @83 
  IF ~~ THEN REPLY @84 GOTO 44
  IF ~~ THEN REPLY @85 GOTO 44
  IF ~~ THEN REPLY @86 GOTO 44
  IF ~~ THEN REPLY @2036 GOTO bowers5
END

IF ~~ THEN BEGIN bowers5 
SAY @2037
IF ~~ THEN REPLY @2038 GOTO 44 
END

IF ~~ THEN BEGIN 44
  SAY @87 
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~Global("SolaTalk","GLOBAL",12)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 45
  SAY @88 
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @89 
  IF ~~ THEN REPLY @90 GOTO 47
  IF ~~ THEN REPLY @91 GOTO 47
  IF ~~ THEN REPLY @92 GOTO 10
END

IF ~~ THEN BEGIN 47
  SAY @93 
  IF ~~ THEN REPLY @94 
    GOTO 48
  IF ~~ THEN REPLY @95 
    GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @96 
  IF ~~ THEN REPLY @97 
    GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @98 
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @99 
  IF ~~ THEN REPLY @100 
    GOTO 51
  IF ~~ THEN REPLY @101 
    GOTO 54
  IF ~~ THEN REPLY @102 
    GOTO 55
  IF ~~ THEN REPLY @103 
    GOTO 56
  IF ~~ THEN REPLY @240 GOTO gods_credit
  IF ~~ THEN REPLY @303 DO ~SetGlobal("SolaTalk","GLOBAL",-1)~ GOTO 52
END

IF ~~ THEN BEGIN gods_credit
  SAY @241
  IF ~~ THEN GOTO 52
END 

IF ~~ THEN BEGIN 51
  SAY @104 
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY @105 
  IF ~~ THEN REPLY @106 
    GOTO 53
  IF ~~ THEN REPLY @107 
    GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @108 
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 54
  SAY @109 
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 55
  SAY @110 
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 56
  SAY @111 
  IF ~~ THEN GOTO 52
END

IF ~Global("SolaTalk","GLOBAL",13)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 57
  SAY @112 
  IF ~~ THEN REPLY @113 GOTO 58
  IF ~~ THEN REPLY @114 GOTO 61
  IF ~~ THEN REPLY @115 GOTO 58
  IF ~~ THEN REPLY @116 GOTO 61
  IF ~~ THEN REPLY @301 GOTO 10
END

IF ~~ THEN BEGIN 58
  SAY @117 
  IF ~~ THEN DO ~IncrementGlobal("SolaRemorse","GLOBAL",1)~ GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY @118 
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY @119 
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 61
  SAY @120 
  IF ~~ THEN DO ~IncrementGlobal("SolaPragma","GLOBAL",1)~ GOTO 59
END

IF ~Global("SolaTalk","GLOBAL",6)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 62 
  SAY @121 
  IF ~~ THEN REPLY @122 
    GOTO 63
  IF ~~ THEN REPLY @123 
    GOTO 10
END

IF ~~ THEN BEGIN 63
  SAY @124 
  IF ~~ THEN REPLY @125 
    GOTO 64
END

IF ~~ THEN BEGIN 64
  SAY @126 
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
  SAY @127 
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 
  SAY @128 
  IF ~~ THEN REPLY @129 
    DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~Global("SolaTalk","GLOBAL",8)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 67
  SAY @130 
  IF ~~ THEN REPLY @131 
    GOTO 10
  IF ~~ THEN REPLY @132 
    GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY @133 
  IF ~~ THEN REPLY @134 
    DO ~IncrementGlobal("SolaPragma","GLOBAL",1)~ GOTO 69
  IF ~~ THEN REPLY @135 
    DO ~IncrementGlobal("SolaRemorse","GLOBAL",1)~ GOTO 70
  IF ~~ THEN REPLY @136 
    DO ~IncrementGlobal("SolaPragma","GLOBAL",1)~ GOTO 71
END

IF ~~ THEN BEGIN 69
  SAY @137
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 70
  SAY @138 
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71
  SAY @139 
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~Global("SolaTalk","GLOBAL",14)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 72
  SAY @140 
  IF ~~ THEN REPLY @141 GOTO 73
  IF ~~ THEN REPLY @142 GOTO 76
  IF ~~ THEN REPLY @302 GOTO 10
END

IF ~~ THEN BEGIN 73
  SAY @143 
  IF ~~ THEN REPLY @144 
    GOTO 74
END

IF ~~ THEN BEGIN 74
  SAY @145 
  IF ~~ THEN REPLY @146 
    DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
  IF ~~ THEN REPLY @147 
    DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ GOTO 75
END

IF ~~ THEN BEGIN 75
  SAY @148 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76
  SAY @149 
  IF ~~ THEN REPLY @150 
    GOTO 74
END

IF ~Global("SolaMoon","GLOBAL",1)
~ THEN BEGIN 77
  SAY @151 
  IF ~~ THEN REPLY @152 
    DO ~IncrementGlobal("SolaMoon","GLOBAL",1)~ EXIT
END

IF ~Global("SolaMoon","GLOBAL",3)~ THEN BEGIN 78
  SAY @153 
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79
  SAY @154 
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 
  SAY @155 
  IF ~!Global("SolaTalk","GLOBAL",-1)~ THEN REPLY @156 
    DO ~IncrementGlobal("SolaMoon","GLOBAL",1)~ GOTO 81
  IF ~Global("SolaTalk","GLOBAL",-1)~ THEN REPLY #15239 
    DO ~IncrementGlobal("SolaMoon","GLOBAL",1)~ GOTO 81
END

IF ~~ THEN BEGIN 81
  SAY @157
  IF ~~ THEN EXIT
END

IF ~Global("SolaMoon","GLOBAL",5)~ THEN BEGIN 82
  SAY @158 
  IF ~!GlobalsGT("SolaRemorse","SolaPragma")~ THEN GOTO 83
  IF ~GlobalsGT("SolaRemorse","SolaPragma")~ THEN GOTO 86
END

IF ~~ THEN BEGIN 83
  SAY @159 
  IF ~!Global("SolaTalk","GLOBAL",-1)~ THEN GOTO 84
  IF ~Global("SolaTalk","GLOBAL",-1)~ THEN 
    DO ~IncrementGlobal("SolaMoon","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 84
  SAY @160 
  IF ~~ THEN REPLY @161 
    GOTO 85
  IF ~~ THEN REPLY @162 
    GOTO 85
END

IF ~~ THEN BEGIN 85
  SAY @163 
  IF ~~ THEN DO ~IncrementGlobal("SolaMoon","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 86
  SAY @164 
  IF ~!Global("SolaTalk","GLOBAL",-1)~ THEN GOTO 84
  IF ~Global("SolaTalk","GLOBAL",-1)~ THEN 
    DO ~IncrementGlobal("SolaMoon","GLOBAL",1)~ EXIT
END

IF ~Global("SolaSpiderSpawn","GLOBAL",2)~ THEN BEGIN 87
  SAY @165 
  IF ~~ THEN REPLY @166 
    GOTO 88
  IF ~~ THEN REPLY @167 
    GOTO 89
END

IF ~~ THEN BEGIN 88
  SAY @168 
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89
  SAY @169 
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90
  SAY @170 
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91
  SAY @171 
  IF ~~ THEN REPLY @172 
    GOTO 92
  IF ~~ THEN REPLY @173 
    DO ~IncrementGlobal("SolaSpiderSpawn","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 92
  SAY @174 
  IF ~~ THEN DO ~IncrementGlobal("SolaSpiderSpawn","GLOBAL",1)~ EXIT
END

IF ~Global("SolaFoeSpawn","GLOBAL",5)~ THEN BEGIN 94
  SAY @176 
  IF ~~ THEN REPLY @177 
    DO ~IncrementGlobal("SolaFoeSpawn","GLOBAL",1)~ GOTO 95
END

IF ~~ THEN BEGIN 95
  SAY @178 
  IF ~!Global("SolaTalk","GLOBAL",-1)~ THEN REPLY @179 
    GOTO 96
  IF ~!Global("SolaTalk","GLOBAL",-1)~ THEN REPLY @180 
    GOTO 97
  IF ~Global("SolaTalk","GLOBAL",-1)~ THEN REPLY #56625
    DO ~SetGlobal("SolaFoeSpawn","GLOBAL",6)~ EXIT
END

IF ~~ THEN BEGIN 96
  SAY @181 
  IF ~~ THEN DO ~SetGlobal("SolaFoeSpawn","GLOBAL",6)~ EXIT
END

IF ~~ THEN BEGIN 97
  SAY @182 
  IF ~~ THEN DO ~SetGlobal("SolaFoeSpawn","GLOBAL",6)~ EXIT
END

IF ~Global("SolaDiscussMorning","GLOBAL",1)~ THEN BEGIN 98
  SAY @183 
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99
  SAY @184 
  IF ~~ THEN DO ~SetGlobal("SolaDiscussMorning","GLOBAL",2)~ GOTO 100
END

IF ~~ THEN BEGIN 100
  SAY @185 
  IF ~~ THEN EXIT
END

IF ~Global("SolaDiscussEvening","GLOBAL",1)~ THEN BEGIN 101
  SAY @186 
  IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102
  SAY @187 
  IF ~~ THEN REPLY @188 
    DO ~SetGlobal("SolaDiscussEvening","GLOBAL",2)~ GOTO 103
END

IF ~~ THEN BEGIN 103
  SAY @189 
  IF ~~ THEN EXIT
END

IF ~Global("SolaDiscussWoods","GLOBAL",1)~ THEN BEGIN 104
  SAY @190 
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105
  SAY @191 
  IF ~~ THEN DO ~SetGlobal("SolaDiscussWoods","GLOBAL",2)~ GOTO 106
END

IF ~~ THEN BEGIN 106
  SAY @192 
  IF ~~ THEN EXIT
END

IF ~Global("SolaTalk","GLOBAL",3) Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN 107 
  SAY @193 
  IF ~~ THEN REPLY @194 
    GOTO 108
  IF ~~ THEN REPLY @195 
    DO ~SetGlobal("SolaPCTalk","GLOBAL",0) IncrementGlobal("SolaTalk","GLOBAL",-1)~ GOTO 114
END

IF ~~ THEN BEGIN 108
  SAY @196 
  IF ~~ THEN REPLY @197 
    GOTO 109
  IF ~~ THEN REPLY @198 
    GOTO 112
  IF ~~ THEN REPLY @199 
    GOTO 113
END

IF ~~ THEN BEGIN 109
  SAY @200 
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110
  SAY @201 
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ GOTO 111
END

IF ~~ THEN BEGIN 111
  SAY @202 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 112 
  SAY @203 
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 113
  SAY @204 
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 114
  SAY @205 
  IF ~~ THEN EXIT
END

IF ~Global("SolaSleep","GLOBAL",1)~ THEN BEGIN 115
  SAY @206 
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116
  SAY @207 
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117
  SAY @208 
  IF ~~ THEN REPLY @209 
    DO ~SetGlobal("SolaSleep","GLOBAL",2)
RestParty()~ GOTO 118
  IF ~~ THEN REPLY @210 
    DO ~SetGlobal("SolaSleep","GLOBAL",-1)~ GOTO 119
  IF ~~ THEN REPLY @211 
    DO ~SetGlobal("SolaSleep","GLOBAL",-1)~ GOTO 120
END

IF ~~ THEN BEGIN 118
  SAY @212 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 119
  SAY @213 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 120
  SAY @214 
  IF ~~ THEN EXIT
END

IF ~Global("SolaSleep","GLOBAL",3)~ THEN BEGIN 121
  SAY @215 
  IF ~~ THEN DO ~IncrementGlobal("SolaSleep","GLOBAL",1)~ GOTO 122
END

IF ~~ THEN BEGIN 122
  SAY @216 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 123
  SAY @217 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 124
  SAY @218 
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ GOTO 123
END

IF ~Global("SolaLeave","GLOBAL",1)
!Global("SolaBackFromDead","GLOBAL",1)
!InParty(Myself)~ THEN BEGIN 125
  SAY @219 
  IF ~~ THEN REPLY @220 
    DO ~SetGlobal("SolaLeave","GLOBAL",0)
SetGlobal("SolaJoin","GLOBAL",5)~ GOTO 126
  IF ~~ THEN REPLY @221 
    DO ~SetGlobal("SolaLeave","GLOBAL",3)~ GOTO 126
END

IF ~~ THEN BEGIN 126
  SAY @223 
  IF ~~ THEN EXIT
END

IF ~Global("SolaLeave","GLOBAL",4)!AreaCheck("at2100")!InParty(Myself)!Global("SolaBackFromDead","GLOBAL",1)~ THEN BEGIN 127
  SAY @224 
  IF ~~ THEN REPLY @225 
    DO ~SetGlobal("SolaLeave","GLOBAL",0)
SetGlobal("SolaJoin","GLOBAL",5)~ GOTO 128
  IF ~~ THEN REPLY @226 
    GOTO 129
END

IF ~~ THEN BEGIN 128
  SAY @227 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129
  SAY @228 
  IF ~~ THEN EXIT
END

IF ~Global("SolaTalk","GLOBAL",15)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN post1
  SAY @2000
  IF ~~ THEN REPLY @2001 GOTO post1_a
  IF ~~ THEN REPLY @2002 GOTO post1_b
  IF ~~ THEN REPLY @2003 GOTO post1_c
END
IF ~~ THEN BEGIN post1_a SAY @2004 IF ~~ THEN GOTO post1_d END
IF ~~ THEN BEGIN post1_b SAY @2005 IF ~~ THEN GOTO post1_d END
IF ~~ THEN BEGIN post1_c SAY @2006 IF ~~ THEN GOTO post1_d END
IF ~~ THEN BEGIN post1_d 
  SAY @2007 = @2008 = @2009  
  IF ~~ THEN REPLY @2010 GOTO post1_e
  IF ~~ THEN REPLY @2011 GOTO post1_f
  IF ~~ THEN REPLY @2012 GOTO post1_g
END
IF ~~ THEN BEGIN post1_e SAY @2013 IF ~~ THEN GOTO post1_h END
IF ~~ THEN BEGIN post1_f SAY @2014 IF ~~ THEN GOTO post1_h END
IF ~~ THEN BEGIN post1_g SAY @2015 IF ~~ THEN GOTO post1_h END
IF ~~ THEN BEGIN post1_h 
  SAY @2016 = @2017 = @2018
  IF ~~ THEN REPLY @2019 DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
  IF ~~ THEN REPLY @2020 DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

// black ravens
IF ~Global("SolaTalk","GLOBAL",16)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN post2
  SAY @2040 = @2041 = @2042 = @2043 = @2044
  IF ~~ THEN REPLY @2045 GOTO post2_a
  IF ~~ THEN REPLY @2070 GOTO post2_shut_up
END

IF ~~ THEN BEGIN post2_shut_up
  SAY @2071
  IF ~~ THEN REPLY @2072 GOTO post2_shut_up2
END
IF ~~ THEN BEGIN post2_shut_up2
  SAY @2073
  IF ~~ THEN REPLY @2074 DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN post2_a
  SAY @2046 = @2047 = @2048 = @2049 = @2050
  IF ~~ THEN REPLY @2051 GOTO post2_b
  IF ~~ THEN REPLY @2052 GOTO post2_c
  IF ~~ THEN REPLY @2053 GOTO post2_d
END

IF ~~ THEN BEGIN post2_b SAY @2054 IF ~~ THEN GOTO post2_e END
IF ~~ THEN BEGIN post2_c SAY @2055 IF ~~ THEN GOTO post2_e END
IF ~~ THEN BEGIN post2_d SAY @2056 IF ~~ THEN GOTO post2_e END

IF ~~ THEN BEGIN post2_e
  SAY @2057 
  IF ~True()~ THEN GOTO post2_f
  IF ~InParty("Keldorn") !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN EXTERN BKELDOR post2
  IF ~InParty("Keldorn") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN EXTERN BKELDO25 post2
END

APPENDI BKELDOR
  IF ~~ THEN BEGIN post2 SAY @2058 IF ~~ THEN EXTERN SOLA post2_thanks END
END
APPENDI BKELDO25
  IF ~~ THEN BEGIN post2 SAY @2058 IF ~~ THEN EXTERN SOLA post2_thanks END
END

IF ~~ THEN BEGIN post2_thanks SAY @2059 IF ~~ THEN GOTO post2_f END

IF ~~ THEN BEGIN post2_f
  SAY @2060
  IF ~~ THEN REPLY @2061 GOTO post2_done
  IF ~~ THEN REPLY @2062 GOTO post2_done
END

IF ~~ THEN BEGIN post2_done
  SAY @2064
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~Global("SolaTalk","GLOBAL",17)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN post_id_1
  SAY @2080
  IF ~~ THEN REPLY @2081 GOTO post_id_2
  IF ~~ THEN REPLY @2082 GOTO post_id_3
  IF ~~ THEN REPLY @2083 GOTO post_id_4
  IF ~~ THEN REPLY @2084 GOTO post_id_4
  IF ~~ THEN REPLY @2085 GOTO post_id_5
END

IF ~~ THEN BEGIN post_id_2 SAY @2086 IF ~~ THEN GOTO post_id_c1 END
IF ~~ THEN BEGIN post_id_3 SAY @2087 IF ~~ THEN GOTO post_id_c1 END
IF ~~ THEN BEGIN post_id_4 SAY @2088 IF ~~ THEN GOTO post_id_c1 END
IF ~~ THEN BEGIN post_id_5 SAY @2089 IF ~~ THEN GOTO post_id_c1 END

IF ~~ THEN BEGIN post_id_c1
  SAY @2090 = @2091 = @2092 = @2093
  IF ~~ THEN REPLY @2094 GOTO post_id_6
  IF ~~ THEN REPLY @2095 GOTO post_id_7
  IF ~~ THEN REPLY @2096 GOTO post_id_8
END

IF ~~ THEN BEGIN post_id_6 SAY @2097 IF ~~ THEN GOTO post_id_c2 END
IF ~~ THEN BEGIN post_id_7 SAY @2098 IF ~~ THEN GOTO post_id_c2 END
IF ~~ THEN BEGIN post_id_8 SAY @2099 IF ~~ THEN GOTO post_id_c2 END

IF ~~ THEN BEGIN post_id_c2
  SAY @2100
  IF ~~ THEN REPLY @2101 DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ EXIT
END

IF ~Global("SolaTalk","GLOBAL",18)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN sl_1
  SAY @2170 
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ REPLY @2171 GOTO sl_2
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ REPLY @2172 GOTO sl_nope
END

IF ~~ THEN BEGIN sl_nope
  SAY @2173
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sl_2
  SAY @2174 = @2175
  IF ~~ THEN REPLY @2176 GOTO sl_3
  IF ~~ THEN REPLY @2178 GOTO sl_3
  IF ~~ THEN REPLY @2177 GOTO sl_3_pre
END

IF ~~ THEN BEGIN sl_3_pre SAY @2190 IF ~~ THEN GOTO sl_3 END

IF ~~ THEN BEGIN sl_3
  SAY @2179 
  IF ~~ THEN REPLY @2180 GOTO sl_4
  IF ~~ THEN REPLY @2181 GOTO sl_4
END

IF ~~ THEN BEGIN sl_4
  SAY @2182 = @2183 = @2184 = @2185
  IF ~~ THEN REPLY @2186 EXIT
  IF ~~ THEN REPLY @2187 EXIT
  IF ~~ THEN REPLY @2188 GOTO sl_5
END

IF ~~ THEN BEGIN sl_5
  SAY @2189
  IF ~~ THEN EXIT
END

/////////////////////////////////////////////////////////////////////////
// Sphira "Chat"
/////////////////////////////////////////////////////////////////////////
IF ~Global("SolaTalk","GLOBAL",19)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN sp_1
  SAY @2200
  IF ~~ THEN REPLY @2201 DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ 
    GOTO sp1_book
  IF ~~ THEN REPLY @2202 DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ 
    GOTO sp1_nothing
  IF ~~ THEN REPLY @2203 DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ 
    GOTO sp1_later
END

IF ~~ THEN BEGIN sp1_nothing
  SAY @2240 
  IF ~~ THEN REPLY @2241 GOTO sp1_yourself
  IF ~~ THEN REPLY @2242 GOTO sp1_book
  IF ~~ THEN REPLY @2243 GOTO sp1_later
END

IF ~~ THEN BEGIN sp1_book
  SAY @2204
  IF ~~ THEN REPLY @2205 GOTO sp1_fg
  IF ~Global("Sola_SP1_History","LOCALS",0)~ THEN REPLY @2206 GOTO sp1_history
  IF ~Global("Sola_SP1_Yourself","LOCALS",0)~ THEN REPLY @2207 GOTO sp1_yourself
END

IF ~~ THEN BEGIN sp1_fg
  SAY @2208 
  IF ~Global("Sola_SP1_Guess","LOCALS",0)~ THEN REPLY @2210 GOTO sp1_guess
END

IF ~~ THEN BEGIN sp1_history
  SAY @2228
  IF ~~ THEN DO ~SetGlobal("Sola_SP1_History","LOCALS",1)~ GOTO sp1_history_next
END

IF ~~ THEN BEGIN sp1_history_next
  SAY @2230
  IF ~Global("Sola_SP1_Guess","LOCALS",0)~ THEN REPLY @2213 GOTO sp1_guess
  IF ~Global("Sola_SP1_Yourself","LOCALS",0)~ THEN REPLY @2212 GOTO sp1_yourself
  IF ~~ THEN REPLY @2244 GOTO sp1_bye
END

IF ~~ THEN BEGIN sp1_yourself
  SAY @2209 
  IF ~~ THEN DO ~SetGlobal("Sola_SP1_Yourself","LOCALS",1)~ GOTO 
    sp1_yourself_next
END

IF ~~ THEN BEGIN sp1_yourself_next
  SAY @2231
  IF ~~ THEN REPLY @2214 GOTO sp1_guess_4
  IF ~Global("Sola_SP1_Guess","LOCALS",0)~ THEN REPLY @2215 GOTO sp1_guess
  IF ~Global("Sola_SP1_History","LOCALS",0)~ THEN REPLY @2216 GOTO sp1_history
END

IF ~~ THEN BEGIN sp1_guess
  SAY @2217 
  IF ~~ THEN REPLY @2218 DO ~SetGlobal("Sola_SP1_Guess","LOCALS",1)~ 
    GOTO sp1_guess_2
END
IF ~~ THEN BEGIN sp1_guess_2
  SAY @2219 IF ~~ THEN REPLY @2220 GOTO sp1_guess_3
END
IF ~~ THEN BEGIN sp1_guess_3
  SAY @2221
  IF ~~ THEN REPLY @2222 GOTO sp1_guess_4
  IF ~~ THEN REPLY @2223 GOTO sp1_guess_4
  IF ~~ THEN REPLY @2224 GOTO sp1_guess_4
END
IF ~~ THEN BEGIN sp1_guess_4
  SAY @2225
  IF ~Global("Sola_SP1_History","LOCALS",0)~ THEN REPLY @2226 GOTO sp1_history
  IF ~Global("Sola_SP1_Yourself","LOCALS",0)~ THEN REPLY @2227 GOTO sp1_yourself
  IF ~~ THEN REPLY @2245 EXIT
END

IF ~~ THEN BEGIN sp1_later SAY @2229 IF ~~ THEN EXIT END
IF ~~ THEN BEGIN sp1_bye SAY @2246 IF ~~ THEN EXIT END

/////////////////////////////////////////////////////////////////////////
// Afi "poem"
/////////////////////////////////////////////////////////////////////////
IF ~Global("SolaTalk","GLOBAL",20)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN sola_afi_0
  SAY @2300 = @2301
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ REPLY @2302 GOTO sola_afi_1
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ REPLY @2303 GOTO sola_afi_2
  IF ~~ THEN DO ~SetGlobal("SolaPCTalk","GLOBAL",0)~ REPLY @2304 GOTO sola_afi_3
END

IF ~~ THEN BEGIN sola_afi_1
  SAY @2305 = @2306
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sola_afi_2
  SAY @2307 = @2308 = @2309 = @2310
  IF ~~ THEN GOTO sola_afi_4
END


IF ~~ THEN BEGIN sola_afi_3
  SAY @2311 = @2312 = @2313 = @2314
  IF ~~ THEN REPLY @2315 GOTO sola_afi_4
  IF ~~ THEN REPLY @2316 GOTO sola_afi_12
END

IF ~~ THEN BEGIN sola_afi_4
  SAY @2317
  IF ~~ THEN REPLY @2318 GOTO sola_afi_5
  IF ~~ THEN REPLY @2319 GOTO sola_afi_12
END

IF ~~ THEN BEGIN sola_afi_5
  SAY @2320
  IF ~~ THEN REPLY @2321 GOTO sola_afi_6
  IF ~~ THEN REPLY @2322 GOTO sola_afi_12
END

IF ~~ THEN BEGIN sola_afi_6
  SAY @2323
  IF ~~ THEN REPLY @2324 GOTO sola_afi_7
  IF ~~ THEN REPLY @2325 GOTO sola_afi_10
END

IF ~~ THEN BEGIN sola_afi_7
  SAY @2326 = @2327 = @2328
  IF ~~ THEN REPLY @2329 GOTO sola_afi_8
  IF ~~ THEN REPLY @2330 GOTO sola_afi_9
END

IF ~~ THEN BEGIN sola_afi_8
  SAY @2331 = @2332
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sola_afi_9
  SAY @2333
  IF ~~ THEN REPLY @2334 GOTO sola_afi_11
END

IF ~~ THEN BEGIN sola_afi_10
  SAY @2335
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sola_afi_11
  SAY @2336
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sola_afi_12
  SAY @2337 = @2338 = @2339
  IF ~~ THEN EXIT
END

/////////////////////////////////////////////////////////////////////////
// Scarlet's Ambition
/////////////////////////////////////////////////////////////////////////
// Ambition 1
IF ~Global("SolaAmbitionTalk","GLOBAL",1)
Global("SolaPCTalk","GLOBAL",1)~ THEN BEGIN ambition1
  SAY @6000
  IF ~~ THEN DO
    ~SetGlobal("SolaPCTalk","GLOBAL",0)
     SetGlobal("SolaAmbitionTalk","GLOBAL",2)~ GOTO post4
END

IF ~~ THEN BEGIN post4
  SAY @6041
  IF ~~ THEN REPLY @6001 GOTO post4_a
  IF ~~ THEN REPLY @6002 GOTO post4_a
  IF ~~ THEN REPLY @6003 GOTO post4_a
  IF ~~ THEN REPLY @6004 GOTO post4_d
END

IF ~~ THEN BEGIN post4_a
  SAY @6005 /* I am sorry that I caused you any pain */
  IF ~~ THEN REPLY @6006 GOTO post4_b
  IF ~~ THEN REPLY @6007 GOTO post4_b
  IF ~~ THEN REPLY @6008 GOTO post4_b
  IF ~~ THEN REPLY @6039 GOTO post4_d
END

IF ~~ THEN BEGIN post4_b 
  SAY @6009 /* Since coming to the surface, I had nearly forgotten the darker depths of my soul */
  IF ~~ THEN REPLY @6010 GOTO post4_c 
END

IF ~~ THEN BEGIN post4_c
  SAY @6011 = @6012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN post4_d 
  SAY @6013 /* I ... see. Yes, I can understand that. We hardly knew each other */
  IF ~~ THEN REPLY @6014 GOTO post4_e
  IF ~~ THEN REPLY @6015 GOTO post4_e
  IF ~~ THEN REPLY @6038 GOTO post4_n
END

IF ~~ THEN BEGIN post4_e
  SAY @6016 
  IF ~~ THEN REPLY @6017 GOTO post4_f
END

IF ~~ THEN BEGIN post4_f
  SAY @6018
  IF ~~ THEN REPLY @6019 GOTO post4_g
END

IF ~~ THEN BEGIN post4_g
  SAY @6020
  IF ~~ THEN REPLY @6021 GOTO post4_h
  IF ~~ THEN REPLY @6023 GOTO post4_i
END

IF ~~ THEN BEGIN post4_h
  SAY @6022
  IF ~~ THEN REPLY @6025 GOTO post4_j
END

IF ~~ THEN BEGIN post4_i
  SAY @6024
  IF ~~ THEN REPLY @6025 GOTO post4_j
END

IF ~~ THEN BEGIN post4_j
  SAY @6026 = @6027
  IF ~~ THEN REPLY @6028 GOTO post4_k
  IF ~~ THEN REPLY @6030 GOTO post4_l
  IF ~~ THEN REPLY @6032 GOTO post4_m
END

IF ~~ THEN BEGIN post4_k
  SAY @6029
  IF ~~ THEN DO ~SetGlobal("SolaTalk","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN post4_l
  SAY @6031
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN post4_m
  SAY @6033 = @6034
  IF ~~ THEN REPLY @6035 GOTO post4_end
  IF ~~ THEN REPLY @6036 GOTO post4_end
END 

IF ~~ THEN BEGIN post4_n //parallel block to post4_a
  SAY @6040
  IF ~~ THEN REPLY @6006 GOTO post4_b
  IF ~~ THEN REPLY @6007 GOTO post4_b
  IF ~~ THEN REPLY @6008 GOTO post4_b
END

IF ~~ THEN BEGIN post4_end
  SAY @6037
  IF ~~ THEN EXIT
END


//////////////////////////////////////////////////////////////////////////
// Eclipse Gang
//////////////////////////////////////////////////////////////////////////
IF ~Global("SolaEclipseWarn","GLOBAL",1)~ THEN BEGIN eclipse1
  SAY @230 = @231 = @232 = @233
  IF ~~ THEN REPLY @234 
    DO ~SetGlobal("SolaEclipseWarn","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @235 
    DO ~SetGlobal("SolaEclipseWarn","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @236 
    DO ~SetGlobal("SolaEclipseWarn","GLOBAL",2)~ GOTO eclipse5
  IF ~~ THEN REPLY @238 GOTO no_eclipse
END

IF ~~ THEN BEGIN eclipse5
  SAY @237
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN no_eclipse
  SAY @239
  IF ~~ THEN DO ~SetGlobal("SolaEclipseWarn","GLOBAL",-1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Banter
//////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////
// Mazzy: good of one, good of many
IF ~Global("Sola_Mazzy","GLOBAL",1)~ THEN BEGIN sm_1_1
  SAY @1000
  IF ~~ THEN DO ~SetGlobal("Sola_Mazzy","GLOBAL",2)~ EXTERN BMAZZY sm_1_2
END
APPENDI BMAZZY IF ~~ THEN BEGIN sm_1_2
  SAY @1001 IF ~~ THEN EXTERN BMAZZY sm_1_3
END END
APPENDI BMAZZY IF ~~ THEN BEGIN sm_1_3
  SAY @1002 IF ~~ THEN EXTERN SOLA sm_1_4
END END
IF ~~ THEN BEGIN sm_1_4
  SAY @1003
  IF ~IsValidForPartyDialogue("KORGAN")~ THEN EXTERN BMAZZY sm_1_5k
  IF ~!IsValidForPartyDialogue("KORGAN")~ THEN EXTERN BMAZZY sm_1_5
END
APPENDI BMAZZY IF ~~ THEN BEGIN sm_1_5k
  SAY @1004 IF ~~ THEN EXTERN BMAZZY sm_1_5
END END
APPENDI BMAZZY IF ~~ THEN BEGIN sm_1_5
  SAY @1005 IF ~~ THEN EXTERN SOLA sm_1_6
END END
IF ~~ THEN BEGIN sm_1_6
  SAY @1006 IF ~~ THEN EXTERN BMAZZY sm_1_7
END
APPENDI BMAZZY IF ~~ THEN BEGIN sm_1_7
  SAY @1007 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END END

//////////////////////////////////////////////////////////////////////////
// Mazzy: sacrifice for good
IF ~Global("Sola_Mazzy","GLOBAL",3)~ THEN BEGIN sm_2_1
  SAY @1010
  IF ~~ THEN DO ~SetGlobal("Sola_Mazzy","GLOBAL",-1)~ GOTO sm_2_2
END
IF ~~ THEN BEGIN sm_2_2
  SAY @1011 IF ~~ THEN EXTERN BMAZZY sm_2_3
END
APPENDI BMAZZY IF ~~ THEN BEGIN sm_2_3
  SAY @1012 IF ~~ THEN EXTERN BMAZZY sm_2_4
END END
APPENDI BMAZZY IF ~~ THEN BEGIN sm_2_4
  SAY @1013 IF ~~ THEN EXTERN SOLA sm_2_5
END END
IF ~~ THEN BEGIN sm_2_5
  SAY @1014 IF ~~ THEN EXTERN BMAZZY sm_2_6
END
APPENDI BMAZZY IF ~~ THEN BEGIN sm_2_6
  SAY @1015 IF ~~ THEN EXTERN SOLA sm_2_7
END END
IF ~~ THEN BEGIN sm_2_7
  SAY @1016 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Edwin: brain in vat
IF ~Global("Sola_Edwin","GLOBAL",1)~ THEN BEGIN se_1_1
  SAY @1020
  IF ~~ THEN DO ~SetGlobal("Sola_Edwin","GLOBAL",-1)~ EXTERN BEDWIN se_1_2
  IF ~OR(2)
Dead("Nevaziah")
Global("EdwinSummoned","GLOBAL",1)~ THEN DO ~SetGlobal("Sola_Edwin","GLOBAL",2)~ EXTERN BEDWIN se_1_2
END
APPENDI BEDWIN IF ~~ THEN BEGIN se_1_2
  SAY @1021 IF ~~ THEN EXTERN SOLA se_1_3
END END
IF ~~ THEN BEGIN se_1_3
  SAY @1022 IF ~~ THEN EXTERN BEDWIN se_1_4
END
APPENDI BEDWIN IF ~~ THEN BEGIN se_1_4
  SAY @1023 IF ~~ THEN EXTERN BEDWIN se_1_5
END END
APPENDI BEDWIN IF ~~ THEN BEGIN se_1_5
  SAY @1024 IF ~~ THEN EXTERN SOLA se_1_6
END END
IF ~~ THEN BEGIN se_1_6
  SAY @1025 IF ~~ THEN EXTERN BEDWIN se_1_7
END
APPENDI BEDWIN IF ~~ THEN BEGIN se_1_7
  SAY @1026 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END END

//////////////////////////////////////////////////////////////////////////
// Edwin: nether scroll trade
IF ~Global("Sola_Edwin","GLOBAL",3)~ THEN BEGIN se_2_1
  SAY @1030
  IF ~~ THEN DO ~SetGlobal("Sola_Edwin","GLOBAL",-1)~ EXTERN BEDWIN se_2_2
END
APPENDI BEDWIN IF ~~ THEN BEGIN se_2_2
  SAY @1031 IF ~~ THEN EXTERN SOLA se_2_3
END END
IF ~~ THEN BEGIN se_2_3
  SAY @1032 IF ~~ THEN EXTERN BEDWIN se_2_4
END
APPENDI BEDWIN IF ~~ THEN BEGIN se_2_4
  SAY @1033 IF ~~ THEN EXTERN BEDWIN se_2_5
END END
APPENDI BEDWIN IF ~~ THEN BEGIN se_2_5
  SAY @1034 IF ~~ THEN EXTERN SOLA se_2_6
END END
IF ~~ THEN BEGIN se_2_6
  SAY @1035 IF ~~ THEN EXTERN BEDWIN se_2_7
END
APPENDI BEDWIN IF ~~ THEN BEGIN se_2_7
  SAY @1036 IF ~~ THEN EXTERN SOLA se_2_8
END END
IF ~~ THEN BEGIN se_2_8
  SAY @1037 IF ~~ THEN EXTERN BEDWIN se_2_9
END
APPENDI BEDWIN IF ~~ THEN BEGIN se_2_9
  SAY @1038 IF ~~ THEN EXTERN SOLA se_2_10
END END
IF ~~ THEN BEGIN se_2_10
  SAY @1039 IF ~~ THEN EXTERN BEDWIN se_2_11
END
APPENDI BEDWIN IF ~~ THEN BEGIN se_2_11
  SAY @1040 IF ~~ THEN EXTERN SOLA se_2_12
END END
IF ~~ THEN BEGIN se_2_12
  SAY @1041 IF ~~ THEN DO ~ReallyForceSpell(Myself,3664)~ EXTERN SOLA se_2_13
END
IF ~~ THEN BEGIN se_2_13
  SAY @1042 
  IF ~~ THEN DO ~ActionOverride("Edwin",AddSpecialAbility("dimdoor"))~ 
    EXTERN BEDWIN se_2_14
END
APPENDI BEDWIN IF ~~ THEN BEGIN se_2_14
  SAY @1043 IF ~~ THEN EXTERN SOLA se_2_15
END END
IF ~~ THEN BEGIN se_2_15
  SAY @1044 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Jan: what is a turnip?  
IF ~Global("Sola_Jan","GLOBAL",1)~ THEN BEGIN sj_1_1
  SAY @1050
  IF ~~ THEN DO ~SetGlobal("Sola_Jan","GLOBAL",2)~ EXTERN BJAN sj_1_2
END

CHAIN2 BJAN sj_1_2
  @1051 == @1052 == @1053 == @1054 == @1055 == @1056 == @1057 == 
  @1058 == @1059 == @1060
END BJAN sj_1_3

APPENDI BJAN IF ~~ THEN BEGIN sj_1_3
  SAY @1061 
  IF ~~ THEN REPLY @1062 EXTERN SOLA sj_1_4
  IF ~~ THEN REPLY @1063 EXTERN SOLA sj_1_4
END END

IF ~~ THEN BEGIN sj_1_4
  SAY @1064 IF ~~ THEN EXTERN BJAN sj_1_5
END

CHAIN2 BJAN sj_1_5
  @1065 == @1066 == @1067 
END SOLA sj_1_6

IF ~~ THEN BEGIN sj_1_6
  SAY @1068 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Jan: boo2
IF ~Global("Sola_Jan","GLOBAL",3)~ THEN BEGIN sj_2_1
  SAY @1080
  IF ~~ THEN DO ~SetGlobal("Sola_Jan","GLOBAL",-1)~ EXTERN BJAN sj_2_2
END

CHAIN2 BJAN sj_2_2 @1081 == @1082 END BJAN sj_2_3 

APPENDI BJAN IF ~~ THEN BEGIN sj_2_3
    SAY @1083
    IF  ~IsValidForPartyDialogue("Minsc")~ THEN EXTERN SOLA sj_2_4minsc1
    IF ~!IsValidForPartyDialogue("Minsc")~ THEN EXTERN SOLA sj_2_4
END END

IF ~~ THEN BEGIN sj_2_4minsc1
  SAY @1084
  IF ~~ THEN EXTERN BMINSC sj_2_4minsc2
END

APPENDI BMINSC IF ~~ THEN BEGIN sj_2_4minsc2
    SAY @1085
    IF ~~ THEN EXTERN SOLA sj_2_4minsc3
END END

IF ~~ THEN BEGIN sj_2_4minsc3
  SAY @1086 IF ~~ THEN GOTO sj_2_4
END

IF ~~ THEN BEGIN sj_2_4
  SAY @1087 IF ~~ THEN GOTO sj_2_5
END
IF ~~ THEN BEGIN sj_2_5
  SAY @1088 IF ~~ THEN EXTERN BJAN sj_2_5CHAIN2
END

CHAIN2 BJAN sj_2_5CHAIN2 @1089 == @1090 END SOLA make_boo

IF ~~ THEN BEGIN make_boo
  SAY @1091 
  IF ~~ THEN DO ~SetGlobal("SolaBooFirstTime","GLOBAL",1)
  CreateCreatureObjectDoor("solaboo","Jan",0,0,0)~
    EXIT // will eventually go to SOLABOO boo_s
END

APPENDI BJAN IF ~~ THEN BEGIN sj_2_6
    SAY @1092
    IF ~IsValidForPartyDialogue("Minsc")~ THEN EXTERN BMINSC sj_2_7minsc
    IF ~!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")~ THEN EXTERN IMOEN2J sj_2_7immy
    IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")~ THEN EXTERN BJAN sj_2_7
END END

CHAIN2 BMINSC sj_2_7minsc @1093 = @1094 == @1095 == @1096 END BJAN sj_2_7care

APPENDI BJAN IF ~~ THEN BEGIN sj_2_7care
    SAY @1097
    IF ~IsValidForPartyDialogue("Imoen2")~ THEN EXTERN IMOEN2J sj_2_7immy
    IF ~!IsValidForPartyDialogue("Imoen2")~ THEN EXTERN BJAN sj_2_7
END END

APPENDI IMOEN2J IF ~~ THEN BEGIN sj_2_7immy
    SAY @1098
    IF ~~ THEN EXTERN BJAN sj_2_7
END END

APPENDI BJAN IF ~~ THEN BEGIN sj_2_7
    SAY @1099 IF ~~ THEN EXTERN SOLA sj_2_8
END END

IF ~~ THEN BEGIN sj_2_8
  SAY @1100
  IF ~~ THEN REPLY @1101 GOTO sj_2_9
  IF ~~ THEN REPLY @1102 GOTO sj_2_9
END

IF ~~ THEN BEGIN sj_2_9
  SAY @1103 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Aerie: dreams
IF ~Global("Sola_Aerie","GLOBAL",1)~ THEN BEGIN sa_1_1
  SAY @1110
  IF ~~ THEN DO ~SetGlobal("Sola_Aerie","GLOBAL",2)~ EXTERN BAERIE sa_1_2
END

CHAIN2 BAERIE sa_1_2
  @1111 == @1112 == @1113 == @1114 = @1115 = @1116 == @1117 == @1118
END SOLA sa_1_3

IF ~~ THEN BEGIN sa_1_3
  SAY @1119 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Aerie: youth
IF ~Global("Sola_Aerie","GLOBAL",3)~ THEN BEGIN sa_2_1
  SAY @1120
  IF ~~ THEN DO ~SetGlobal("Sola_Aerie","GLOBAL",-1)~ EXTERN BAERIE sa_2_2
END

CHAIN2 BAERIE sa_2_2
  @1121 == @1122 == @1123 == @1124 = @1125 = @1126 == @1127
END SOLA sa_2_3

IF ~~ THEN BEGIN sa_2_3
  SAY @1128 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// H'D: poetry
IF ~Global("Sola_HD","GLOBAL",1)~ THEN BEGIN sh_1_1
  SAY @1130
  IF ~IsValidForPartyDialogue("Imoen2")~ THEN DO ~SetGlobal("Sola_HD","GLOBAL",2)~ EXTERN IMOEN2J sh_immy
  IF ~!IsValidForPartyDialogue("Imoen2")~ THEN DO ~SetGlobal("Sola_HD","GLOBAL",2)~ EXTERN BHAERDA sh_1_2
END

APPENDI IMOEN2J 
  IF ~~ THEN BEGIN sh_immy
    SAY @1143
    IF ~~ THEN EXTERN BHAERDA sh_1_2
  END
END

CHAIN2 BHAERDA sh_1_2
  @1131 == @1132 == @1133 == @1134 == @1135 == @1136 == @1137 == @1138 ==
  @1139 = @1140 = @1141
END SOLA sh_1_3

IF ~~ THEN BEGIN sh_1_3
  SAY @1142 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// H'D: chaos and death
IF ~Global("Sola_HD","GLOBAL",3)~ THEN BEGIN sh_2_1
  SAY @1150
  IF ~~ THEN DO ~SetGlobal("Sola_HD","GLOBAL",-1)~ EXTERN BHAERDA sh_2_2
END

CHAIN2 BHAERDA sh_2_2
  @1151 == @1152 
END BHAERDA sh_2_3

APPENDI BHAERDA
  IF ~~ THEN BEGIN sh_2_3 
    SAY @1153
    IF  ~IsValidForPartyDialogue("SAREVOK")~ THEN EXTERN BSAREV25 sh_2_3sar
    IF ~!IsValidForPartyDialogue("SAREVOK")~ THEN EXTERN SOLA sh_2_4
  END
END

APPENDI BSAREV25 IF ~~ THEN BEGIN sh_2_3sar
  SAY @1154 IF ~~ THEN EXTERN SOLA sh_2_4
END END

IF ~~ THEN BEGIN sh_2_4
  SAY @1155 
  IF ~~ THEN EXTERN BHAERDA sh_2_5
END

CHAIN2 BHAERDA sh_2_5 
  @1156 == @1157 == @1158 = @1159 = @1160 = @1161 == @1162
END BHAERDA sh_2_6

APPENDI BHAERDA IF ~~ THEN BEGIN sh_2_6
  SAY @1163 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END END

//////////////////////////////////////////////////////////////////////////
// Keldorn: law
IF ~Global("Sola_Keldorn","GLOBAL",1)~ THEN BEGIN sk_1_1
  SAY @1170
  IF ~~ THEN DO ~SetGlobal("Sola_Keldorn","GLOBAL",2)~ EXTERN BKELDOR sk_1_2
END

CHAIN2 BKELDOR sk_1_2
  @1171 == @1172 = @1183 == @1173 == @1174 == @1175 == @1176 == @1177 ==
  @1178 == @1179 = @1180 = @1181
END SOLA sk_1_3

IF ~~ THEN BEGIN sk_1_3
  SAY @1182 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Keldorn: religion
IF ~Global("Sola_Keldorn","GLOBAL",3)~ THEN BEGIN sk_2_1
  SAY @1190
  IF ~~ THEN DO ~SetGlobal("Sola_Keldorn","GLOBAL",-1)~ EXTERN BKELDOR sk_2_2
END

CHAIN2 BKELDOR sk_2_2
  @1191 == @1192 = @1197 = @1193 == @1194 = @1195 
END SOLA sk_2_3

IF ~~ THEN BEGIN sk_2_3
  SAY @1196 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Korgan: non-violence
IF ~Global("Sola_Korgan","GLOBAL",1)~ THEN BEGIN sko_1_1
  SAY @1200
  IF ~~ THEN DO ~SetGlobal("Sola_Korgan","GLOBAL",2)~ EXTERN BKORGAN sko_1_2
END

CHAIN2 BKORGAN sko_1_2
  @1201 == @1202 == @1203 == @1204 == @1205 == @1206 == @1207
END SOLA sko_1_3

IF ~~ THEN BEGIN sko_1_3
  SAY @1208 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Korgan: fear
IF ~Global("Sola_Korgan","GLOBAL",3)~ THEN BEGIN sko_2_1
  SAY @1210
  IF ~~ THEN DO ~SetGlobal("Sola_Korgan","GLOBAL",-1)~ EXTERN BKORGAN sko_2_2
END

CHAIN2 BKORGAN sko_2_2
  @1211 == @1212 = @1213 == @1214 = @1215 = @1216
END SOLA sko_2_3

IF ~~ THEN BEGIN sko_2_3
  SAY @1217 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Sarevok: not afraid
IF ~Global("Sola_Sarevok","GLOBAL",1)~ THEN BEGIN ss_1_1
  SAY @1220
  IF ~~ THEN DO ~SetGlobal("Sola_Sarevok","GLOBAL",2)~ EXTERN BSAREV25 ss_1_2
END

CHAIN2 BSAREV25 ss_1_2
  @1221 == @1222 == @1223 == @1224 == @1225 == @1226 == @1227 ==
  @1228 = @1229 == @1230 == @1231 == @1232 = @1233
END SOLA ss_1_3

IF ~~ THEN BEGIN ss_1_3
  SAY @1234 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Sarevok: death
IF ~Global("Sola_Sarevok","GLOBAL",3)~ THEN BEGIN ss_2_1
  SAY @1240
  IF ~~ THEN DO ~SetGlobal("Sola_Sarevok","GLOBAL",-1)~ EXTERN BSAREV25 ss_2_2
END

CHAIN2 BSAREV25 ss_2_2
  @1241 == @1242 == @1243 = @1244 == @1245 = @1246 == @1247
END SOLA ss_2_3

IF ~~ THEN BEGIN ss_2_3
  SAY @1248 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Nalia: money
IF ~Global("Sola_Nalia","GLOBAL",1)~ THEN BEGIN sn_1_1
  SAY @1250
  IF ~~ THEN DO ~SetGlobal("Sola_Nalia","GLOBAL",2)~ EXTERN BNALIA sn_1_2
END

CHAIN2 BNALIA sn_1_2
  @1251 == @1252 == @1253 == @1254 == @1255 == @1256 = @1257 = @1258
END BNALIA sn_1_3

APPENDI BNALIA
  IF ~~ THEN BEGIN sn_1_3
    SAY @1259 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
  END
END

//////////////////////////////////////////////////////////////////////////
// Nalia: Advice
IF ~Global("Sola_Nalia","GLOBAL",3)~ THEN BEGIN sn_2_1
  SAY @1260
  IF ~~ THEN DO ~SetGlobal("Sola_Nalia","GLOBAL",-1)~ EXTERN BNALIA sn_2_2
END

CHAIN2 BNALIA sn_2_2
  @1261 == @1262 == @1263 == @1264 == @1265 == @1266 = @1267 == @1268 ==
  @1269
END BNALIA sn_2_3

APPENDI BNALIA
  IF ~~ THEN BEGIN sn_2_3
    SAY @1270 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
  END
END

//////////////////////////////////////////////////////////////////////////
// Valygar: magery
IF ~Global("Sola_Valygar","GLOBAL",1)~ THEN BEGIN sv_1_1
  SAY @1280
  IF ~~ THEN DO ~SetGlobal("Sola_Valygar","GLOBAL",2)~ EXTERN BVALYGA sv_1_2
END

CHAIN2 BVALYGA sv_1_2
  @1281 == @1282 = @1283 = @1284 == @1285 == @1286 == @1287 == @1288 ==
  @1289 == @1290 
END BVALYGA sv_1_3

APPENDI BVALYGA
  IF ~~ THEN BEGIN sv_1_3
    SAY @1291 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
  END
END

//////////////////////////////////////////////////////////////////////////
// Valygar: brood
IF ~Global("Sola_Valygar","GLOBAL",3)~ THEN BEGIN sv_2_1
  SAY @1300
  IF ~~ THEN DO ~SetGlobal("Sola_Valygar","GLOBAL",-1)~ EXTERN BVALYGA sv_2_2
END

CHAIN2 BVALYGA sv_2_2
  #29769 == @1302 == @1303 == @1304 == @1305 == @1306 == @1307 == @1308 ==
  @1309 == @1310 == @1311 == @1312 == @1313 == @1314
END BVALYGA sv_2_3

APPENDI BVALYGA 
  IF ~~ THEN BEGIN sv_2_3
    SAY @1315 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
  END
END

//////////////////////////////////////////////////////////////////////////
// Anomen: anger
IF ~Global("Sola_Anomen","GLOBAL",1)~ THEN BEGIN san_1_1
  SAY @1320
  IF ~~ THEN DO ~SetGlobal("Sola_Anomen","GLOBAL",2)~ EXTERN BANOMEN san_1_2
END

CHAIN2 BANOMEN san_1_2
  @1321 == @1322 == @1323 == @1324 == @1325 = @1326 == @1327 == @1328
END SOLA san_1_3

IF ~~ THEN BEGIN san_1_3
  SAY @1329 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Anomen: humility
IF ~Global("Sola_Anomen","GLOBAL",3)~ THEN BEGIN san_2_1
  SAY @1330
  IF ~~ THEN DO ~SetGlobal("Sola_Anomen","GLOBAL",-1)~ EXTERN BANOMEN san_2_2
END

CHAIN2 BANOMEN san_2_2
  @1331 == @1332 == @1333 == @1334 == @1335 == @1336 == @1337 ==
  @1338 == @1339 == @1340 
END BANOMEN san_2_3

APPENDI BANOMEN IF ~~ THEN BEGIN san_2_3
  SAY @1341 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END END

//////////////////////////////////////////////////////////////////////////
// Cernd: nature
IF ~Global("Sola_Cernd","GLOBAL",1)~ THEN BEGIN sc_1_1
  SAY @1350
  IF ~~ THEN DO ~SetGlobal("Sola_Cernd","GLOBAL",2)~ EXTERN BCERND sc_1_2
END

CHAIN2 BCERND sc_1_2
  @1351 == @1352 = @1353 == @1354 == @1357 == @1358 == @1359 == @1360 ==
  @1362 == @1363
END SOLA sc_1_3

IF ~~ THEN BEGIN sc_1_3
  SAY @1364 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Cernd: nature2
IF ~Global("Sola_Cernd","GLOBAL",3)~ THEN BEGIN sc_2_1
  SAY @1370
  IF ~~ THEN DO ~SetGlobal("Sola_Cernd","GLOBAL",-1)~ EXTERN BCERND sc_2_2
END

CHAIN2 BCERND sc_2_2
  @1371 == @1372 == @1373 == @1374 == @1375 == @1376 = @1377 == @1378 =
  @1379
END SOLA sc_2_3

IF ~~ THEN BEGIN sc_2_3
  SAY @1380 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// Imoen: souls
IF ~Global("Sola_Imoen","GLOBAL",1)~ THEN BEGIN si_1_1
  SAY @1390
  IF ~~ THEN DO ~SetGlobal("Sola_Imoen","GLOBAL",2)~ EXTERN IMOEN2J si_1_2
END

CHAIN2 IMOEN2J si_1_2
  @1391 == @1392 == @1393 == @1394 == @1395 == @1396 == @1397 == @1398 = @1399 
END IMOEN2J si_1_3

APPENDI IMOEN2J IF ~~ THEN BEGIN si_1_3
  SAY @1400 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END END

//////////////////////////////////////////////////////////////////////////
// Imoen: pick on Sola
IF ~Global("Sola_Imoen","GLOBAL",3)~ THEN BEGIN si_2_1
  SAY @1410
  IF ~~ THEN DO ~SetGlobal("Sola_Imoen","GLOBAL",-1)~ EXTERN IMOEN2J si_2_2
END

CHAIN2 IMOEN2J si_2_2
  @1411 == @1412 == @1413 == @1414 == @1415 == @1416 == @1417 == @1418 ==
  @1419 = @1420 = @1421 == @1422 == @1423 == @1424 == @1425 == @1426 ==
  @1427
END SOLA si_2_3

IF ~~ THEN BEGIN si_2_3
  SAY @1428 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// jaheira: really balance
IF ~Global("Sola_Jaheira","GLOBAL",1)~ THEN BEGIN sjah_1_1
  SAY @1430
  IF ~~ THEN DO ~SetGlobal("Sola_Jaheira","GLOBAL",2)~ EXTERN BJAHEIR sjah_1_2
END

CHAIN2 BJAHEIR sjah_1_2
  @1431 == @1432 == @1433 == @1434 == @1435 == @1436 == @1437 == @1438 ==
  @1439
END sola sjah_1_3

IF ~~ THEN BEGIN sjah_1_3
  SAY @1440 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// jaheira: memories 
IF ~Global("Sola_Jaheira","GLOBAL",3)~ THEN BEGIN sjah_2_1
  SAY @1450
  IF ~~ THEN DO ~SetGlobal("Sola_Jaheira","GLOBAL",-1)~ EXTERN BJAHEIR sjah_2_2
END

CHAIN2 BJAHEIR sjah_2_2
  @1451 == @1452 == @1453 = @1454 == @1455 == @1456
END sola sjah_2_3

IF ~~ THEN BEGIN sjah_2_3
  SAY @1457 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// minsc: enough 
IF ~Global("Sola_Minsc","GLOBAL",1)~ THEN BEGIN smin_1_1
  SAY @1460
  IF ~~ THEN DO ~SetGlobal("Sola_Minsc","GLOBAL",2)~ EXTERN BMINSC smin_1_2
END

CHAIN2 BMINSC smin_1_2
  @1461 == @1462 == @1463 == @1464 == @1465 = @1466 == @1467 == @1468 =
  @1469 = @1470 == @1471 == @1472
END sola smin_1_3

IF ~~ THEN BEGIN smin_1_3
  SAY @1473 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// minsc: garden 
IF ~Global("Sola_Minsc","GLOBAL",3)~ THEN BEGIN smin_2_1
  SAY @1480
  IF ~~ THEN DO ~SetGlobal("Sola_Minsc","GLOBAL",-1)~ EXTERN BMINSC smin_2_2
END

CHAIN2 BMINSC smin_2_2
  @1481 == @1482 == @1483 == @1491 == @1492 == @1484 == @1485 == @1486 ==
  @1487 == @1488 == @1489
END sola smin_2_3

IF ~~ THEN BEGIN smin_2_3
  SAY @1490 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

//////////////////////////////////////////////////////////////////////////
// viconia: enough 
IF ~Global("Sola_Viconia","GLOBAL",1)~ THEN BEGIN svic_1_1
  SAY @1500
  IF ~~ THEN DO ~SetGlobal("Sola_Viconia","GLOBAL",2)~ EXTERN BVICONI svic_1_2
END

CHAIN2 BVICONI svic_1_2
  @1501 == @1502 == @1503 == @1504 == @1505 = @1506 == @1507 == @1508 ==
  @1509 == @1510
END sola svic_1_3

IF ~~ THEN BEGIN svic_1_3
  SAY @1511 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

// viconia: evil
IF ~Global("Sola_Viconia","GLOBAL",3)~ THEN BEGIN svic_2_1
  SAY @1520
  IF ~~ THEN DO ~SetGlobal("Sola_Viconia","GLOBAL",-1)~ EXTERN BVICONI svic_2_2
END

CHAIN2 BVICONI svic_2_2
  @1521 == @1522 == @1523 == @1524 == @1525 == @1527 == @1528 = @1529 =
  @1530 = @1531 = @1532
END sola svic_2_3

IF ~~ THEN BEGIN svic_2_3
  SAY @1533 IF ~~ THEN DO ~SetGlobal("SolaDoneBanter","GLOBAL",1)~ EXIT
END

IF ~Global("SolaBladeUpgrade","GLOBAL",1)~ THEN BEGIN sbu
  SAY @1600 = @1601 = @1602
  IF ~~ THEN DO ~SetGlobal("SolaBladeUpgrade","GLOBAL",2)~ EXIT
END


IF ~Global("SolaDiscussBook","GLOBAL",1)~ THEN BEGIN sb1
  SAY @2151 IF ~~ THEN DO ~SetGlobal("SolaDiscussBook","GLOBAL",2)~ 
    REPLY @2152 GOTO sb2
END
IF ~~ THEN BEGIN sb2
  SAY @2153
  IF ~~ THEN REPLY @2154 GOTO sb3_fish
  IF ~~ THEN REPLY @2155 GOTO sb4_rhyme
END
IF ~~ THEN BEGIN sb3_fish
  SAY @2156 IF ~~ THEN GOTO sb4_rhyme
END
IF ~~ THEN BEGIN sb4_rhyme
  SAY @2157
  IF ~~ THEN REPLY @2158 GOTO sb5 // wake up 
  IF ~~ THEN REPLY @2159 GOTO sb6 // never 
END
IF ~~ THEN BEGIN sb5 
  SAY @2160
  IF ~~ THEN GOTO sb_treasure
END
IF ~~ THEN BEGIN sb6
  SAY @2161
  IF ~~ THEN GOTO sb_treasure
END
IF ~~ THEN BEGIN sb_treasure
  SAY @2164
  IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN shot_down
  SAY @2251
  IF ~~ THEN DO ~SetGlobal("SolaTalk","GLOBAL",-1)~ EXIT
END

IF ~True()~ THEN BEGIN 130
  SAY @229 
  IF ~Global("SolaEclipseWarn","GLOBAL",2)~ THEN
    REPLY @238 GOTO no_eclipse
  IF ~!Global("SolaTalk","GLOBAL",-1)~ THEN REPLY @2250 GOTO shot_down
  IF ~~ THEN REPLY #42171 DO ~ChangeAIScript("sola",OVERRIDE)
RealSetGlobalTimer("SolaBanter","GLOBAL",5)
RealSetGlobalTimer("SolaTimer","GLOBAL",10)~ EXIT
END

ADD_TRANS_ACTION UDSOLA01 BEGIN 1 END BEGIN 0 END ~SetGlobal("SolaLeave","GLOBAL",4)~

BEGIN SOLABOO 

IF ~Global("SolaBooFirstTime","GLOBAL",1)~ THEN BEGIN boo_s
  SAY #20321 
  IF ~~ THEN DO ~SetGlobal("SolaBooFirstTime","GLOBAL",2)~
    EXTERN BJAN sj_2_6
END

IF ~True()~ THEN BEGIN boo_s
  SAY #20321 
  IF ~~ THEN EXIT
END
