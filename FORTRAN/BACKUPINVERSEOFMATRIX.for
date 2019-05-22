      
      ! Program to compute LU Decomposition of matrix of (n,n) size
      
      PROGRAM MAIN
      
      COMMON REAL N
      REAL I,J,K
      REAL U(100,100), L(100,100), A(100,100)
      
      WRITE(6,*)'MULTIPLICATION OF U(N,M) AND X(K,N) MATRICES WHERE U(N,
     * M) REPRESENTS N=NUMBER OF COLUMNS AND M=NUMBER OF ROWS'
      
      ! * IS CONTINUATION CHARACTER
      
      READ*, N
      WRITE(6,*) 'N=',N
      
      !IF YOU DO NOT INITIALIZE A MATRIX IT WILL TAKE ALL ELEMENTS ZERO(0)
      
      !INPUT MATRIX ELEMENTS WITH COMPLETING ROW FIRST AND THEN GO TO SECOND ROW
      
      INUILOOP: DO  I=1,N
      INUJLOOP: DO  J=1,N
          READ*, U(J,I)
      END DO INUJLOOP
      END DO INUILOOP
      
      A=U
      
      UILOOP: DO  I = 1,N
      UJLOOP:   DO  J=1,N
          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF U IS', U(I,J)
      END DO UJLOOP
      END DO UILOOP
      
      ILOOP: DO  I=1,N
          KLOOP: DO  K=I+1,N
              P = U(I,K)/U(I,I)
              JLOOP: DO  J=1,N
                  U(J,K) = U(J,K) - P*U(J,I)
              END DO JLOOP
          END DO KLOOP
      END DO ILOOP
      
      UOILOOP: DO  I = 1,N
      UOJLOOP:   DO  J=1,N
          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF U IS', U(I,J)
      END DO UOJLOOP
      END DO UOILOOP
      
      AOILOOP: DO  I = 1,N
      AOJLOOP:   DO  J=1,N
          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF A IS', A(I,J)
      END DO AOJLOOP
      END DO AOILOOP
      
      LDIAGONALLOOP: DO I = 1,N
          L(I,I) = 1
      END DO LDIAGONALLOOP
            
      ILLOOP: DO I = 2,N 
          J=1
          WRITE (6,*) 'J IS ', J
          JLLOOP: DO WHILE (J.LT.I)
              P = 0
              WRITE (6,*) 'I IS ', I
              K=1
              WRITE (6,*) 'K IS ', K
              KLLOOP: DO WHILE (K.LT.J)
                  P = P + L(K,I)*U(J,K)
                  WRITE (6,*) 'P IS ', P
                  K = K + 1
                  WRITE (6,*) 'K IS ', K
              END DO KLLOOP
              L(J,I) = (A(J,I) - P)/U(J,J)
              J = J + 1
              WRITE (6,*) 'J IS ', J
          END DO JLLOOP
      END DO ILLOOP
      
      LOILOOP: DO  I = 1,N
      LOJLOOP:   DO  J=1,N
          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF L IS', L(I,J)
      END DO LOJLOOP
      END DO LOILOOP

      
      END
      
      

      ! Program to calculate inverse of a mtrix
      
      PROGRAM MAIN
      
      COMMON REAL N
      REAL I,J,K
      REAL U(100,100), L(100,100), IDENTITY(100,100), Z(100,100),
     *X(100,100)
      
      WRITE(6,*) 'INPUT VALUE OF N'
      READ*, N
      WRITE(6,*) 'N=',N
      
      
      WRITE(6,*) 'INPUT MATIRX L'
      INLILOOP: DO  I=1,N
      INLJLOOP: DO  J=1,N
          READ*, L(J,I)
      END DO INLJLOOP
      END DO INLILOOP
      
      LDIAGONALLOOP: DO I = 1,N
          IDENTITY(I,I) = 1
      END DO LDIAGONALLOOP
      
      ZDIAGONALLOOP: DO I = 1,N
          Z(I,I) = 1
      END DO ZDIAGONALLOOP
      
      ILLOOP: DO I = 2,N 
          WRITE (6,*) 'I IS ', I
          J=1
          JLLOOP: DO WHILE (J.LT.I)
              WRITE (6,*) 'J IS ', J
              P = 0
              K=1
              KLLOOP: DO WHILE (K.LT.I)
                  WRITE (6,*) 'K IS ', K
                  P = P + L(K,I)*Z(J,K)
                  WRITE (6,*) 'P IS ', P
                  K = K + 1
              END DO KLLOOP
              Z(J,I) = (IDENTITY(J,I) - P)/L(I,I)
              J = J + 1
          END DO JLLOOP
      END DO ILLOOP
      
      ZOILOOP: DO  I = 1,N
      ZOJLOOP:   DO  J=1,N
          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF Z IS', Z(J,I)
      END DO ZOJLOOP
      END DO ZOILOOP
      
      WRITE(6,*) 'INPUT MATIRX U'
      INUILOOP: DO  I=1,N
      INUJLOOP: DO  J=1,N
          READ*, U(J,I)
      END DO INUJLOOP
      END DO INUILOOP
      

      
      I = N
      IXLOOP: DO WHILE (I.GT.0)
          WRITE (6,*) 'I IS ', I
          J = N
          JXLOOP: DO WHILE(J.GT.0)
              WRITE (6,*) 'J IS ', J
              P = 0
              K = N
              KXLOOP: DO WHILE(K.GT.I)
                  P = P + U(K,I)*X(J,K)
                  WRITE (6,*) 'P IS ', P
                  K = K - 1
              END DO KXLOOP
              X(J,I) = (Z(J,I) - P)/U(I,I)
              J = J - 1
          END DO JXLOOP
          I = I -1
      END DO IXLOOP
      
      
      
      XOILOOP: DO  I = 1,N
      XOJLOOP:   DO  J=1,N
          WRITE(6,*) 'INVERSE OF MATRIX A IS X AND 
     *[',I,',',J,']','TH ELEMENT OF X IS', X(J,I)
      END DO XOJLOOP
      END DO XOILOOP
      
      END