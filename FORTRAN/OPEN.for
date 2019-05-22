      
      
      PROGRAM MAIN
      
      OPEN (12,FILE="D:\fortrantraining1\Numbe.dat",ERR=1000,IOSTAT=IER)
      WRITE(12,*) 'A'
      gO TO 1100
1000  WRITE(6,*) 'ERROR'
1100  CONTINUE      
      CLOSE(12)
      
      END