{-# OPTIONS_GHC -Wall #-}

module Examples where

import Prelude hiding (map, take, drop)

--
-- List examples
--

-- map ::
map = undefined

-- append ::
append  = undefined

-- take ::
take = undefined

-- drop ::
drop = undefined

-- Define a List data type that represents lists that can contain any type of
-- element.

-- data List

--
-- Partial and total functions
--

-- Define a NonEmptyList data type and associated functions

-- data NonEmptyList

-- nelToList ::

-- listToNel ::

-- headNEL ::

-- tailNEL ::

--
-- Higher-order functions
--

-- (.) :: (b -> c) -> (a -> b) -> a -> c

-- ($) :: (a -> b) -> a -> b

-- curry :: ((a, b) -> c) -> a -> b -> c

-- uncurry :: (a -> b -> c) -> (a, b) -> c

-- What about papply?

--
-- Natural numbers
--

data Nat = Zero | Succ Nat

-- isNat :: Nat -> Bool

nat2int :: Nat -> Int
nat2int = error "nat2int: not yet defined"

int2nat :: Int -> Nat
int2nat = error "int2nat: not yet defined"

addCheat :: Nat -> Nat -> Nat
addCheat m n = int2nat (nat2int m + nat2int n)

add :: Nat -> Nat -> Nat
add = error "add: not yet defined"

--
-- Arithmetic expression
--

data Exp = Val Int
         | Add Exp Exp
         | Mul Exp Exp

-- The representation of the expression tree from lecture
e :: Exp
e = Add (Val 1) (Mul (Val 2) (Val 3))

-- Return the "size" of the expression, which is the number of constants it
-- contains.
size :: Exp -> Int
size = error "size: not yet defined"

-- Evaluate an expression
eval :: Exp -> Int
eval = error "eval: not yet defined"

--
-- Binary trees
--

-- Define a data type for binary trees
-- data Tree a

-- The representation of the tree from lecture
-- t :: Tree Int

-- Decide if a given value occurs in a binary tree
occurs = error "occurs: not yet defined"

-- Flatten a tree into a list of its values
flatten = error "flatten: not yet defined"

-- Search for a value in an *ordered* tree (values in left subtree are <, values
-- in right subtree are >).
search = error "search: not yet defined"

--
-- Type classes
--

data Foo = F Int | G Char

-- instance Eq Foo where
