Realization Obvious_Flipping_Realiz for Flipping_Capability of
		Globally_Bounded_Stack_Template;

	Procedure Flip(updates S: Stack);
		Var Temp: Stack;
		Var Next_Entry: Entry;

		While ( not Is_Empty(S) )
			maintaining #S = Reverse(Temp) o S;
			decreasing |S|;
		do
			Pop(Next_Entry, S);
			Push(Next_Entry, Temp);
		end;
		Temp :=: S;
	end Flip;
end Obvious_Flipping_Realiz;