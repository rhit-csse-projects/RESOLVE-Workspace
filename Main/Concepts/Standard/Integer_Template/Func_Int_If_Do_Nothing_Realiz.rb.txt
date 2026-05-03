Realization Func_Int_If_Do_Nothing_Realiz for Int_Do_Nothing_Capability of Integer_Template;

	Procedure Do_Nothing(restores I: Integer);
		Var J: Integer;

		If (Is_Zero(Difference(Sum(I, J), J))) then
			I :=: J;
		end;
	end Do_Nothing;
end Func_Int_If_Do_Nothing_Realiz;
