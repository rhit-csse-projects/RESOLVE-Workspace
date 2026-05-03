Realization List_Skeleton_Realiz for Globally_Bounded_List_Template;
	
	Type List = Record 
			Dummy1: Integer;
			Dummy2: Integer;
		end;
		correspondence true;
	end;
	
	Procedure Advance( upd P: List );
	
	end Advance;
	
	Procedure Reset( upd P: List );
	
	end Reset;

	Procedure Is_Rem_Empty( rest P: List ): Boolean;
	
	end Is_Rem_Empty;

	Procedure Insert( alt New_Entry: Entry; upd P: List );
	
	end Insert;

	Procedure Remove( rpl Entry_Removed: Entry; upd P: List );
	
	end Remove;

	Procedure Advance_to_End( upd P: List );
	
	end Advance_to_End;
	
	Procedure Swap_Remainders( upd P, Q: List );
	
	end Swap_Remainders;

	Procedure Is_Prec_Empty( rest P: List ): Boolean;
	
	end Is_Prec_Empty;

	Procedure Clear( clr P: List );
	
	end Clear;
	
end List_Skeleton_Realiz;