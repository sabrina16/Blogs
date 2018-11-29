;; "While" can also serve as a termination check.  Both
;; "do" and "collect" can be combined in one expression.

```
(loop for x from 1
      for y = (* x 10)
      while (< y 100)

      do (print (* x 5))

      collect y)

5 
10 
15 
20 
25 
30 
35 
40 
45 
(10 20 30 40 50 60 70 80 90)
```
