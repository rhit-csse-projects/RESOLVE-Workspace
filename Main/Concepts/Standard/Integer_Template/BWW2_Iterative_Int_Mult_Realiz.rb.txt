Realization BWW2_Iterative_Int_Mult_Realiz for BWW_Int_Mult_Capability of Integer_Template;

	Procedure Multiply(clears i: Integer; updates j: Integer);
		Var s, z: Integer;

		While (Is_Not_Zero(i))
			changing i, s;
			maintaining (s + i * #j = #i * #j) and (i >= 0);
			decreasing i;
		do
			s := Sum(s,j);
			Decrement(i);
		end; 
		j :=: s;
	end Multiply; 
end BWW2_Iterative_Int_Mult_Realiz;
