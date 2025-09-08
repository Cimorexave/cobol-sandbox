       identification division.
       program-id. calculator.

       *> ----------

       data division.
       working-storage section.
       01 num1 PIC S9(5)V99 . *> signed numeric with 5 digits and 2 decimals 
       01 num2 PIC S9(5)V99 . 
       01 outnum PIC S9(9)V99 . 
       01 operation PIC 9(1) . 

       *> ----------
       procedure division.
        *>    display "starting...".
           perform select-operation.
           perform get-inputs.
           display "result: "  outnum.
           perform select-operation.
           goback .

           select-operation.
               display "select your operation:".
               display "0. EXIT"
               display "1. +-" .
               display "2. */".
               accept operation.
               if operation = 0
                  stop run
               end-if
               exit .

           calculate.
               evaluate true
                   when operation = 1
                          compute outnum = (num1 + num2)
                   when operation = 2
                          compute outnum = (num1 * num2)
                   when other
                       perform get-inputs
                      continue
               end-evaluate.
               exit.
           get-inputs.
               evaluate true
                   when operation = 1
                       display "a + b"
                       display "input a:"
                    *>   if 
                    *> safe inputs 
                      accept num1
                      display "input b:"
                      accept num2
                      perform calculate
                   when operation = 2
                      display "a * b"
                      display "input a:"
                    *>   if 
                    *> safe inputs 
                      accept num1
                      display "input b:"
                      accept num2
                      perform calculate
                   when other
                       display "invalid operation. try again."
                       perform select-operation 
               end-evaluate.
               exit.
           
           
