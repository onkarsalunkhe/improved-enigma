      PROGRAM MAIN 
      
      REAL FUNCTION AAVG(ARRAY)
      
      DIMENSION ARRAY(10)
      
      SUM=0.0
      
      DO 100 I=1,10
          
          SUM=SUM+ARRAY(I)
          
100   CONTINUE
      
      AAVG=SUM/10
      
      RETURN
      
      END
