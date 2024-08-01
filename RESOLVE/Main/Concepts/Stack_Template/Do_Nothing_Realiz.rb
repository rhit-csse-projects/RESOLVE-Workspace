Realization Do_Nothing_Realiz for Do_Nothing_Capability of Stack_Template;
	Procedure Do_Nothing(restores S: Stack);
		Var Next_Entry: Entry;
		Var X, Y : Integer;
		Y := 1;

		Confirm X + Y = X + Y;

		Pop(Next_Entry, S);
		Push(Next_Entry, S);
	end Do_Nothing;
end Do_Nothing_Realiz;