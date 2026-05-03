Realization Iterative_Alt_Int_Mult_Realiz for Alt_Int_Mult_Capability of Integer_Template;

	Procedure Multiply(alters I, J: Integer; replaces K: Integer);
		While (Is_Not_Zero(I))
			changing I, K;
			maintaining K = (#I - I) * #J;
			decreasing I;
		do
			K := Sum(K, J);
			Decrement(I);
		end; 
	end Multiply; 
end Iterative_Alt_Int_Mult_Realiz;
