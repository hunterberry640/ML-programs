(* Problem 8 *)
fun cut n lst = 
    foldr (fn (a, b) => if a >= n then a::b else b) [] lst;