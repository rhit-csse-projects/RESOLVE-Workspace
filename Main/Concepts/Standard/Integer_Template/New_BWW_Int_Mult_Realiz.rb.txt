Realization New_BWW_Int_Mult_Realiz for New_BWW_Int_Mult_Capability of Integer_Template;

	Procedure Multiply(updates i: Integer; restores j: Integer);
		Var p, nj, z: Integer;

		If (j > z) then
		While (j > z)
			changing p, nj, j;
			maintaining p + i * j = #i * #j  and  nj + j = #j;
			decreasing j;
		do
			p := Sum(p, i);
			Increment(nj);
			Decrement(j);
		end; 
		else
		While (j /= z)
			changing p, j, nj;
			maintaining p - i * j = - #i * #j  and  nj + j = #j  and j <= 0;
			decreasing -j;
		do
			p := Sum(p, i);
			Decrement(nj);
			Increment(j);
		end; 	
		end;
		i :=: p;
		j :=: nj;
	end Multiply; 
end New_BWW_Int_Mult_Realiz;
