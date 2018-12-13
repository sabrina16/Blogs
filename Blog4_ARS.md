# Abstract Reduction Systems
This week in class, we covered Abstract Reduction Systems. For our algorithm, we chose to take a look at the Fibonacci sequence. The Fibonacci sequence is a simple and recursvie algorithm that we can explore to help us learn new techniques when developing our own programs. 


The way the Fibanonacci sequence works is that each number is simply the sum of the two preceding numbers. Fibonacci originally listed the sequence starting with 1 and 1, but modern mathemeticians like to start with 0 and 1. Given this, 
the Fibanocci sequence looks like this:

```
(0,) 1,1,2,3,5,8,13,21,34,55, ...
```

 
Let's take a look at the Fibonacci sequence if it's coded to be recursive. 
```
function F(n)
  if n = 0
    return 0
  if n = 1
    return 1
  else
    return F(n-1) + F(n-2)
```

In discrete math, a "base case" is often used to prove the truth of the property for all natural numbers proceeding the base
case, which generally begins with 0 or 1. In the Fibanacci sequence, we have two base cases: 0 and 1, which both output 1.
Otherwise, the program calls Fibonacci on "n-1" and n-2". No matter what variable,n, we input into our program the values of n will continue to decrease until it reaches 0 and 1. This is how the Fibonacci sequence is able to recursively call itself given any natural number. 
