Realization Int_Assign_Clear_2_Realiz for Clear_2_Capability of Stack_Template;
	Procedure Clear_2(updates S: Stack);
		Var Next_Entry: Entry;
		Var D, I: Integer;

		I := 1;
		D := Sum(Depth(S), I);
		While (Are_Not_Equal(I, D))
			changing I, Next_Entry, S;
			maintaining (|S| = (D - I));
			decreasing D - I;
		do
			Pop(Next_Entry, S);
			Increment(I);
		end;
	end Clear_2;
end Int_Assign_Clear_2_Realiz;
