      PROGRAM MAIN
      
      COMMON REAL N,M,K
      REAL T,I,J
      REAL Y(100,100), X(100,100), Z(100,100)
      
      WRITE(6,*)'MULTIPLICATION OF Y(N,M) AND X(K,N) MATRICES WHERE Y(N,
     * M) REPRESENTS N=NUMBER OF COLUMNS AND M=NUMBER OF ROWS'
      
      ! * IS CONTINUATION CHARACTER
      
      READ*, N,M,K
      WRITE(6,*) 'N=',N,'M=',M,'K=',K
      
      !IF YOU DO NOT INITIALIZE A MATRIX IT WILL TAKE ALL ELEMENTS ZERO(0)
      
      !INPUT MATRIX ELEMENTS WITH COMPLETING ROW FIRST AND THEN GO TO SECOND ROW
      
      INYILOOP: DO  I=1,M
      INYJLOOP: DO  J=1,N
          READ*, Y(J,I)
      END DO INYJLOOP
      END DO INYILOOP
      
      YILOOP: DO  I = 1,N
      YJLOOP:   DO  J=1,M
          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF Y IS', Y(I,J)
      END DO YJLOOP
      END DO YILOOP
      
      INXILOOP: DO  I = 1,N
      INXJLOOP: DO  J=1,K
          READ*, X(J,I)
      END DO INXJLOOP
      END DO INXILOOP
      
      XILOOP: DO  I = 1,K
      XJLOOP:   DO  J=1,N
          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF X IS', X(I,J)
      END DO XJLOOP
      END DO XILOOP
      
      CALL SUBROUTINE MULTIPLICATION (Y,X)
            
      WRITE(6,*)'/ MULTIPLICATION IS /'
      
      ZILOOP: DO  I = 1,K
      ZJLOOP:   DO  J=1,M
          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF Z IS', Z(I,J)
      END DO ZJLOOP
      END DO ZILOOP
      
      
      END
      
      
      SUBROUTINE MULTIPLICATION (Y,X)
      
      COMMON REAL Z(100,100)
      
      DO 100 T=1,K
      DO 200 J=1,M
      DO 300 I=1,N
300       Z(T,J)= Z(T,J) +Y(I,J)*X(T,I)
200   CONTINUE
100   CONTINUE
      
      RETURN
      
      END
      
!            COMMON REAL N,M,K
!      REAL T,I,J 
!      REAL Y(100,100), X(100,100),Z(100,100)
!      
!      WRITE(6,*)'MULTIPLICATION OF Y(N,M) AND X(K,N) MATRICES WHERE Y(N,
!     * M) REPRESENTS N=NUMBER OF COLUMNS AND M=NUMBER OF ROWS'
!      
!      ! * IS CONTINUATION CHARACTER
!      
!      READ*, N,M,K
!      WRITE(6,*) 'N=',N,'M=',M,'K=',K
!      
!      !IF YOU DO NOT INITIALIZE A MATRIX IT WILL TAKE ALL ELEMENTS ZERO(0)
!      
!      !INPUT MATRIX ELEMENTS WITH COMPLETING ROW FIRST AND THEN GO TO SECOND ROW
!      
!      INYILOOP: DO  I=1,M
!      INYJLOOP: DO  J=1,N
!          READ*, Y(J,I)
!      END DO INYJLOOP
!      END DO INYILOOP
!      
!      YILOOP: DO  I = 1,N
!      YJLOOP:   DO  J=1,M
!          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF Y IS', Y(I,J)
!      END DO YJLOOP
!      END DO YILOOP
!      
!      INXILOOP: DO  I = 1,N
!      INXJLOOP: DO  J=1,K
!          READ*, X(J,I)
!      END DO INXJLOOP
!      END DO INXILOOP
!      
!      XILOOP: DO  I = 1,K
!      XJLOOP:   DO  J=1,N
!          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF X IS', X(I,J)
!      END DO XJLOOP
!      END DO XILOOP
!      
!      DO 100 T=1,K
!      DO 200 J=1,M
!      DO 300 I=1,N
!300   Z(T,J)  = Z(T,J) +Y(I,J)*X(T,I)
!200   CONTINUE
!100   CONTINUE
!      
!      WRITE(6,*)'/ MULTIPLICATION IS /'
!      
!      ZILOOP: DO  I = 1,K
!      ZJLOOP:   DO  J=1,M
!          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF Z IS', Z(I,J)
!      END DO ZJLOOP
!      END DO ZILOOP