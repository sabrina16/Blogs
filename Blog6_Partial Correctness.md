# Partial Correctness 

Partial Correctness is correct under the assumption of termination. Given this information, we will use our Factorial algorithm from the termination exercise to prove partial correctness. 
```
(defun factorial (n)
  (if (= n 0) ;or (= n 1)
      1                           
      (* n (factorial (- n 1))))) 

(write-line "Please enter a number...")
(finish-output)              ; this makes sure the text is printed now
(let ((x (read)))
(if (> x -1)
(format t "~D! is ~D" x (factorial x))
(format t "Please put in a positive number next time you run this program.")))
 ```

We can prove partial correctness using loop invariants. 
