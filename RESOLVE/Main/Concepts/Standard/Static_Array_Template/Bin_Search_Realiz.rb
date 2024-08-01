Realization Bin_Search_Realiz(
      operation Are_Ordered(restores x,y: Entry): Boolean;
         ensures Are_Ordered = (LEQ(x,y));
      )for Search_Capability of Static_Array_Template;

    Operation Are_Equal(restores x, y: Entry): Boolean;
	ensures Are_Equal = (x = y);
    Procedure 
	Are_Equal := And(Are_Ordered(x, y), Are_Ordered(y, x));
    end; 

    Procedure Is_Present(restores key: Entry; restores A: Static_Array): Boolean;
	Var low, mid, high, one, two: Integer;
	Var midVal: Entry;

	Increment(one);
	Increment(two);
	Increment(two);

	Is_Present := False();
	low := Replica(Lower_Bound);
	high := Replica(Upper_Bound);

	While (low <= high)
		changing low, mid, high, A, midVal, Is_Present;
		maintaining true;
		decreasing (high - low);
	do
		Divide(Difference(high, low), two, mid);	-- this is really the quotient
		mid := Sum(low, mid);
		Swap_Entry(A, midVal, mid);
		if (Are_Equal(midVal, key)) then
			Is_Present := True();
			low := Sum(high, one);
		else
			if (Are_Ordered(midVal, key)) then
				low := Sum(mid, one);
			else
				high := Difference(mid, one);
			end;
		end;
		Swap_Entry(A, midVal, mid);
	end;	
    end Is_Present;
end Bin_Search_Realiz;
