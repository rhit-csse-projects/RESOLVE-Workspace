Realization Inject_Front_Realiz for Inject_Front_Capability of Queue_Template;

	Procedure Inject_at_Front(alters E: Entry; updates Q: Queue);
		Var T: Queue;
		
		Enqueue (E, T);
		While ( 1 <= Length(Q) )
			changing Q, T, E;
			-- fill in a suitable invariant
			maintaining true;
			decreasing |Q|;
		do
			Dequeue(E,Q);
			Enqueue(E,T);
		end;
		Q :=: T;
	end Inject_at_Front;
end Inject_Front_Realiz;
