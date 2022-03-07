string = "hello"
string2 = "world"
greeting = string ++ " " ++ string2

num x = x : (num ( x - 1))