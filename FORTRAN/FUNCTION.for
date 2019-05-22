      PROGRAM MAIN
      
      IMPLICIT NONE
      
      REAL A,B,C,AVG,average,theta,result,tine
      

      READ*, A,B,C
      
      WRITE(6,*) 'INPUT A,B,C'
      
      AVG = AVERAGE(A,B,C)
      write(6,*) 'average of ',a,'and',b,'and',c,'is=', avg
      
      write(6,*) 'input theta'
      read*, theta
      result = tine(theta)
      write(6,*) 'sine of theta = ',result
      
      END
      
      REAL FUNCTION AVERAGE (a,b,c)
      REAL A,B,C
      AVeRAGE = (A+B+C)/3
      
      RETURN 
      
      END
      
      
      REAL FUNCTION tine(theta)
      
      REAL theta
      theta = (3.1412/180)*theta
      tine = sin(theta)
      RETURN 
      
      END
      
      
      
      
      
      
      