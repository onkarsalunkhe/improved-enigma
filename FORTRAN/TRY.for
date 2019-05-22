      PROGRAM MAIN
      
      IMPLICIT NONE
      
      REAL I,N
      
      READ*, N
      
      I = N
      
      IXLOOP: DO WHILE (I.GT.0)
          
          WRITE(6,*) '1'
          
          I = I-1
          
          WRITE(6,*) 'I IS' , I
          
      END DO IXLOOP
      
      END
      