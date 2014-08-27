module Compare (heteroCompare, homoCompare) where

-- exports function that take 2 inputs and a list of ordering functions whose order
-- corresponds to their importance as criteria for comparing those inputs and
-- then compares them accordingly
--
-- heteroCompare takes a list of pairs of functions so that the first function
-- is applied to the first input and the second function is applied to the
-- second input before they are compared
--
-- homoCompare is like heteroCompare only it takes a simple list of function and
-- applies the same function to each input

import Data.Monoid

-- right now the list must contain functions that all return the same instance
-- of the ordering class, ideally it should be for any instance as long as the
-- functions in the pair return the same instance


heteroCompare :: Ord o => a -> b -> [(a -> o, b -> o)] -> Ordering
heteroCompare a b = foldr mappend mempty . map (\(f, g) -> compare (f a) (g b))


homoCompare :: Ord o => a -> a -> [a -> o] -> Ordering
homoCompare a b = heteroCompare a b . map (\f -> (f, f))
