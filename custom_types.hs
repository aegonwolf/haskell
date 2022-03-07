--define a Type String as a list of Char
type String = [Char]
--define a coordinate on the xy-plane
type Point = (Double, Double)

--very verbose
midpoint :: (Double, Double) -> (Double, Double) -> (Double, Double)
midpoint (x1, y1) (x2, y2) = ((x2 + x1) / 2, (y1 + y2) / 2)

--make things easier
midpoint' :: Point -> Point -> Point
midpoint (x1, y1) (x2, y2) = ((x2 + x1) / 2, (y1 + y2) / 2)
--can pass midpoint p1 p2 where p1 and p2 are points


--newtype not interchangeable
newtype CustoemrId = MakeCustomerId Int

--need to use constructor to create from newtype
customer :: MakeCustomerId
customer = MakeCustomerId 13

--to convert back
customerToInt :: CustomerId -> Int 
customerToInt (MakeCustomerId i) = i

--Records
data Customer = MakeCustomer 

 { customerId :: CustomerId

 , name :: String

 , luckyNumber :: Int

 }

 alice :: Customer
 allice = MakeCustomer
 { customerId = MakeCustomerId 12
 , name = "Alice"
 , luckyNumber = 42
 }

 --update record
 sally = alice {name = "Sally", luckyNumber = 84}

-- Algebraic Data Types
-- Arguments are identified by their position
data Customer = MakeCustomer CustomerId String Int

alice :: Customer
alice = Customer (CustomerId 13) "Alice" 42

getCustomerId :: Customer -> CustomerId 
-- use pattern matching
getCustomerId (Customer cust_id name luckyNumber) = cust_id

data Bool = False | True
x :: Bool 
x = False

y :: Bool
y = True

negate :: Bool -> Bool 
negate True = False
negate False = True

data DialogResponse = Yes | No | Help | Quit

data MaybeInt = NoInt | JustInt Int