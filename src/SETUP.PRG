 PUBLIC m.viEwit
 PUBLIC d_Appname
 PUBLIC d_Version
 PUBLIC d_Revdate
 PUBLIC daTe
 PUBLIC tiMe
 m.daTe = DATE()
 m.tiMe = TIME()
 PUBLIC m.cyClenos
 m.cyClenos = 1
 PUBLIC teSter_id
 m.teSter_id = 'PROTOTYPE'
 PUBLIC inStance
 m.inStance = 1
 PUBLIC teSt_type
 m.teSt_type = 1
 PUBLIC teSt_time
 m.teSt_time = 0
 PUBLIC shIp_time
 m.shIp_time = 0
 PUBLIC bcOdeinfo
 m.bcOdeinfo = ''
 PUBLIC reSult
 m.reSult = .T.
 PUBLIC erRor_code
 m.erRor_code = ''
 PUBLIC coMment
 m.coMment = ''
 PUBLIC soUrce
 m.soUrce = 'fd'
 PUBLIC teMparray[ 11]
 STORE '' TO teMparray
 PUBLIC ouTarray[ 11]
 STORE 0 TO ouTarray
 PUBLIC rxMessage[ 100]
 STORE 0 TO rxMessage
 PUBLIC teSt_lvl[ 20]
 teSt_lvl[ 1] = .T.
 teSt_lvl[ 2] = .F.
 teSt_lvl[ 3] = .F.
 teSt_lvl[ 4] = .F.
 teSt_lvl[ 5] = .F.
 teSt_lvl[ 6] = .F.
 teSt_lvl[ 7] = .F.
 teSt_lvl[ 8] = .F.
 teSt_lvl[ 9] = .F.
 teSt_lvl[ 10] = .F.
 teSt_lvl[ 11] = .F.
 teSt_lvl[ 12] = .F.
 teSt_lvl[ 13] = .F.
 teSt_lvl[ 14] = .F.
 teSt_lvl[ 15] = .F.
 teSt_lvl[ 16] = .F.
 teSt_lvl[ 17] = .F.
 teSt_lvl[ 18] = .F.
 teSt_lvl[ 19] = .F.
 teSt_lvl[ 20] = .F.
 PUBLIC reSp_lvl[ 20, 2]
 reSp_lvl[ 1, 1] = .F.
 reSp_lvl[ 2, 1] = .F.
 reSp_lvl[ 3, 1] = .F.
 reSp_lvl[ 4, 1] = .F.
 reSp_lvl[ 5, 1] = .F.
 reSp_lvl[ 6, 1] = .F.
 reSp_lvl[ 7, 1] = .F.
 reSp_lvl[ 8, 1] = .F.
 reSp_lvl[ 9, 1] = .F.
 reSp_lvl[ 10, 1] = .F.
 reSp_lvl[ 11, 1] = .F.
 reSp_lvl[ 12, 1] = .F.
 reSp_lvl[ 13, 1] = .F.
 reSp_lvl[ 14, 1] = .F.
 reSp_lvl[ 15, 1] = .F.
 reSp_lvl[ 16, 1] = .F.
 reSp_lvl[ 17, 1] = .F.
 reSp_lvl[ 18, 1] = .F.
 reSp_lvl[ 19, 1] = .F.
 reSp_lvl[ 20, 1] = .F.
 reSp_lvl[ 1, 2] = ''
 reSp_lvl[ 2, 2] = ''
 reSp_lvl[ 3, 2] = ''
 reSp_lvl[ 4, 2] = ''
 reSp_lvl[ 5, 2] = ''
 reSp_lvl[ 6, 2] = ''
 reSp_lvl[ 7, 2] = ''
 reSp_lvl[ 8, 2] = ''
 reSp_lvl[ 9, 2] = ''
 reSp_lvl[ 10, 2] = ''
 reSp_lvl[ 11, 2] = ''
 reSp_lvl[ 12, 2] = ''
 reSp_lvl[ 13, 2] = ''
 reSp_lvl[ 14, 2] = ''
 reSp_lvl[ 15, 2] = ''
 reSp_lvl[ 16, 2] = ''
 reSp_lvl[ 17, 2] = ''
 reSp_lvl[ 18, 2] = ''
 reSp_lvl[ 19, 2] = ''
 reSp_lvl[ 20, 2] = ''
 PUBLIC lvL1rslt
 PUBLIC lvL2rslt
 PUBLIC lvL3rslt
 PUBLIC lvL4rslt
 PUBLIC lvL5rslt
 PUBLIC lvL6rslt
 PUBLIC lvL7rslt
 PUBLIC lvL8rslt
 PUBLIC lvL9rslt
 PUBLIC lvL10rslt
 PUBLIC lvL11rslt
 PUBLIC lvL12rslt
 PUBLIC lvL13rslt
 PUBLIC lvL14rslt
 PUBLIC lvL15rslt
 PUBLIC lvL16rslt
 PUBLIC lvL17rslt
 PUBLIC lvL18rslt
 PUBLIC lvL19rslt
 PUBLIC lvL20rslt
 PUBLIC peNding
 m.peNding = .T.
 PUBLIC svErsion, smOnth, sdAy, syEar
 m.svErsion = 0
 m.smOnth = 0
 m.sdAy = 0
 m.syEar = 0
 PUBLIC hvErsion, hmOnth, hdAy, hyEar
 m.hvErsion = 0
 m.hmOnth = 0
 m.hdAy = 0
 m.hyEar = 0
 PUBLIC tyPetested
 m.tyPetested = 1
 PUBLIC teStchosen
 m.teStchosen = 1
 PUBLIC cfGdvrside
 m.cfGdvrside = 1
 PUBLIC cfGbarcode
 m.cfGbarcode = .F.
 PUBLIC cfGautoonl
 m.cfGautoonl = .F.
 PUBLIC cfGid
 m.cfGid = 'PROTOTYPE'
 PUBLIC cfGptr
 m.cfGptr = .T.
 PUBLIC cfGtesttyp
 PUBLIC cfGshtimer
 m.cfGshortte = .T.
 PUBLIC cfGtypeptr
 m.cfGtypeptr = 1
 PUBLIC cfGlabelsi
 m.cfGlabelsi = 1
 PUBLIC cfGcell
 m.cfGcell = ''
 PUBLIC cfGhshippo
 PUBLIC cfGfshippo
 PUBLIC cfGbshippo
 PUBLIC cfGrshippo
 m.cfGhshippo = 1
 m.cfGfshippo = 1
 m.cfGbshippo = 1
 m.cfGrshippo = 1
 m.cfGhtime = 3.8
 m.cfGftime = 1
 m.cfGbtime = 0
 m.cfGrtime = 0
 PUBLIC cfGbagpmpt, cfGmanpmpt
 m.cfGbagpmpt = .F.
 m.cfGmanpmpt = .F.
 PUBLIC cfGqc
 m.cfGqc = .F.
 PUBLIC cfG2wylumb
 m.cfG2wylumb = .F.
 PUBLIC h_Time
 PUBLIC f_Time
 PUBLIC b_Time
 PUBLIC r_Time
 m.h_Time = 3.8
 m.f_Time = 1
 m.b_Time = 0
 m.r_Time = 0
 PUBLIC h_Travel
 PUBLIC f_Travel
 PUBLIC b_Travel
 PUBLIC r_Travel
 m.h_Travel = 254.0
 m.f_Travel = 38.0
 m.b_Travel = 40.0
 m.r_Travel = 39
 PUBLIC paRtnum
 PUBLIC paRtdesc
 PUBLIC moDuletype
 PUBLIC h_Version
 PUBLIC s_Version
 PUBLIC dr_testset
 PUBLIC pa_testset
 m.paRtnum = ''
 m.paRtdesc = ''
 m.moDuletype = ''
 m.h_Version = 0
 m.s_Version = 0
 m.dr_testset = 0
 m.pa_testset = 0
 PUBLIC r_Pt
 PUBLIC r_Dest
 PUBLIC r_Source
 PUBLIC r_Byte1
 PUBLIC r_Byte2
 PUBLIC r_Byte3
 PUBLIC r_Byte4
 PUBLIC r_Byte5
 PUBLIC r_Byte6
 PUBLIC r_Byte7
 PUBLIC r_Ndbs
 m.r_Pt = 0
 m.r_Dest = 0
 m.r_Source = 0
 m.r_Byte1 = 0
 m.r_Byte2 = 0
 m.r_Byte3 = 0
 m.r_Byte4 = 0
 m.r_Byte5 = 0
 m.r_Byte6 = 0
 m.r_Byte7 = 0
 m.r_Ndbs = 0
 PUBLIC heAt1, heAt2, heAt3, heAtoff, un93htlow, un93hthigh, un93httime,  ;
        un93swtime
 PUBLIC caBletype, un93cable, un93htrlay, un93igrlay, un93sprlay
 m.heAt1 = 1.75
 m.heAt2 = 3.75
 m.heAt3 = 6.50
 m.heAtoff = 0.75
 PUBLIC skRunmax, skStallcur, skIntime, skOuttime, skRelease
 RESTORE FROM SCHUK99.mem ADDITIVE
 PUBLIC vfRuncur, vfStallcur, vfMintime, vfMaxtime
 PUBLIC vrRuncur, vrStallcur, vrMintime, vrMaxtime
 RESTORE FROM VERT.MEM ADDITIVE
 PUBLIC luMbardrop, luMbarrun, luMbarstal, inFlatetim
 m.luMbardrop = 1.5
 m.inFlatetim = 20
 m.luMbarrun = 0.05
 m.luMbarstal = 4.0
 PUBLIC beLttime
 m.beLttime = 30
 PUBLIC shIptime
 m.shIptime = 20
 PUBLIC stEptime
 m.stEptime = 5
 PUBLIC frUp_run
 PUBLIC frDn_run
 PUBLIC bkUp_run
 PUBLIC bkDn_run
 PUBLIC reFw_run
 PUBLIC reBk_run
 PUBLIC hoFw_run
 PUBLIC hoBk_run
 m.frUp_run = 1
 m.frDn_run = 1
 m.bkUp_run = 0.5
 m.bkDn_run = 0.5
 m.reFw_run = 0.30
 m.reBk_run = 0.30
 m.hoFw_run = 1
 m.hoBk_run = 1
 PUBLIC frUpstall
 PUBLIC frDnstall
 PUBLIC bkUpstall
 PUBLIC bkDnstall
 PUBLIC reFwstall
 PUBLIC reBkstall
 PUBLIC hoFwstall
 PUBLIC hoBkstall
 m.frUpstall = 7.0
 m.frDnstall = 7.0
 m.bkUpstall = 7.0
 m.bkDnstall = 7.0
 m.reFwstall = 4.0
 m.reBkstall = 4.0
 m.hoFwstall = 7.5
 m.hoBkstall = 7.5
 PUBLIC frOnstall, baCkstall, reClstall, hoRistall
 m.frOnstall = 10
 m.baCkstall = 10
 m.reClstall = 24
 m.hoRistall = 25
 PUBLIC auTotest
 m.auTotest = .F.
 m.viEwit = .F.
 DEFINE WINDOW viEwwin FROM 5, 47 TO 23, 77 GROW SHADOW TITLE 'Test Readings'
 PUBLIC m.poInt1
 PUBLIC m.poInt2
 PUBLIC m.poInt3
 PUBLIC m.poInt4
 m.poInt1 = .F.
 m.poInt2 = .F.
 m.poInt3 = .F.
 m.poInt4 = .F.
 PUBLIC m.cuRrvidmod
 DEFINE WINDOW coVerwin FROM 0, 0 TO 24, 79 NONE COLOR N 
 PUBLIC meMstatus
 m.meMstatus = 'U'
 PUBLIC roT_hf, tiMe_hf
 PUBLIC roT_hr, tiMe_hr
 PUBLIC roT_fu, tiMe_fu
 PUBLIC roT_fd, tiMe_fd
 PUBLIC roT_bu, tiMe_bu
 PUBLIC roT_bd, tiMe_bd
 PUBLIC roT_rf, tiMe_rf
 PUBLIC roT_rr, tiMe_rr
 m.roT_hf = 0.0
 m.roT_hr = 0.0
 m.roT_fu = 0.0
 m.roT_fd = 0.0
 m.roT_bu = 0.0
 m.roT_bd = 0.0
 m.roT_rf = 0.0
 m.roT_rr = 0.0
 m.tiMe_hf = 0.0
 m.tiMe_hr = 0.0
 m.tiMe_fu = 0.0
 m.tiMe_fd = 0.0
 m.tiMe_bu = 0.0
 m.tiMe_bd = 0.0
 m.tiMe_rf = 0.0
 m.tiMe_rr = 0.0
 PUBLIC laRge
 m.laRge = .T.
 PUBLIC op_recldn
 PUBLIC op_reclup
 PUBLIC op_reclrel
 PUBLIC op_lout
 PUBLIC op_lin
 PUBLIC op_lup
 PUBLIC op_ldn
 PUBLIC op_lrel
 PUBLIC op_bagfwd
 PUBLIC op_bagrel
 PUBLIC op_sbout
 PUBLIC op_sbin
 PUBLIC op_cushpr
 PUBLIC op_cushrel
 PUBLIC op_reclshp
 m.op_recldn = 30
 m.op_reclup = 30
 m.op_reclrel = 30
 m.op_lout = 30
 m.op_lin = 30
 m.op_lup = 30
 m.op_ldn = 30
 m.op_lrel = 30
 m.op_bagfwd = 30
 m.op_bagrel = 30
 m.op_sbout = 30
 m.op_sbin = 30
 m.op_cushpr = 30
 m.op_cushrel = 30
 m.op_reclshp = 30
 PUBLIC paSsresult
 m.paSsresult = .F.
 PUBLIC baIlout
 m.baIlout = .F.
 PUBLIC atOdfactor
 m.atOdfactor = 0.392
*
