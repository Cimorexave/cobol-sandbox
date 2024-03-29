      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  basic_procedures.
       AUTHOR. Sina Sadeqi. 
      *****************************************************************
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NO-MORE-RECORDS PIC 9(1) VALUE 0.
      ******************************************************************
       PROCEDURE DIVISION.
           PERFORM 000-HOUSEKEEPING THRU 000-EXIT.
           PERFORM 100-MAINLINE THRU 100-EXIT
                   UNTIL NO-MORE-RECORDS > 0.
           PERFORM 200-CLEANUP THRU 200-EXIT.
      *    GOBACK.
           stop run.
           
       000-HOUSEKEEPING.
           DISPLAY "000-HOUSEKEEPING".

       000-EXIT.
           EXIT.

       100-MAINLINE.
           DISPLAY "100-MAINLINE".
           MOVE 1 TO NO-MORE-RECORDS.

       100-EXIT.
           EXIT.

       200-CLEANUP.
           DISPLAY "200-CLEANUP".
           DISPLAY "NORMAL END OF JOB".

       200-EXIT.
           EXIT.