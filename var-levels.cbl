       identification division.
       program-id. var-levels.

       data division.
       working-storage section.
       01 EMPLOYEE-RECORD.
           05 EMPLOYEE-NAME.
              10 FIRST-NAME       PIC X(15).
              10 LAST-NAME        PIC X(15).
           05 EMPLOYEE-ADDRESS.
              10 STREET-ADDRESS   PIC X(30).
              10 CITY             PIC X(20).
           05 EMPLOYEE-ID         PIC 9(7).    
       