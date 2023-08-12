doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else doubleMe x

boomBangs xs = [if x `mod` 2 == 1 then "BOOM!" else "BANG!" | x <- xs]

length' xs = sum [1 | _ <- xs]

removeUpperCase st = [c | c <- st, c `elem` ['A' .. 'Z']]