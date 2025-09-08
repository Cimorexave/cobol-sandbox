       identification division.
       program-id. vars-practice.

       *> --------- 
       data division.
       working-storage section.
        *>    variables have level numbers behind them.
       01 num1 pic S9(5)V9 . *> independents
       
       *> --------- 
       procedure division.
           display "starting..." .