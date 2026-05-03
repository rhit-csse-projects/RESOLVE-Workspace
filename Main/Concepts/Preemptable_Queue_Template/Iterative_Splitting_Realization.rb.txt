Realization Iterative_Splitting_Realization for Splitting_Capability of
		Preemptable_Queue_Template;

	Procedure Split (updates P: P_Queue; replaces Q: P_Queue; 
			evaluates n: Integer);

		Var E: Entry;
		Var Front: P_Queue;

		While (n > 0)
			changing n, E, Q, P, Front;
			maintaining Front = Prt_Btwn(0, #n - n, #P) and
				P = Prt_Btwn(#n - n, |#P|, #P);
			decreasing n;
		do
			Dequeue(E, P);
			Enqueue(E, Front);
			n := n - 1;
		end;

		P :=: Q;
		Front :=: P;

	end Split;

end Iterative_Splitting_Realization;
