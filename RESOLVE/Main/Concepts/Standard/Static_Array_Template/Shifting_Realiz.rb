Realization Shifting_Realiz for Shifting_Capability of Static_Array_Template;

    Procedure Shift_All(updates A: Static_Array);
	Var Temp: Entry;
	Var i, one: Integer;

	Increment(one);
--	i := Replica(Lower_Bound);
	While (i < Upper_Bound)
		changing A, i, Temp;
		maintaining Lower_Bound <= i;
		decreasing (Upper_Bound - i);
	do
		Swap_Entry(A, Temp, i);
		Swap_Entry(A, Temp, Sum(i, one));
		Swap_Entry(A, Temp, i);
		Increment(i);
	end;	
    end Shift_All;
end Shifting_Realiz;
