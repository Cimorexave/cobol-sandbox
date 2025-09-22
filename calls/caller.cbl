       identification division.
       program-id. caller.

       data division.
       working-storage section.
       01  msg pic x(256) value "hello".
       *>> load copybook 
       
       *>> <summary>calls the callee program by passing vars</summary>
       procedure division.
           display "CALLER...".
           call "callee" using by reference msg.
       
       
