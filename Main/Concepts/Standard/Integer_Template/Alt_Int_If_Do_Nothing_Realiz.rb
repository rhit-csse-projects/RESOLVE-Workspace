Realization Alt_Int_If_Do_Nothing_Realiz for Int_Do_Nothing_Capability of Integer_Template;

	Procedure Do_Nothing(restores I: Integer);
		Var J: Integer;

		If (Is_Zero(I)) then
			I :=: J;
		end;
		If (Greater(I, J)) then
			Increment(I);
			Decrement(I);
		end;
	end Do_Nothing;
end Alt_Int_If_Do_Nothing_Realiz;
