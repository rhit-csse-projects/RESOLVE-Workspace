Realization Recursive_Rotate_Realization for Rotating_Capability of
		Preemptable_Queue_Template;

	Recursive Procedure Rotate(updates Q: P_Queue; evaluates n: Integer);
		decreasing |n|;

		Var E: Entry;

		if (n > 0) then
			Dequeue(E, Q);
			Enqueue(E, Q);
			n := n - 1;
			Rotate(Q, n);
			n := n + 1;
		end;

	end Rotate;

end Recursive_Rotate_Realization;
