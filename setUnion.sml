(* Problem 2 *)
fun memberSet ([], _) = false
|   memberSet (head::tail, element) =
        if head = element then true
        else memberSet (tail, element);

fun setUnion ([], set2) = set2
|   setUnion (set1, []) = set1
|   setUnion (set1, set2) =
        let
            fun unionHelper ([], [], union) = union
            |   unionHelper ([], head::tail, union) =
                    if memberSet (union, head) then unionHelper ([], tail, union)
                    else unionHelper([], tail, head::union)
            |   unionHelper (set1, set2, _) = unionHelper ([], set2, set1);
        in
            unionHelper (set1, set2, [])
        end;


