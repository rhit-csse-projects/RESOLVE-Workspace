Realization Skeleton_Realiz for Sequence_Template;
	
	Type Sequence = Record 
			Dummy1: Integer;
			Dummy2: Integer;      
		end;
		correspondence true;
	end;
    
	Procedure Insert_after(evaluates Pos: Integer; alters E: Entry; updates S: Sequence);
	end Insert_after;

	Procedure Remove_after(evaluates Pos: Integer; replaces R: Entry; updates S: Sequence);
	end Remove_after;

	Procedure Length(restores S: Sequence): Integer;
	end Length;
 
	Procedure Rem_Capacity(restores S: Sequence): Integer;
	end Rem_Capacity;
 
	Procedure Clear(clears S: Sequence);
	end Clear;

end Skeleton_Realiz;