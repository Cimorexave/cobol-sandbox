      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  input.
       AUTHOR. sina sadeqi. 
       INSTALLATION. COBOL DEVELOPMENT CENTER. 
       DATE-WRITTEN. 01/01/08. 
       SECURITY. NON-CONFIDENTIAL.
      *****************************************************************
      *****************************************************************
       DATA DIVISION.
       FILE SECTION. 
       WORKING-STORAGE SECTION.
       01 NAME PIC X(15). *> string with 15 chars max
       *> 01  Rec1    PIC X(RecordLength).
      *****************************************************************
       *>WORKING-STORAGE SECTION.
       *>01  COUNTERS-AND-ACCUMULATORS.
       *>    05  REC-KTR        PIC S9(4)     COMP.
       *>    05  TOTAL-AMOUNT   PIC S9(3)V99  COMP-3.
       *>    05  INPUT-DATA     PIC X(30).
      *****************************************************************
      ******************************************************************
       PROCEDURE DIVISION.
           display "what's your name?".
           ACCEPT name.
           display "welcome " name.
           



           stop run.