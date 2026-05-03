Realization Folding_Average_Realization(
			Operation MapEntry(restores E : Entry; replaces I : Integer);
				ensures I = AsInteger(E) and 
					0 <= AsInteger(E) <= max_int;)
		for Averaging_Capability of Queue_Template;
		
    (* Note: Under Construction! *)

	Procedure Average(restores Q : Queue) : Integer;
		Var Cur_Entry : Entry;
		Var Cur_Entry_As_Integer : Integer;
		Var Included : Queue;
		Var Running_Average : Integer;
		Var Running_Remainder : Integer;
		Var Remainder_Adjust : Integer;
		Var Weighted_Cur_Entry : Integer;
		Var Cur_Entry_Remainder : Integer;
		Var Q_Length : Integer;

		Q_Length := Length(Q);

		While (Length(Q) > 0)
			changing Cur_Entry, Included, Q, Running_Average, Running_Remainder,
				Weighted_Cur_Entry, Cur_Entry_Remainder, Remainder_Adjust;
			maintaining Included o Q = #Q and
				Running_Average = 
					Fold_String_Right(Sum, 0, Map(Included, AsInteger)) /
						|#Q| and
				Running_Remainder =
					Fold_String_Right(Sum, 0, Map(Included, AsInteger)) mod
						|#Q| and
				0 <= Running_Average <= max_int / |#Q| * |Included|;
			decreasing |Q|;
		do
			Dequeue(Cur_Entry, Q);
			MapEntry(Cur_Entry, Cur_Entry_As_Integer);

			Weighted_Cur_Entry := Div(Cur_Entry_As_Integer, Q_Length);
			Cur_Entry_Remainder := Mod(Cur_Entry_As_Integer, Q_Length);

			Running_Average := Running_Average + Weighted_Cur_Entry;

			Running_Remainder := Running_Remainder + Cur_Entry_Remainder;
			Remainder_Adjust := Div(Running_Remainder, Q_Length);
			Running_Remainder := Mod(Running_Remainder, Q_Length);

			Enqueue(Cur_Entry, Included);
		end;

		Q :=: Included;

		Average := Running_Average;
	end;

end Folding_Average_Realization;
