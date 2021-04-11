(* problem 9 *)
datatype 'data tree =
    Empty |
    Node of 'data tree * 'data * 'data tree;
    
fun makeBST [] _ = Empty
|   makeBST [x] _ = Node (Empty, x, Empty)
|   makeBST (a::b::tail) operator =
        if operator (a, b) then Node (Empty, a, makeBST (b::tail) operator)
        else Node (makeBST (a::tail) operator, b, Empty);