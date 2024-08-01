Realization Defn_Do_Nothing_Realiz for Defn_Do_Nothing_Capability of Stack_Template;
	Procedure Do_Nothing(updates S: Stack);
		Var Next_Entry: Entry;

		Pop(Next_Entry, S);
		Push(Next_Entry, S);
	end Do_Nothing;
end Defn_Do_Nothing_Realiz;