       identification division.
       program-id. calculator.

       *> ----------

       data division.
       working-storage section.
       01 num1 PIC S9(5)V99 . *> signed numeric with 5 digits and 2 decimals 
       01 num2 PIC S9(5)V99 . 
       01 operation PIC 9(2) . 

       *> ----------
       procedure division.
        *>    display "starting...".
           perform select-operation.           
           stop run.

           input-num.
               display "input the first number".

           select-operation.
               display "select your operation:".
               display "1. +-" .
               display "2. */".
               accept operation.
               exit .