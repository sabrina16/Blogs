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
* Can you find a nice way of stating which words are in the equivalence class of ba?
  1. Words that have an even number of a only
  2. Words that have an odd number of a only 
  3. (b-a) mod 2 = 0 where b≥1
  4. (b-a) mod 2 = 1 where  b≥1
* Can you change the rules so that the ARS becomes terminating without changing its equivalence classes?
```
bbaa->ab
aa ->
ab->ba
```
Using a measure function that counts the strings length proves termination because the number of letters 
keeps reducing until it eventually terminates. 
