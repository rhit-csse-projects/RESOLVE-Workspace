Realization Iterative_Inverting_Realiz for Inverting_Capability of Globally_Bounded_Queue_Template;

	Facility SF is Globally_Bounded_Stack_Template(Entry)
		realized by Skeleton_Realiz;

	Procedure Invert (updates Q: Queue);
		Var S: SF.Stack;
		Var Next_Entry: Entry;

		While ( not Is_Empty(Q) )
			maintaining Reverse(Q) o S = Reverse(#Q);
			decreasing |Q|;
		do
			Dequeue(Next_Entry, Q);
			Push(Next_Entry, S);
		end;

		While ( not Is_Empty(S) )
			maintaining Q o S = Reverse(#Q);
			decreasing |S|;
		do
			Pop(Next_Entry, S);
			Enqueue(Next_Entry, Q);
		end;
	end Invert;
end Iterative_Inverting_Realiz;