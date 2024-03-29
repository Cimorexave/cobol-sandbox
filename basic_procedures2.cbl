      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  basic_procedures2.
       AUTHOR. Sina Sadeqi. 
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AGE PIC 9(2).
       01 IS-LEGAL PIC 9(1) VALUE 0.
       01 FIRST-TIME-RUNNING PIC 9(1) VALUE 1.
      ******************************************************************
       PROCEDURE DIVISION.
           PERFORM WELCOM.
           PERFORM USER-INPUTTING UNTIL IS-LEGAL <> 0.
           PERFORM FINISHED.
           STOP RUN.

       WELCOM.
           DISPLAY "welcome. how old are you?".
       END-WELCOM.

       USER-INPUTTING.
           IF (FIRST-TIME-RUNNING <> 1)
              DISPLAY "you're not legal. try again.".
              MOVE 0 TO FIRST-TIME-RUNNING.
           ACCEPT AGE.
           IF (AGE >= 18)
              COMPUTE IS-LEGAL = 1.
      *     COMPUTE IS-LEGAL = (AGE >= 18).
       END-USER-INPUTTING.
       
       FINISHED.
           DISPLAY "you can come in!".
       END-FINISHED.