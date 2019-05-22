      PROGRAM MAIN
      
      IMPLICIT NONE
      
      INTEGER*2 K
      
      INTEGER*2 I
      
      INTEGER*2 A
      
      DIMENSION A(10)
      
       I = 1
      
      DO 30 K=1,10,1
          
10    PRINT*, 'k=', K
20    A(k) = I
30    I = I+1
      
C      DO 100 K=2,10,2
          
C100   PRINT*, A(K)
      
      END
      