Realization Restoring_Int_Mult_Realiz for Restoring_Int_Mult_Capability of Integer_Template;

	Procedure Multiply(restores I: Integer; updates J: Integer);
		Var K: Integer;
		Var L: Integer;
		Var Z: Integer;

		L := Replica(I);
		While (I /= Z)
			changing I, K;
			maintaining (K + I * #J = #I * #J) and (0 <= I);
			decreasing I;
		do
			K := Sum(K, J);
			Decrement(I);
		end; 
		J :=: K;
		While (L /= Z)
			changing I, L;
			maintaining (I + L = #I) and (0 <= L);
			decreasing L;
		do
			Decrement(L);
			Increment(I);
		end; 
	end Multiply; 
end Restoring_Int_Mult_Realiz;
