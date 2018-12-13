# Partial Correctness 

Partial Correctness is correct under the assumption of termination. Given this information, we will use our Factorial algorithm from the termination exercise to prove partial correctness. 
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

We can prove partial correctness using loop invariants. 
