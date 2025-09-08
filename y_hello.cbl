       IDENTIFICATION DIVISION.
       PROGRAM-ID. Z-HELLO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-PAUSE        PIC X.   *> single char to swallow Enter
       PROCEDURE DIVISION.
           DISPLAY "HELLO COBOL".
           ACCEPT WS-PAUSE .
           STOP RUN.