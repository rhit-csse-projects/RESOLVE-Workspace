Realization Int_Max_Realiz for Int_Max_Capability of Integer_Template;

    -- This code is intentionally faulty; generate VCs and find the bug.
	Procedure Find_Max(restores I: Integer; restores J: Integer; replaces K: Integer);
		If (I > J) then
			I :=: J;
		end;
		K := Replica(J);
	end Find_Max;
end Int_Max_Realiz;