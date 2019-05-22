     
      ! Checking the DO WHILE loop for LU Decomposition of matrix
      
      PROGRAM MAIN
      
      
      
      !IMPLICIT NONE
      
      !REAL N,M,I
      !M=1
      !LOOP: DO I=1,5
      !    LOOP1: DO WHILE (M LT 5)
      !        WRITE(6,*) '1'
      !        M = M +1
      !        
      !    END DO LOOP1
      !END DO LOOP
      
      
      COMMON REAL N
      REAL I,J,K
      REAL U(100,100), L(100,100), A(100,100)
      
      READ*, N
      WRITE(6,*), 'N=',N
      
      INAILOOP: DO  I=1,N
      INAJLOOP: DO  J=1,N
          READ*, A(J,I)
      END DO INAJLOOP
      END DO INAILOOP
      
      
      AOILOOP: DO  I = 1,N
      AOJLOOP:   DO  J=1,N
          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF A IS', A(I,J)
      END DO AOJLOOP
      END DO AOILOOP
      
      INUILOOP: DO  I=1,N
      INUJLOOP: DO  J=1,N
          READ*, U(J,I)
      END DO INUJLOOP
      END DO INUILOOP
      
      UOILOOP: DO  I = 1,N
      UOJLOOP:   DO  J=1,N
          WRITE(6,*) '[',I,',',J,']','TH ELEMENT OF U IS', U(I,J)
      END DO UOJLOOP
      END DO UOILOOP
      
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
      
      