# Termination 

1. Exercise: Show that whatever the test <TEST> the program below

```
while ub > lb + 1 do
begin r : = (ub + lb) div 2;
if <TEST> then ub := r else lb := r
end 
```
* <Test> will not determine termination given that we use a measure function. The measure function of size r
 decreases with every loop iteration because we defined ```r : = (ub + lb) div 2```. 

2. Exercise: Show that the two programs terminate

```
while m =/= n do
  if m > n then m := m — n else n := n — m
```  
and
```
while m =/= n  do
  if m > n then m : = m — n
  else begin h :=m; m :=n; n := h end
```
 * Assuming that m,n∈ℝ+ and that there exists a measure function such that ϕ(a,b) = |n-m| which becomes smaller
 after every iteration. 
