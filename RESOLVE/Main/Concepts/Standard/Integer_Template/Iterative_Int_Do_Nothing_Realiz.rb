Realization Iterative_Int_Do_Nothing_Realiz for Int_Do_Nothing_Capability of Integer_Template;

	Procedure Do_Nothing(restores I: Integer);
		Var J, K: Integer;

		J := Replica(I);
--		I := Difference(Sum(I, J), J);
--		I := Difference(I, J);

		While (Greater(J, K))
			changing I, J;
			maintaining I = #I;
			decreasing J;
		do
			Increment(I);
			Decrement(I);
			Decrement(J);
		end; 
	end Do_Nothing; 
end Iterative_Int_Do_Nothing_Realiz;
