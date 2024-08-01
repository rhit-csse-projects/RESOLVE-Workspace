Realization Do_Nothing_Realiz for Do_Nothing_Capability of Static_Array_Template;
	uses Integer_Template;
	
    Procedure Do_Nothing(restores A: Static_Array);
	Var Temp1,Temp2: Entry;
	Var i: Integer;

	i := Lower_Bound;
	While (i < Upper_Bound)
		changing A, i, Temp1, Temp2;
		maintaining #A = A and Lower_Bound <= i;
		decreasing (Upper_Bound + (- i));
	do
		Swap_Entry(A, Temp1, i);
		Swap_Entry(A, Temp1, i);
		Swap_Entry(A, Temp2, i);
		Swap_Entry(A, Temp2, i);
		Increment(i);
	end;
	If (i = Upper_Bound) then	
		Swap_Entry(A, Temp1, i);
		Swap_Entry(A, Temp1, i);
		Swap_Entry(A, Temp2, i);
		Swap_Entry(A, Temp2, i);
	end;
    end Do_Nothing;
end Do_Nothing_Realiz;
