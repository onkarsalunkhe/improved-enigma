      PROGRAM MAIN
      
      WRITE(6,*) 'INPUT A , B AND C'
      
      READ*, A,B,C
      
      CALL AVERAGE (A,B,C,AVG)
      
      WRITE(6,*) 'AVERAGE OF' ,A,',',B,'AND',C,'IS', AVG
      
      END
      
      SUBROUTINE AVERAGE (A,B,C,AVG)
      
      AVG = (A+B+C)/3
      
      RETURN 
      
      END