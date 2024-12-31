*
FUNCTION shOrtfrt
 PARAMETER diRection, ruNcur, tiMetorun
 PUBLIC cuRrdraw
 PUBLIC frOnt[ 2]
 STORE .F. TO frOnt
 cuRrdraw = 0
 = swDaltimer()
 m.goTit = .F.
 IF m.viEwit
      ACTIVATE WINDOW viEwwin
      ? 'Testing Front Motor...'
 ENDIF
 = laRge_prom('PRESS & HOLD FRONT '+m.diRection+' SWITCH...',0)
 = swCrttimer(1,(swSecond*m.cfGshwait))
 DO WHILE swGtimer(1)>0
      m.cuRrdraw = reAd_atod1()
      IF m.cuRrdraw>0
           m.goTit = .T.
           EXIT
      ENDIF
 ENDDO
 = swDsytimer(1)
 IF m.goTit=.F.
      = adD_err('0000')
      RETURN .F.
 ELSE
      m.goTit = .F.
 ENDIF
 = swCrttimer(1,(swSecond*tiMetorun))
 DO WHILE swGtimer(1)>0
      IF baIlout()
           = adD_err('0000')
           RETURN .F.
      ENDIF
      m.cuRrdraw = reAd_atod1()
 ENDDO
 IF m.cuRrdraw>=m.ruNcur
      STORE .T. TO frOnt[ 1]
      = laRge_prom('RELEASE FRONT '+m.diRection+' SWITCH...',1)
      = swCrttimer(2,swSecond*m.cfGshwait)
      DO WHILE swGtimer(2)>0
           IF baIlout()
                = adD_err('0000')
                EXIT
           ENDIF
           IF reAd_atod1()<m.ruNcur
                STORE .T. TO frOnt[ 2]
                EXIT
           ENDIF
      ENDDO
      = swDsytimer(2)
      = swDsytimer(1)
 ENDIF
 IF frOnt(1) .AND. frOnt(2)
      m.goTit = .T.
 ELSE
      m.goTit = .F.
 ENDIF
 RETURN m.goTit
*
FUNCTION shOrtrr
 PARAMETER diRection, ruNcur, tiMetorun
 PUBLIC reAr[ 2]
 STORE .F. TO reAr
 PUBLIC cuRrdraw
 cuRrdraw = 0
 = swDaltimer()
 m.goTit = .F.
 IF m.viEwit
      ACTIVATE WINDOW viEwwin
      ? 'Testing Rear Motor...'
 ENDIF
 = laRge_prom('PRESS & HOLD REAR '+m.diRection+' SWITCH...',0)
 = swCrttimer(1,(swSecond*m.cfGshwait))
 DO WHILE swGtimer(1)>0
      m.cuRrdraw = reAd_atod1()
      IF m.cuRrdraw>0
           m.goTit = .T.
           EXIT
      ENDIF
 ENDDO
 = swDsytimer(1)
 IF m.goTit=.F.
      = adD_err('0000')
      RETURN .F.
 ELSE
      m.goTit = .F.
 ENDIF
 = swCrttimer(1,(swSecond*tiMetorun))
 DO WHILE swGtimer(1)>0
      IF baIlout()
           = adD_err('0000')
           RETURN .F.
      ENDIF
      m.cuRrdraw = reAd_atod1()
 ENDDO
 IF m.cuRrdraw>=m.ruNcur
      STORE .T. TO reAr[ 1]
      = laRge_prom('RELEASE REAR '+m.diRection+' SWITCH...',1)
      = swCrttimer(2,swSecond*m.cfGshwait)
      DO WHILE swGtimer(2)>0
           IF baIlout()
                = adD_err('0000')
                EXIT
           ENDIF
           IF reAd_atod1()<m.ruNcur
                STORE .T. TO reAr[ 2]
                EXIT
           ENDIF
      ENDDO
      = swDsytimer(2)
      = swDsytimer(1)
 ENDIF
 IF reAr(1) .AND. reAr(2)
      m.goTit = .T.
 ELSE
      m.goTit = .F.
 ENDIF
 RETURN m.goTit
*
FUNCTION shOrthoriz
 PARAMETER diRection, ruNcur, tiMetorun
 PUBLIC hoRiz[ 2]
 PUBLIC cuRrdraw
 STORE .F. TO hoRiz
 cuRrdraw = 0
 = swDaltimer()
 m.goTit = .F.
 IF m.viEwit
      ACTIVATE WINDOW viEwwin
      ? 'Testing track Motor...'
 ENDIF
 = laRge_prom('HOLD HORIZONTAL '+m.diRection+' SWITCH...',0)
 = swCrttimer(1,(swSecond*m.cfGshwait))
 DO WHILE swGtimer(1)>0
      m.cuRrdraw = reAd_atod1()
      IF m.cuRrdraw>0
           m.goTit = .T.
           EXIT
      ENDIF
 ENDDO
 = swDsytimer(1)
 IF m.goTit=.F.
      = adD_err('0000')
      RETURN .F.
 ELSE
      m.goTit = .F.
 ENDIF
 = swCrttimer(1,(swSecond*tiMetorun))
 DO WHILE swGtimer(1)>0
      IF baIlout()
           = adD_err('0000')
           RETURN .F.
      ENDIF
      m.cuRrdraw = reAd_atod1()
 ENDDO
 IF m.cuRrdraw>=m.ruNcur
      STORE .T. TO hoRiz[ 1]
      = laRge_prom('RELEASE HORIZONTAL '+m.diRection+' SWITCH...',1)
      = swCrttimer(2,swSecond*m.cfGshwait)
      DO WHILE swGtimer(2)>0
           IF baIlout()
                = adD_err('0000')
                EXIT
           ENDIF
           IF reAd_atod1()<m.ruNcur
                STORE .T. TO hoRiz[ 2]
                EXIT
           ENDIF
      ENDDO
      = swDsytimer(2)
      = swDsytimer(1)
 ENDIF
 IF hoRiz(1) .AND. hoRiz(2)
      m.goTit = .T.
 ELSE
      m.goTit = .F.
 ENDIF
 RETURN m.goTit
*
