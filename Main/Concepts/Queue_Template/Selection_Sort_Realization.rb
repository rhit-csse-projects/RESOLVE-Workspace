Realization Selection_Sort_Realization(
			Operation Compare(restores E1, E2 : Entry) 
				: Boolean;
				ensures Compare = LEQV(E1, E2);)
		for Sorting_Capability of Queue_Template;
	uses String_Theory;

    (* Note: Under Construction! *)
	
	Operation Remove_Min(updates Q : Queue; replaces Min : Entry);
		requires |Q| /= 0;
		ensures Is_Permutation(Q o <Min>, #Q) and
			Is_Universally_Related(<Min>, Q, LEQV) and
			|#Q| = 1 + |Q|;
	Procedure
		Var Considered_Entry : Entry;
		Var New_Queue : Queue;
		Dequeue(Min, Q);		
		While (Length(Q) > 0)
			changing Q, New_Queue, Min, Considered_Entry;
			maintaining Is_Permutation(
					New_Queue o Q o <Min>, #Q) and
				Is_Universally_Related(<Min>, New_Queue, LEQV);
			decreasing |Q|;
		do
			Dequeue(Considered_Entry, Q);
			if (Compare(Considered_Entry, Min)) then
				Min :=: Considered_Entry;
			end;	
			Enqueue(Considered_Entry, New_Queue);
		end;
		New_Queue :=: Q;
	end Remove_Min;
	
	Procedure Sort(updates Q : Queue);
		Var Sorted_Queue : Queue;
		Var Lowest_Remaining : Entry;

		While (Length(Q) > 0)
			changing Q, Sorted_Queue, Lowest_Remaining;
			maintaining Is_Permutation(Q o Sorted_Queue, #Q) and
				Is_Conformal_With(LEQV, Sorted_Queue) and 
				Is_Universally_Related(Sorted_Queue, Q, LEQV);
			decreasing |Q|;
		do
			Remove_Min(Q, Lowest_Remaining);
			Enqueue(Lowest_Remaining, Sorted_Queue);
		end;
		Q :=: Sorted_Queue;
	end Sort;

end Selection_Sort_Realization;
