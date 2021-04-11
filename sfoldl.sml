(* Problem 7 *)
fun sfoldl _ c nil = c
|   sfoldl f c (a::t) = 
    sfoldl f (f (a,c)) t;
