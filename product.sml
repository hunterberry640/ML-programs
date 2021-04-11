(* Problem 3 *)
fun product([],[]) = 0
|   product(a,[]) = 0
|   product([],a) = 0
|   product(head1::tail1, head2::tail2) = head1*head2 + product(tail1,tail2);


