(* Problem 1 *)
fun eval (coefficients : real list, x : real) : real =
      let
        
        fun length nil : int = 0
        |   length ((u : real) :: (v : real list)) : int = 
              1 + length(v);

        val power = (length(coefficients) - 1) : int;

        fun reverse nil : real list= nil
        |   reverse ((first : real) :: (rest : real list)) : real list = reverse rest @ [first];

        val reverseList = reverse(coefficients) : real list;

        fun pow(y : real, n : int) : real =
          if (n = 0) then real(1)             
          else y * pow(y, n-1);

        fun recursiveEval (nil, p : real, q : int) : real list = []
        |   recursiveEval (((a : real) :: nil), p : real, q : int) : real list = [a * pow(p,q)]
        |   recursiveEval (((a : real) :: (b : real list)), p : real, q : int) : real list =
              (a * pow(p, q)) :: recursiveEval(b, p, q - 1)
        
        (* Define variable for the list of products *)
        val prodList = recursiveEval(reverseList, x, power)

        fun listSum (nil) : real = real(0)
        |   listSum ((r : real) :: nil) : real = r
        |   listSum ((r : real) :: (s : real list)) : real =
              r + listSum(s)

      in
        listSum prodList
      end;
eval([7.0, 5.0, 0.0, 2.0],2.0);
