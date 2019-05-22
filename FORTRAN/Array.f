
      PROGRAM MAIN
      
      IMPLICIT NONE
      
C      INTEGER*4 A
      
      DIMENSION A(10,10)
      
      A(1,1) = 1.0;
      A(1,2) = 2.0;
      
      WRITE(6,*) A(1,1),A(1,2)
      STOP
      
      
      END