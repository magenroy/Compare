module Comparisons where

import Data.Char

--provide some functions for comparisons

--utility functions
count = (length .) . filter
checkFor = count . flip elem


--comparison functions
vowels = checkFor "aeiou"
consonants = checkFor "bcdfghjklmnpqrstvwxyz"

controls = count isControl
spaces = count isSpace
lowers = count isLower
uppers = count isUpper
alphas = count isAlpha
alphaNums = count isAlphaNum
prints = count isPrint
digits = count isDigit
octDigits = count isOctDigit
hexDigits = count isHexDigit
letters = count isLetter
marks = count isMarks
numbers = count isNumber
punctuations = count isPunctuation
symbols = count isSymbol
separators = count isSeparator
asciis = count isAscii
latin1s = count isLatin1
asciiUppers = count isAsciiUpper
asciiLowers = count isAsciiLower
