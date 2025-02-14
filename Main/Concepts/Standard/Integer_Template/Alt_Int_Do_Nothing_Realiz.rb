Realization Alt_Int_Do_Nothing_Realiz for Int_Do_Nothing_Capability of Integer_Template;

	Procedure Do_Nothing(restores I: Integer);
		Var J, L, M: Integer;
		J := Sum(I, Product(I, I));
		J :=: I;
	end Do_Nothing;
end Alt_Int_Do_Nothing_Realiz;
