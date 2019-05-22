      PROGRAM MAIN
      
      IMPLICIT NONE
      
      INTEGER*2 THETA
      
      THETA = 0
      
      IF (THETA) 10, 20, 100
      
10    PRINT*,THETA
20    PRINT*,'This is 20'
      GO TO 200
100   PRINT*,'this is 100'
200   CONTINUE      
      END
