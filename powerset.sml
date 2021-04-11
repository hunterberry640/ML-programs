(* Problem 5 *)

(* inserts the item a into each sublist *)
fun insertAll(a,nil) = nil
     |   insertAll(a,head::tail) = (a::head)::insertAll(a,tail);

fun powerset(nil) = [[]]
     |   powerset(x::xs) =
             powerset(xs)@insertAll(x,powerset(xs));


powerset([]);
powerset([1,4,2,3]);
insertAll(3,[[5],[2],[9],[8]]);
