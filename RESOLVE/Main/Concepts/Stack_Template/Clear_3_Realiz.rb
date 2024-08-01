Realization Clear_3_Realiz for Clear_3_Capability of Stack_Template;
	Procedure Clear_3(clears S: Stack);
		Var Next_Entry: Entry;

		Pop(Next_Entry, S);
		Pop(Next_Entry, S);
		Pop(Next_Entry, S);
	end Clear_3;
end Clear_3_Realiz;