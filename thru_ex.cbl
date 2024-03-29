      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  thru_ex.
       AUTHOR. Sina Sadeqi. 
      *****************************************************************
      ******************************************************************
       PROCEDURE DIVISION.
           PERFORM FIRSTPROCEDURE THRU SECONDPROCEDURE.
           PERFORM THRIDPROCEDURE.
           STOP RUN.

       FIRSTPROCEDURE.
           DISPLAY "FIRST PROCEDURE".

       SECONDPROCEDURE.
           DISPLAY "SECOND PROCEDURE".
           EXIT.
       END-SECONDPROCEDURE.

       THRIDPROCEDURE.
           DISPLAY "THIRD PROCEDURE".
           EXIT.