Realization Recursive_Add_to_Realiz for Adding_Capability of Integer_Template;

	Recursive Procedure Add_to(updates i:Integer; evaluates j:Integer);
		decreasing j;

		If ( 1 <= j) then
			Increment (i);
			Decrement (j);
			Add_to (i, j);
		end;
	end Add_to;
end Recursive_Add_to_Realiz;
