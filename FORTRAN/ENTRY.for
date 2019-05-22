      
      
      PROGRAM MAIN
      
      CALL MULT
      
      X=1.0
      Y=0.0
      
      DO i=1,10
      
         call abc(x,y)
 
          x=x+1
          write(6,*) 'x=',x,'y=',y
          
      ENDDO
      
      
      END
      
      SUBROUTINE MULT
      IMPLICIT NONE

      REAL A,B,C,X,Y
      SAVE A,B,C
C     READ(6,*) A,B,C
      A=1
      B=2
      C=3
      WRITE(6,*) 'INSUB ABC',A,B,C
      
      GO TO 100
      
      ENTRY ABC (X,Y)

      Y = A*B*C + X

100   CONTINUE
      
      RETURN
      
      END
      