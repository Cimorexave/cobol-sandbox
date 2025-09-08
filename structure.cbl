       IDENTIFICATION DIVISION. *> mandatory section info about the routine
       PROGRAM-ID. structure. *> truly mandatory
       
       *> ---------------------------------------------
       environment division. *> environment properties of the routine
       *> it has two sections. can be ignored in modern compilers.
       *> configuration: specifies the computer info for run and compilation
       *> input-output: matches internal files and devices names with external ones.
       *> ---------------------------------------------

       data division.
       file section.       
       working-storage section. 
           01  input-string PIC X(9).
       linkage section.
       *> ---------------------------------------------

       *> ---------------------------------------------
       procedure division.
           display "starting...".
           perform sayhi.
           perform  get-input
           display "your said: " input-string.
           stop run.
       *> ---------------------------------------------
           sayhi.
               display "hi hi hi hi". 
           get-input.
               display "type something to input:".
               accept input-string.

           get-input-safe.
               display "type something to input:".
               accept input-string.