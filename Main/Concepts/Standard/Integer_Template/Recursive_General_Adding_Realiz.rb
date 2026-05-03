Realization Recursive_General_Adding_Realiz for Add_Capability of Integer_Template;

	Recursive Procedure Add(updates i: Integer; restores j: Integer);
		decreasing |j|;
		Var z: Integer;
      	
		If ( Greater(j, z) ) then
			Increment(i);
			Decrement(j);
			Add(i, j);
			Increment(j);
		else
			If ( Greater(z, j) ) then
				Decrement(i);
				Increment(j);
				Add(i, j);
				Decrement(j);
			end;
      	end;
	end Add;
end Recursive_General_Adding_Realiz;
