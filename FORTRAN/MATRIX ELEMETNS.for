      PROGRAM MAIN
      
      REAL X(2,3), Y(3,2)
      
      READ*, X
      
      WRITE(6,*) 'X IS', X
      
      WRITE(6,*) '2ST ELEMENT OF X IS', X(1,1)
      WRITE(6,*) '2ST ELEMENT OF X IS', X(1,2)
      WRITE(6,*) '2ST ELEMENT OF X IS', X(1,3)
      WRITE(6,*) '2ST ELEMENT OF X IS', X(2,1)
      WRITE(6,*) '2ST ELEMENT OF X IS', X(2,2)
      WRITE(6,*) '2ST ELEMENT OF X IS', X(2,3)
      !CALL MMULT(X,Y,Z)
      
      READ*, Y
      
      WRITE(6,*) 'Y IS', Y
      
      WRITE(6,*) '2ST ELEMENT OF X IS', Y(1,1)
      WRITE(6,*) '2ST ELEMENT OF X IS', Y(2,1)
      WRITE(6,*) '2ST ELEMENT OF X IS', Y(3,1)
      WRITE(6,*) '2ST ELEMENT OF X IS', Y(1,2)
      WRITE(6,*) '2ST ELEMENT OF X IS', Y(2,2)
      WRITE(6,*) '2ST ELEMENT OF X IS', Y(3,2)
      
      END
      
      !SUBROUTINE MMULT 
      !
      !REAL X(2,3), Y(3),Z(3)
      !
      !READ*, X
      !
      !WRITE(6,*) 'X IS', X
      !
      !READ*, Y
      !
      !WRITE(6,*) 'Y IS', Y
      !
      !DO 100 
      
      