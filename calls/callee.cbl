       identification division.
       program-id. callee.
       
       data division.
    *>    working-storage section.
       
       linkage section.
       01  msg pic X(256).

       procedure division using msg.
           display "CALLEE...".
           display "passed messaage is: " msg.
       end program callee.
