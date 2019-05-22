      PROGRAM MAIN
      
      IMPLICIT NONE
      
      INTEGER*2 R
      
      INTEGER*2 CLEN
      
      REAL PI,VOL
      
      PI = 3.14
      
      WRITE(6,*) 'iNPUT R'
      READ*, R 
      
      WRITE(6,*) 'INPUT CLEN'
      READ*, CLEN
      
      WRITE(6,*) 'BEFORE DO LOOP'
      
      DO WHILE (R.GT.0)
        VOL=2*PI*(R**2)*CLEN
      WRITE(6,*) 'DURING LOOP', 'vOLUME=',VOL
      R = R - 1
      
      ENDDO
      
      END
