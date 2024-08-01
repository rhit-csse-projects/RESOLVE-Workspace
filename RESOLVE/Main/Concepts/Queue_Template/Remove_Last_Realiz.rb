Realization Remove_Last_Realiz for Remove_Last_Capability of Queue_Template;
	Procedure Remove_Last(updates Q: Queue; replaces E: Entry);
		Var T: Queue;

		Dequeue (E, Q);
		While ( 1 <= Length(Q) )
			changing Q, T, E;
			-- fill in a suitable invariant
			maintaining true;
			decreasing |Q|;
		do
			Enqueue(E,T);
			Dequeue(E,Q);
		end;
		Q :=: T;
	end Remove_Last;
end Remove_Last_Realiz;