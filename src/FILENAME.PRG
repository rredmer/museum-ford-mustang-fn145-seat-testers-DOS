 PUBLIC ciSo_mess
 PUBLIC csCp_mess
 PUBLIC cdAtalog
 PUBLIC cdTc
 PUBLIC cpArtnos
 m.ciSo_mess = ''
 m.csCp_mess = ''
 m.cdAtalog = ''
 m.cdTc = ''
 m.cpArtnos = ''
 PUBLIC ciNstance
 PUBLIC ccOnfigure
 PUBLIC coPerator
 PUBLIC csEtuppath
 PUBLIC cdAtapath
 PUBLIC cpRogpath
 m.csEtuppath = ALLTRIM(GETENV('FNSETUP'))
 m.cdAtapath = ALLTRIM(GETENV('FNDATA'))
 m.cpRogpath = ALLTRIM(GETENV('FNPROG'))
 PUBLIC viEwit
 viEwit = .F.
 PUBLIC cfGshort
 PUBLIC cfGshtest
 PUBLIC cfGshtime
 PUBLIC cfGtypeptr
 PUBLIC cfGid
 PUBLIC cfGdvrside
 PUBLIC cfGbarcode
 PUBLIC cfGautoonl
 PUBLIC cfGptr
 PUBLIC cfGtesttyp
 PUBLIC cfGshtimer
 PUBLIC cfGlabelsi
 PUBLIC cfGcell
 PUBLIC cfGhshippo
 PUBLIC cfGfshippo
 PUBLIC cfGbshippo
 PUBLIC cfGrshippo
 PUBLIC cfGbagpmpt
 PUBLIC cfGmanpmpt
 PUBLIC cfGqc
 PUBLIC cfG2wylumb
 PUBLIC cfGshwait
 PUBLIC op_recldn, op_reclup, op_reclrel, op_lout, op_lin, op_lup, op_ldn
 PUBLIC op_lrel, op_bagfwd, op_bagfwd, op_bagrel, op_sbout, op_sbin, op_cushpr
 PUBLIC op_cushrel, op_reclshp
 PUBLIC un93htlow, un93hthigh, un93httime, un93swtime
 PUBLIC un93cable, un93htrlay, un93igrlay, un93sprlay, caBletype
 IF (m.cdAtapath=='')
      WAIT CLEAR
      CLEAR
      ? 'FNDATA Environment variable not found !'
      ? '---------------------------------------'
      ? 'Please create a DOS environment variable named FNDATA which'
      ? 'contains the name of the directory where the data base files are'
      ? 'located.'
      ?
      ? 'The environment variable(s) may be created using the DOS SET command.'
      ? ' For example:'
      ? '    SET FNDATA=C:\DATABASE'
      ?
      ? 'Press any key to continue.'
      ? ''
      = INKEY(0)
      QUIT
 ELSE
      IF RIGHT(m.cdAtapath, 1)<>'\'
           m.cdAtapath = m.cdAtapath+'\'
      ENDIF
      m.ciSo_mess = m.cdAtapath+'ISO_MESS.DBF'
      m.csCp_mess = m.cdAtapath+'SCP_MESS.DBF'
      m.cdAtalog = m.cdAtapath+'DATALOG.DBF'
      m.cdTc = m.cdAtapath+'DTC.DBF'
      m.cpArtnos = m.cdAtapath+'PARTS.DBF'
 ENDIF
 PUBLIC m.op_mlin
 PUBLIC m.op_mlout
 PUBLIC m.op_mlrel
 IF (m.csEtuppath=='')
      WAIT CLEAR
      CLEAR
      ? 'FNSETUP Environment variable not found !'
      ? '---------------------------------------'
      ? 'Please create a DOS environment variable named FNSETUP which'
      ? "contains the name of the directory where the application's setup"
      ? 'files are located.'
      ?
      ? 'The environment variable(s) may be created using the DOS SET command.'
      ? ' For example:'
      ? '    SET FNSETUP=C:\SETUPS'
      ?
      ? 'Press any key to continue.'
      ? ''
      = INKEY(0)
      QUIT
 ENDIF
 IF (m.cpRogpath=='')
      WAIT CLEAR
      CLEAR
      ? 'FNPROG Environment variable not found !'
      ? '---------------------------------------'
      ? 'Please create a DOS environment variable named FNPROG which'
      ? 'contains the name of the directory where the application files'
      ? 'are located.'
      ?
      ? 'The environment variable(s) may be created using the DOS SET command.'
      ? ' For example:'
      ? '    SET FNPROG=C:\PROGRAM'
      ?
      ? 'Press any key to continue.'
      ? ''
      = INKEY(0)
      QUIT
 ELSE
      IF RIGHT(m.cpRogpath, 1)<>'\'
           m.cpRogpath = m.cpRogpath+'\'
      ENDIF
      SET HELP TO cpRogpath+'HELPFILE.DBF'
 ENDIF
 IF  .NOT. FILE(m.ciSo_mess)
      WAIT CLEAR
      CLEAR
      ? 'Tester ISO-9141 Message Database file not found !'
      ? '-------------------------------------------------'
      ? 'Please make sure the DOS environment variable named FNDATA contains'
      ? 'the name of the directory where the data base files are located.'
      ?
      ? 'The environment variable may be created using the DOS SET command.'
      ? '  For example:'
      ? '    SET FNDATA=C:\DATABASE'
      ?
      ? 'Press any key to continue.'
      ? ''
      = INKEY(0)
      QUIT
 ENDIF
 IF  .NOT. FILE(m.csCp_mess)
      WAIT CLEAR
      CLEAR
      ? 'Tester SCP Message Database file not found !'
      ? '--------------------------------------------'
      ? 'Please make sure the DOS environment variable named FNDATA contains'
      ? 'the name of the directory where the data base files are located.'
      ?
      ? 'The environment variable may be created using the DOS SET command.'
      ? '  For example:'
      ? '    SET FNDATA=C:\DATABASE'
      ?
      ? 'Press any key to continue.'
      ? ''
      = INKEY(0)
      QUIT
 ENDIF
 IF  .NOT. FILE(m.cdAtalog)
      WAIT CLEAR
      CLEAR
      ? 'Tester Datalog Database file not found !'
      ? '----------------------------------------'
      ? 'Please make sure the DOS environment variable named FNDATA contains'
      ? 'the name of the directory where the data base files are located.'
      ?
      ? 'The environment variable may be created using the DOS SET command.'
      ? '  For example:'
      ? '    SET FNDATA=C:\DATABASE'
      ?
      ? 'Press any key to continue.'
      ? ''
      = INKEY(0)
      QUIT
 ENDIF
 IF  .NOT. FILE(m.cdTc)
      WAIT CLEAR
      CLEAR
      ? 'Tester DTC Database file not found !'
      ? '------------------------------------'
      ? 'Please make sure the DOS environment variable named FNDATA contains'
      ? 'the name of the directory where the data base files are located.'
      ?
      ? 'The environment variable may be created using the DOS SET command.'
      ? '  For example:'
      ? '    SET FNDATA=C:\DATABASE'
      ?
      ? 'Press any key to continue.'
      ? ''
      = INKEY(0)
      QUIT
 ENDIF
 IF RIGHT(m.csEtuppath, 1)<>'\'
      m.csEtuppath = m.csEtuppath+'\'
 ENDIF
 m.ciNstance = m.csEtuppath+'INSTANCE.MEM'
 RESTORE FROM (ciNstance) ADDITIVE
 m.ccOnfigure = m.csEtuppath+'TESTER.MEM'
 IF FILE(ccOnfigure)
      RESTORE FROM (ccOnfigure) ADDITIVE
 ENDIF
 m.teSter_id = m.cfGid
 m.ccOnfigure = m.csEtuppath+'CFGUN93.MEM'
 IF FILE(ccOnfigure)
      RESTORE FROM (ccOnfigure) ADDITIVE
 ENDIF
 m.coPerator = m.csEtuppath+'TIMING.MEM'
 IF FILE(coPerator)
      RESTORE FROM (coPerator) ADDITIVE
 ELSE
      SAVE TO (coPerator) ALL LIKE Op_*
 ENDIF
*
