Realization Clear_2_Realiz for Clear_2_Capability of Stack_Template;
	Procedure Clear_2(updates S: Stack);
		Var Next_Entry: Entry;

		Pop(Next_Entry, S);
		Pop(Next_Entry, S);
	end Clear_2;
end Clear_2_Realiz;