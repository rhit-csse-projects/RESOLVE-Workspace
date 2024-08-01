Realization Iterative_Add_to_Realiz for Adding_Capability of Integer_Template;
	uses Natural_Number_Theory;

	Procedure Add_to(updates i:Integer; evaluates j:Integer);

		While ( Less_Or_Equal(1, j) ) 
			changing i, j;
			maintaining (i + j = #i + #j) and 0 <= j;
			decreasing j;
		do
			Increment (i);
			Decrement (j);
		end;
	end Add_to;
end Iterative_Add_to_Realiz;
