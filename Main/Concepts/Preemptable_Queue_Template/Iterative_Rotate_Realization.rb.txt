Realization Iterative_Rotate_Realization for Rotating_Capability of
		Preemptable_Queue_Template;

	Procedure Rotate(updates Q: P_Queue; evaluates n: Integer);
		Var E: Entry;

		While (n > 0)
			changing n, E, Q;
			maintaining Q = Prt_Btwn(#n - n, |#Q|, #Q) o
				Prt_Btwn(0, #n - n, #Q);
			decreasing |n|;
		do
			Dequeue(E, Q);
			Enqueue(E, Q);
			n := n - 1;
		end;
	end Rotate;

end Iterative_Rotate_Realization;
