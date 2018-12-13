# Termination 

To demonstrate termination, we implented a factorial function. We chose Factorials because they have a lot of 
practical applications. They often appear in calculus, specifically Taylor's Thereom. Another practical use of Factorials
show up in combinatorics, which is the art of counting. 
The following is a code in Common Lisp:
```
(defun factorial (n)
  (if (= n 1)              
      1                           
      (* n (factorial (- n 1))))) 

(write-line "Please enter a number...")
(finish-output)              ; this makes sure the text is printed now
(let ((x (read)))
 (format t "~D! is ~D" x (factorial x)))
 ```

In the case of our code, the measure function is n because our factorial function decreases n-1 each time it calls itself. 
Our function takes an integer ,n, as its input and calculates the factorial for it. The Factorial function will continue
to call itself until integer ```n``` decreases to 1 which allows for termination. 

Being able to implement Factorial algorithms can be extremely effective in a lot of studies. 
For example, The Gamma function is defined to be an extension of the factorial to real and complex numbers: (n-1)! 
and it finds application in areas such as quantum physics and astrophysics.  

