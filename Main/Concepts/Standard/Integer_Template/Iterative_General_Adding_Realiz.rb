Realization Iterative_General_Adding_Realiz for Add_Capability of Integer_Template;

	Procedure Add(updates i: Integer; restores j: Integer);
		Var nj, z: Integer;
		
		While (Are_Not_Equal(j, z))
			changing i, nj, j;
			maintaining i + j = #i + #j  and  nj + j = #j and z = 0;
			decreasing |j|;
		do
			If (Greater(j, z)) then
				Increment (i);
				Increment (nj);
				Decrement (j);
			else
				Decrement (i);
				Decrement (nj);
				Increment (j);
			end;
		end;
		j :=: nj;
	end Add;
end Iterative_General_Adding_Realiz;

