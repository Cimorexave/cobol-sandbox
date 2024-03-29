      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  vars.
       AUTHOR. sina sadeqi. 
      *****************************************************************
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 GROUP01.
            02 PHONE_NUMBER            PIC 9(10) VALUE 7845955477.
            02 ST_NAME                 PIC A(20) VALUE 'GeekForGeeks'.
             
       01 GIFTVOUCHER              PIC X(6) VALUE 'ABZ445'.
       01 BALANCE                  PIC S9(3) VALUE -458.
       01 ASSUMED_DEC              PIC P9(2).
       01  COUNTERS-AND-ACCUMULATORS.
           02  REC-KTR        PIC S9(4)     COMP.
           02  TOTAL-AMOUNT   PIC S9(3)V99  COMP-3.
           02  INPUT-DATA     PIC 9(2).
      *****************************************************************
      ******************************************************************
       PROCEDURE DIVISION.
           MOVE 69 TO INPUT-DATA.
           *>display COUNTERS-AND-ACCUMULATORS.

           display "group 01"
           display GROUP01.
           display BALANCE.
           display GIFTVOUCHER.
           *>display ASSUMED_DEC.


           STOP RUN.