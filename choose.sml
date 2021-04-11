(* Problem 4 *)

fun choose n [] = [[]]
  | choose 0 _  = [[]]
  | choose n s =
    let
      fun remove item set =
          List.filter (fn e => (not (e = item))) set
    in
      foldr (fn (s',result) =>
                foldr (fn (p,l) => (s'::p)::l) result (choose (n-1) (remove s' s))) [] s
    end
