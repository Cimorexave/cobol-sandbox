       identification division.
       program-id. caller.

       data division.
       working-storage section.
       01  msg pic x(256) value "hello".
       *>> load copybook 
       copy "./calls/book.cpy".
       
       *>> <summary>calls the callee program by passing vars</summary>
       procedure division.
           display "CALLER...".
           call "callee" using by reference msg.
           display "copybook: " common-id.
           display "copybook: " common-name.
       end program caller.
       
