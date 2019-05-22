
      
C     Inverse of a Matrix using Minors, Cofactors and Adjugate
      
       
      PROGRAM MAIN
      implicit none
      dimension Y(100,100), X(100,100)
      real det, t
      integer n,i,j
      real y,x
      COMMON /XR/ N, DET 
      COMMON /YR/ T,I,J
      
      COMMON /big/ Y, X
      
      WRITE(6,*)'MULTIPLICATION OF Y(N,M) AND X(K,N) MATRICES WHERE Y(N,
     * M) REPRESENTS N=NUMBER OF COLUMNS AND M=NUMBER OF ROWS'
      
      READ*, N
      WRITE(6,*) 'N=',N
      
      !INPUT MATRIX ELEMENTS WITH COMPLETING ROW FIRST AND THEN GO TO SECOND ROW
      
      INYILOOP: DO  I=1,N
      INYJLOOP: DO  J=1,N
         READ*, Y(J,I)
      END DO INYJLOOP
      END DO INYILOOP
      
      YILOOP: DO  I = 1,N
      YJLOOP:   DO  J=1,N
          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF Y IS', Y(I,J)
      END DO YJLOOP
      END DO YILOOP
      
      call DETERMINANT(Y,DET)
      
      WRITE(6,*)'DETERMINANT OF Y IS = ', DET
      
      END
      
      SUBROUTINE DETERMINANT(Y,DET)
      implicit none
      dimension Y(100,100) 
      real y,det
      
      
      !DET = Y(1,1)*Y(2,2) - Y(2,1)*Y(1,2)
      
      DET = (Y(1,1)*Y(2,2)*Y(3,3) + Y(2,1)*Y(3,2)*Y(1,3) + Y(3,1)*Y(2,3)
     **Y(1,2) - Y(3,1)*Y(2,2)*Y(1,3) - Y(2,1)*Y(1,2)*Y(3,3)
     *- Y(1,1)*Y(2,3)*Y(3,2)) 
      
      WRITE(6,*) 'DET', DET

      
      RETURN
      END