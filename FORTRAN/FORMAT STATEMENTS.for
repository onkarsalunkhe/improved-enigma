      PROGRAM MAIN
      
      IMPLICIT NONE
      
      INTEGER*2 B,KEY
      
      REAL A

      WRITE(6,*) 'INPUT A'
      
      READ*, A
      
!      WRITE(6,100) A
!      
!100   FORMAT(1X,4F12.4)

      
      WRITE(6,1000) A,A,A
      
1000  FORMAT(F10.4,E12.5,I6)      
      END
          
C      FORMAT SPECIFIERS
      !X format code
      !Syntax:  nX
      !Specifies n spaces to be included at this point
      !I format code
      !Syntax: Iw
      !Specifies format for an integer using a field width of w spaces. If integer value exceeds this space, output will consist of ****
      !F format code
      !Syntax: Fw.d
      !Specifies format for a REAL number using a field width of w spaces and printing d digits to the right of the decimal point.
      !A format code
      !Syntax: A or Aw
      !Specifies format for a CHARACTER using a field width equal to the number of characters, or using exactly w spaces (padded with blanks to the right if characters are less than w.
      !4F12.5 – same as  F12.5,F12.5,F12.5,F12.5
