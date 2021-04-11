datatype 'data tree =
    Empty |
    Node of 'data tree * 'data * 'data tree;

fun searchBST x Empty = false
| searchBST x (Node(left,y,right)) =
        x=y 
        orelse searchBST x left 
        orelse searchBST x right;