# 01 Starting Point

The written source code is found in the folder first_function.

## Expressions

Haskell allows a number of expressions.

```haskell
5 == 5  -- True
1 = 0 -- False
5 /= 5 -- False
5 /= 4 -- False
"hello" == "hello -- True
```

## Functions

Functions are prefixes followed by one or more parameters. Each functions returns a value.

```haskell
succ 8 -- Successor of 8 is 9
min 2 9 -- Returns 2
min 2.9 1.2 -- Returns 1.2
max 2 42 -- Returns 42
max 13 4 -- returns 13
```

Functions can be linked into one expression.

```haskell
succ 9 + max 5 4 + 1 -- Returns 16
```

If functions take two parameter they can be called as infix functions to make it clearer.

```haskell
-- Instead of
div 92 10

-- We can write
92 `div` 10
```

## Writing Functions

Functions can also be indivually dfined by the programmer.

```haskell
doubleMe x = x + x
```

This function takes one parameter and returns the sum of itself. You can write functions in *.hs files.

You can also call functions in functions definitions.

```haskell
doubleUs x y = doubleMe x + doubleMe y
```

Unlike other programming languages Haskell requires alsways an else branch when using if statements.

```haskell
doubleSmallNumber x = if > 100
                        then x
                        else x * 2
```

Expressions in functions can be written in one line or in multible.

## Introduction to Lists

Lists are denoted by square backets ([ and ]). In lists you store multible elments of the same types (e.g. characters or integers). Strings are lists of characters.

```haskell
[1, 2, 3, 4]
['a', 'b', 'c', 'd']
```

Lists can be put together.

```haskell
[1,2,3,4] ++ [9,10,11,12]
"hello" ++ " " ++ "world"
```

Elements can be added to lists.
```haskell
5:[1,2,3,4,5]  -- Results in [5,1,2,3,4,5]
```

An empty list is [].

Lists can be nested.

```haskell
let b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
b ++ [[1,1,1,1]]   -- Results in [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3],[1,1,1,1]]
[6,6,6]:b -- Results in [[6,6,6],[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
```

Lists can be accesesd by index. For tht we use !! followed by the index. The index starts a 0.

```haskell
[9.4,33.2,96.2,11.2,23.25] !! 1 -- Returns 33.2
```

Also lists can be compared.

```haskell
[3,2,1] > [2,1,0]  -- true
[3,2,1] > [2,10,100] -- True
[3,4,2] > [3,4] -- True
[3,4,2] > [2,4] -- True
[3,4,2] == [3,4,2] -- True
```

Functions can be called on lists.

```haskell
head [5,4,3,2,1] -- 5
tail [5,4,3,2,1] -- [4,3,2,1]
last [5,4,3,2,1] -- 1
init [5,4,3,2,1] -- [5,4,3,2]
```

## Ranges

To avoid long successive sequences you can also write ranges.

```haskell
[1..20] -- [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]  
['a'..'z'] -- "abcdefghijklmnopqrstuvwxyz"
['K'..'Z'] -- "KLMNOPQRSTUVWXYZ"
[2,4..20] -- [2,4,6,8,10,12,14,16,18,20]
[3,6..20] --[3,6,9,12,15,18] 
```

## List Comprehensions

You can also apply comprehensions on lists.

```haskell
[x * 2 | x <- [1..10]] -- [2,4,6,8,10,12,14,16,18,20]
```

We can also add conditionals or predecates to the comprehansions.

```haskell
[x * 2 | x <- [1..10], x * 2 >= 12] -- [12,14,16,18,20]
[ x | x <- [50..100], x `mod` 7 == 3] -- [52,59,66,73,80,87,94]
```

Predicates are also called filtering.

We can add multible predecated.

```haskell
[ x | x <- [10..20], x /= 13, x /= 15, x /= 19] -- [10,11,12,14,16,17,18,20]
[ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50] -- [55,80,100,110] 
```

Of course we can combine this with functions.

```haskell
boomBangs xs = [if x `mod` 2 == 1 then "BOOM!" else "BANG!" | x <- xs]
```

## Tubles

Like lists tuples store several values into a single value. But there are fundamental differences. While a list consists for example of number then its type is a list of numbers. It does not matter the number of items in the list. On the other side with tuples you know the length. Also, tuples can combine a different data types such taht we could have a tuple that pairs an integer with a string. If tuples are put together into a list the tuple type defines the type of a list. For instance a lists consists of a number of 2 tuple with integer/string pairs. Then you cannot add a 3 tuple. Tuples are denoted by ( and ) brackets.

Of course there are functions that can be used over tuples.

```haskell
fst (8, 11) -- 8
fst ("Wow", 42) -- "Wow"

snd (8, 11) -- 11
snd ("Wow", 42) -- 42
```

Note that these functions only work on pairs.

An interessting function is zip. It takes in as parameters two lists of different types with the same length and returns a list of 2 tuples. If one list is longer than the other it will get cut to the length of the shorter list.

```haskell
zip [1,2,3,4,5] [5,5,5,5,5] -- [(1,5),(2,5),(3,5),(4,5),(5,5)]
zip [1 .. 5] ["one", "two", "three", "four", "five"] -- [(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]
zip [5,3,2,6,2,7,2,5,4,6,6] ["im","a","turtle"] -- [(5,"im"),(3,"a"),(2,"turtle")]
```

[Here's](http://learnyouahaskell.com/starting-out#tuples) (problem and solution is given at the end of the tuples section) a problem that combines tuples and list comprehensions: which right triangle that has integers for all sides and all sides equal to or smaller than 10 has a perimeter of 24? First, let's try generating all triangles with sides equal to or smaller than 10:

```haskell
let triangles = [(a, b, c) | c <- [1..10], b <- [1..10], a <- [1..10]]
```

We are drawing the elements from three lists. These are 3 tuples that represent triangles with sides that are equal or less than 10. The next step is to add the condition that we whant only all triangles that are right. Also added is that side b is not the hypothenose and side is not larger than b.

```haskell
let rightTriangles = [(a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
```

Lastly we modify the function by saying that we want the triangles with a perimeter of 24.

```haskell
let rightTriangles = [(a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c == 24]
rightTriangles -- [(6,8,10)]
```