Realization Multi_Set_Based_Selection_Sort_Realization(
			Operation Compare(restores E1, E2 : Entry) 
				: Boolean;
				requires Is_Total_Preordering(LEQV);
				ensures Compare = LEQV(E1, E2);)
		for Multi_Set_Based_Sorting_Capability of Queue_Template;
	uses String_Theory, Multi_Set_Theory;
	
	(* Note: Under Construction! *)

	Operation Remove_Min(updates Q : Queue; replaces Min : Entry);
		requires |Q| /= 0;
		ensures StringToMultiSet(Q o <Min>) = StringToMultiSet(#Q) and
			Is_Universally_Related(LEQV, <Min>, Q) and
			|Q| = |#Q| - 1;
	Procedure
		Var Considered_Entry : Entry;
		Var New_Queue : Queue;

		Dequeue(Min, Q);		
		While (Length(Q) > 0)
			changing Q, New_Queue, Min, Considered_Entry;
			maintaining StringToMultiSet(New_Queue o Q o <Min>) =
					StringToMultiSet(#Q) and
				Is_Universally_Related(LEQV, <Min>, New_Queue);
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
			maintaining StringToMultiSet(Q o Sorted_Queue) =
					StringToMultiSet(#Q) and
				Is_Conformal_With(LEQV, Sorted_Queue) and 
				Is_Universally_Related(LEQV, Sorted_Queue, Q);
			decreasing |Q|;
		do
			Remove_Min(Q, Lowest_Remaining);
			Enqueue(Lowest_Remaining, Sorted_Queue);
		end;

		Q :=: Sorted_Queue;
	end Sort;

end Multi_Set_Based_Selection_Sort_Realization;
