      PROGRAM MAIN
      
      REAL I,J,Q
      
      READ*, I
      
      PI=3.1412
      
      J = SIN(I*PI/180)
      
      Q = SIND(I)
      
      WRITE(6,*) 'PI= ', PI
      
      WRITE(6,*) 'J = ', J
      
      WRITE(6,*) 'Q= ', Q
      
      END
      