Realization Incorrect_Int_Do_Nothing_Realiz for Int_Do_Nothing_Capability of Integer_Template;
	
	-- Exercise: Why is this code incorrect?
	Procedure Do_Nothing(restores I: Integer);
		Decrement(I);
		Increment(I);
	end Do_Nothing;
end Incorrect_Int_Do_Nothing_Realiz;
