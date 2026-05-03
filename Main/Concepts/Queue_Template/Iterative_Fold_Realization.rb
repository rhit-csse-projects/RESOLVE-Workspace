Realization Iterative_Fold_Realization(
			Operation FoldIn(updates soFar : T; 
					restores next : Entry);
				ensures soFar = Combined(#soFar, next);) 
		for Fold_Capability of Queue_Template;

    (* Note: Under Construction! *)

	Procedure Fold_Right(updates Accumulator : T; restores List : Queue);
		Var Included : Queue;
		Var Cur_Entry : Entry;

		While (Length(List) > 0)
			changing List, Included, Cur_Entry, Accumulator;
			maintaining Accumulator = 
				Fold_String_Right(
					Combined, #Accumulator, Included) and
				#List = Included o List;
			decreasing |List|;
		do
			Dequeue(Cur_Entry, List);
			FoldIn(Accumulator, Cur_Entry);
			Enqueue(Cur_Entry, Included);
		end;

		Included :=: List;

	end Fold_Right;

	Procedure Fold_Left(restores List : Queue; updates Accumulator : T);
		
	end Fold_Left;

end Iterative_Fold_Realization;