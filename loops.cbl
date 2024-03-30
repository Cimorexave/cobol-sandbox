       identification division.
       program-id. loops.
      *

       data division.
       working-storage section.
       01 a-index pic 9(3) value 0.
       01 b-index pic 9(3) value 0.
       01 count-number pic 9(3).
      *

       procedure division.
      * main-procedure.
      *    perform loop-a 100 TIMES.
      *    perform loop-b 100 TIMES.

      *    perform loop-a THRU loop-b 100 times.

      *    perform loop-a until a-index >= 100.
      *    perform loop-b until b-index >= 100.

           perform counter varying count-number from 0 by 1
           until count-number > 99.

           stop run.

       loop-a.
           display "a" a-index.
           compute a-index = a-index + 1.

       loop-x.
           display "x".

       loop-b.
           display "b" b-index.
           compute b-index = b-index + 1.

       counter.
           display count-number.
