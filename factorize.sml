(* Probem 6 *)
fun factorize n =
  let
    fun findFactors (0,n) = nil
    |   findFactors (num,n) =
            if n mod num = 0 then num :: findFactors(num-1,n) 
            else findFactors(num-1,n);
  in
    if n < 2
    then [n]
    else findFactors (n,n)
  end