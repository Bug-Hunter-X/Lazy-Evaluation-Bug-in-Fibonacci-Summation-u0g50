The solution uses the `take` function to explicitly limit the number of elements processed by `sum`. By taking only the first 10 elements from `fibs`, we avoid attempting to sum an infinite list. 

```haskell
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main :: IO ()
main = print $ sum (take 10 fibs) 
```