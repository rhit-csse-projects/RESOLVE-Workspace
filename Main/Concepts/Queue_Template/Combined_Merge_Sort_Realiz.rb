Realization Combined_Merge_Sort_Realiz(
		Operation Are_Ordered(restores x,y: Entry): Boolean;
			ensures Are_Ordered = (LEQV(x,y));
	) for Merge_and_Sort_Capabilities of Queue_Template;
 
	Procedure Merge_Q(clears Q: Queue; updates R: Queue);
		Var Merger: Queue; 
		Var Q_Min, R_Min: Entry;
 
		If ( Greater(Length(Q), 0) ) then
			Dequeue(Q_Min, Q);
			While( Greater(Length(R), 0) )
				changing Q, R, Merger, Q_Min, R_Min;
				maintaining Is_Conformal_With(LEQV, Merger o R) and
					Is_Conformal_With(LEQV, Merger o <Q_Min> o Q) and
					Is_Permutation(#Q o #R, Merger o <Q_Min> o Q o R);
				decreasing |Q o R|;
			do
				Dequeue(R_Min, R);
				if ( Are_Equal(Are_Ordered(Q_Min, R_Min), True()) ) then
					Enqueue(Q_Min, Merger);
					Q_Min :=: R_Min; 
					Q :=: R;
				else
					Enqueue(R_Min, Merger);
				end;
			end;
			Enqueue(Q_Min, Merger);
			While( Greater(Length(Q), 0) )
				changing Q, Merger, Q_Min;
				maintaining Is_Conformal_With(LEQV, Merger o Q) and
					Is_Permutation(#Q o #R, Merger o Q);
				decreasing |Q|;
			do
				Dequeue(Q_Min, Q);
				Enqueue(Q_Min, Merger);
			end;
			R :=: Merger;
		end;
	end Merge_Q;

	Recursive Procedure Sort_Q(updates Q: Queue);
		decreasing |Q|;
 
		Var First_Q: Queue;
		Var Next_Entry: Entry;
		Var Temp: Integer;
 
		If ( Greater(Length(Q), 1) ) then
			Temp := Length(Q) - 1;
			While( Less(Length(First_Q), Temp) )
				changing Q, First_Q, Next_Entry;
				maintaining #Q = First_Q o Q and |First_Q| <= |Q|;
				decreasing |Q|;
			do
				Dequeue(Next_Entry, Q);
				Enqueue(Next_Entry, First_Q);
			end;
			Sort_Q(First_Q);
			Sort_Q(Q);
			Merge_Q(First_Q, Q);
		end;
	end Sort_Q;
end Combined_Merge_Sort_Realiz;