# Rewriting Strings Using Abstract Reduction Systems (ARS)

## Excercise 1 
* Consider the schemas of rules
```
ab -> ba
ba -> ab
aa ->
b ->
```

Reduce some example strings such as "abba" and "bababa:"
```
abba ->
abab -> 
aabb -> 
bb ->
b ->

bababa -> 
baabba -> 
bbba -> 
bb -> 
ba -> 
```

* The ARS is not terminating because the first two rules are circular, meaning they are infinite looping between each other
back and forth. 
* There are two equivalence classes for ⟷∗. The first one is a string with an even number of a, which has a normal form 
of ' ' (empty string). The second one is a string an odd number of a with a normal form of 'a'.
* To make the ARS terminate, we could take out the first two rules. The measure function for this class is the length of
the string. 


## Exercise 2
* Consider the schemas of rules
```
 ba -> bbaa
 aa ->
 ba -> ab
 ab -> ba
 ```
 
 * Can we reduce ab to aabb? Yes
 ```
ab -> ba 
ba -> bbaa 
bbaa -> baba 
baba -> abba 
abba -> abab 
abab -> aabb 
```
* Can we reduce ba to abbaababbab? No, the system is not terminating. 
```
ba->bbaa
->bbbaaa
->bbbbaaaa
->bbbbbaaaaa
->bbbbbbaaaaaa
->bbbbbabaaaaa
->bbbbabbaaaaa
->…………
-> abbaababbaba
```
* Can we reduce ba to abbaababbaba? Yes, same as above. 


 
