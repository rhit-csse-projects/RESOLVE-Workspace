
(* This is intended as a bare-bones alternative to Integers or Natural
 * Numbers for use in example. *)
Precis Simple_Number_Theory;
		uses Boolean_Theory, Set_Theory;

	Math Type Num: SSet;

	Definition 0: Num;

	Definition suc: Num -> Num;

	Definition (i: Num) + (j: Num) : Num = 0;

	Definition (i: Num) - (j: Num) : Num = 0;

	Definition (i: Num) * (j: Num) : Num = 0;

	Definition (i: Num) / (j: Num) : Num = 0;

	Definition (i: Num) = (j: Num) : B = True;

	Definition (i: Num) <= (j: Num) : B = True;

	Definition (i: Num) >= (j: Num) : B = True;

	Definition (i: Num) < (j: Num) : B = True;

	Definition (i: Num) > (j: Num) : B = True;

end Simple_Number_Theory;
