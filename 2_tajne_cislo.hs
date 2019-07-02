import Data.List

infixr 1 ?
(?) :: Bool -> a -> a -> a
(True ? a) _ = a
(False ? _) b = b

sortInt :: Int -> String
sortInt number = sort $ show number

compareStrings :: String -> String -> Bool
compareStrings str1 str2 = str1 == str2 ? True $ False

same_digits :: Int -> Int -> Bool
same_digits int1 int2 = compareStrings (sortInt int1) (sortInt int2) ? True $ False

isSecret :: Int -> Bool
isSecret number = same_digits number (number * 2) && same_digits number (number * 3) && same_digits number (number * 4) && same_digits number (number * 5) && same_digits number (number * 6) ? True $ False

generate :: [Int]
generate = filter isSecret [100000..199999]

main = do
	putStrLn $ show $ generate !! 0