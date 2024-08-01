Realization Alt_Bin_Search_Realiz (
	Operation Are_Ordered(restores x,y: Entry): Boolean;
		ensures Are_Ordered = true;
) for Alt_Search_Capability of Static_Array_Template;

(*
    Operation Are_Ordered(restores x,y: Entry): Boolean;
         ensures Are_Ordered = true;
    Procedure 
	Are_Ordered := True();
    end; 


    Operation Are_Equal(restores x, y: Entry): Boolean;
	ensures Are_Equal = (x = y);
    Procedure 
	Are_Equal := And(Are_Ordered(x, y), Are_Ordered(y, x));
    end; 
*)

    Procedure binarySearch(restores key: Entry; restores A: Static_Array; replaces result: Integer);
	Var one, two: Integer;
	Var low, mid, high: Integer;
	Var midVal: Entry;
	Var found: Boolean;
(*
	Increment(one);
	Increment(two);
	Increment(two);
*)
	found := False();
	low := Replica(Lower_Bound);
	high := Replica(Upper_Bound);

	While (low <= high and not found)
		changing low, mid, high, A, midVal, found;
		maintaining true;
		decreasing (high - low);
	do
		mid := Sum(low, high);
		mid := Div(mid, 2);
(*
		Divide(Difference(high, low), two, mid);	-- this is really the quotient
		mid := Sum(low, mid);
*)
		Swap_Entry(A, midVal, mid);
		if (Are_Ordered(midVal, key) and Are_Ordered(key, midVal)) then
			found := True();
			Increment(low);				-- this is to satisfy the progress metric
		else
			if (Are_Ordered(midVal, key)) then
				low := Sum(mid, 1);
			else
				high := Difference(mid, 1);
			end;
		end;
		Swap_Entry(A, midVal, mid);
	end;
	If (found) then
		result := Replica(mid);
	else
		result := Negate(Sum(Lower_Bound, 1));
	end;	
    end binarySearch;
end Alt_Bin_Search_Realiz;
