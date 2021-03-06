$PROB 9 phase1 2 CMT like 1004 but diff. initial on V3
$INPUT C ID TIME SEQ=DROP EVID AMT DV SUBJ HOUR HEIGHT WT SEX AGE DOSE FED
$DATA ../../data/derived/phase1.csv IGNORE=C
$SUBROUTINE ADVAN4 TRANS4
$PK
 CL=THETA(1)*EXP(ETA(1)) * THETA(6)**SEX * (WT/70)**THETA(7)
 V2 =THETA(2)*EXP(ETA(2))
 KA=THETA(3)*EXP(ETA(3))
 Q  =THETA(4)
 V3=THETA(5)
 S2=V2
 
$ERROR
 Y=F*(1+ERR(1)) + ERR(2)
 IPRE=F
;
$THETA 8.268
19.21
0.07017
3.554
68.39
0.9785
1.814
$OMEGA 0.1765
0.1231
0.08504
$SIGMA 0.06092
$SIMULATION ( 8004 NEW) ( 9005 UNIFORM) ONLYSIMULATION
$TABLE ID TIME DV WT SEX LDOS NOPRINT NOAPPEND FILE=sim.tab
