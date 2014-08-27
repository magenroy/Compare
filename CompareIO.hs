module Main (main) where

import System.Environment (getArgs)
import Data.Char

import Compare
import Comparisons

usage :: IO ()
usage = do
	putStrLn "exports function that take 2 inputs and a list of ordering functions whose order corresponds to their importance as criteria for comparing those inputs and then compares them accordingly"
