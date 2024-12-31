*
FUNCTION loNgfrt
 PARAMETER diRection, ruNcur, stAllcur, tiMetorun, swReltime
 = swDaltimer()
 m.goTit = .F.
 IF m.viEwit
      ACTIVATE WINDOW viEwwin
      ? 'Testing Front Motor...'
 ENDIF
 = laRge_prom('PRESS & HOLD FRONT '+m.diRection+' SWITCH...',0)
 = swCrttimer(1,(swSecond*m.tiMetorun))
 DO WHILE swGtimer(1)>0
      IF baIlout()
           = adD_err('0000')
           EXIT
      ENDIF
      IF reAd_atod1()>=m.stAllcur
           m.goTit = .F.
           = laRge_prom('RELEASE FRONT '+m.diRection+' SWITCH...',1)
           = swCrttimer(2,swSecond*m.swReltime)
           DO WHILE swGtimer(2)>0
                IF baIlout()
                     = adD_err('0000')
                     EXIT
                ENDIF
                IF reAd_atod1()<=m.ruNcur
                     m.goTit = .T.
                     EXIT
                ENDIF
           ENDDO
           = swDsytimer(2)
           EXIT
      ENDIF
 ENDDO
 RETURN m.goTit
*
FUNCTION loNgrr
 PARAMETER diRection, ruNcur, stAllcur, tiMetorun, swReltime
 = swDaltimer()
 m.goTit = .F.
 IF m.viEwit
      ACTIVATE WINDOW viEwwin
      ? 'Testing Rear Motor...'
 ENDIF
 = laRge_prom('PRESS & HOLD REAR '+m.diRection+' SWITCH...',0)
 = swCrttimer(1,(swSecond*m.tiMetorun))
 DO WHILE swGtimer(1)>0
      IF baIlout()
           = adD_err('0000')
           EXIT
      ENDIF
      IF reAd_atod1()>=m.stAllcur
           m.goTit = .F.
           = laRge_prom('RELEASE REAR '+m.diRection+' SWITCH...',1)
           = swCrttimer(2,swSecond*m.swReltime)
           DO WHILE swGtimer(2)>0
                IF baIlout()
                     = adD_err('0000')
                     EXIT
                ENDIF
                IF reAd_atod1()<=m.ruNcur
                     m.goTit = .T.
                     EXIT
                ENDIF
           ENDDO
           = swDsytimer(2)
           EXIT
      ENDIF
 ENDDO
 RETURN m.goTit
*
FUNCTION loNghoriz
 PARAMETER diRection, ruNcur, stAllcur, tiMetorun, swReltime
 = swDaltimer()
 m.goTit = .F.
 IF m.viEwit
      ACTIVATE WINDOW viEwwin
      ? 'Testing Track Motor...'
 ENDIF
 = laRge_prom('PRESS & HOLD HORIZONTAL '+m.diRection+' SWITCH...',0)
 = swCrttimer(1,(swSecond*m.tiMetorun))
 DO WHILE swGtimer(1)>0
      IF baIlout()
           = adD_err('0000')
           EXIT
      ENDIF
      IF reAd_atod1()>=m.stAllcur
           m.goTit = .F.
           = laRge_prom('RELEASE HORIZONTAL '+m.diRection+' SWITCH...',1)
           = swCrttimer(2,swSecond*m.swReltime)
           DO WHILE swGtimer(2)>0
                IF baIlout()
                     = adD_err('0000')
                     EXIT
                ENDIF
                IF reAd_atod1()<=m.ruNcur
                     m.goTit = .T.
                     EXIT
                ENDIF
           ENDDO
           = swDsytimer(2)
           EXIT
      ENDIF
 ENDDO
 RETURN m.goTit
*
