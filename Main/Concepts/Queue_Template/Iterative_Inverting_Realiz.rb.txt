Realization Iterative_Inverting_Realiz for Inverting_Capability of Queue_Template;

	Facility SF is Stack_Template(Entry, Max_Length)
		realized by Array_Realiz;

	Procedure Invert (updates Q: Queue);
		Var S: SF.Stack;
		Var Next_Entry: Entry;

		While ( 1 <= Length(Q) )
			maintaining Reverse(Q) o S = Reverse(#Q);
			decreasing |Q|;
		do
			Dequeue(Next_Entry, Q);
			Push(Next_Entry, S);
		end;

		While ( 1 <= Depth(S) )
			maintaining Q o S = Reverse(#Q);
			decreasing |S|;
		do
			Pop(Next_Entry, S);
			Enqueue(Next_Entry, Q);
		end;
	end Invert;
end Iterative_Inverting_Realiz;