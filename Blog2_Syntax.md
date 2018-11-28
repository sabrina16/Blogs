# Computations and Syntax!
During our first week in class, we mainly covered the topics in Computation and Syntax. 

Computations refer to how computers perform calculations, and syntax is defined as the set of grammar rules that a specific programming language must follow. 

**As we refer back to Common Lisp, we found something incredibly interesting. In Common Lisp, there is a special notation that is used called “Polish Notation.”

Polish notation, also known as prefix notation, is a mathematical notation where the operator precedes the operand. It's very different 
from what we are normally used to. An example of a basic addition operation in Java looks like this: 
```
System.out.println(1 + 2 + 3);
```
In Common Lisp, Polish notation is used to simplify operations. Here is an example of simple addition being done in Common Lisp 
using prefix notation (we are showing the expression without including the print statement to clearly show how Polish notation works)
```
+ 1 2 3 
```

Polish notation can also be used with different operations in one expression. But before we demonstrate an example of this it's important
to see how the expression would be written in conventional infix notation so we can clearly see the differences in Polish notation. 
The expression in conventional infix notation would be written as
```
(5-6) x 7
```
In Polish notation, the same expression would be written as
```
x (-5 6) x 7
``` 

It is important to keep in mind that the "-" denotes the binary operation of subtraction. Prefix/postfix notation is popular 
for its natural ability to express the intended order of operations without having to use parentheses and other rules. 
