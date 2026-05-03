Realization Queue_Location_Linking_Realiz for Globally_Bounded_Queue_Template;
	uses Location_Linking_Template_1;
	
	(* Note: Under Construction! *)

	definition Is_Reachable(first: Z, last: Z, 
		refContext : Z -> Z) : B = {{(true) if first = last; 
		Is_Reachable(refContext(first), last, refContext)
				otherwise;}};

	definition Str_Info(first: Z, refContext : Z -> Z,
			contentsContext : Z -> Entry): Str(Entry) = 
		{{Empty_String if first = Void;
		  <contentsContext(first)> o 
		  	Str_Info(refContext(first), refContext, contentsContext) otherwise;}};

    Facility Entry_Ptr_Fac is Location_Linking_Template_1(Entry) 
        realized by Std_Location_Linking_Realiz;

    Type Queue is represented by Record
			Front: Entry_Ptr_Fac.Position;
			Back: Entry_Ptr_Fac.Position;
		end;
		convention Is_Reachable(Q.Front, Q.Back, Ref) and 
			(Ref(Q.Back) = Void) and
			(Q.Back = Void iff Q.Front = Void);
		correspondence Conc.Q = Str_Info(Q.Front, Content, Ref);
	end;
	
    Procedure Dequeue(replaces R: Entry; updates Q: Queue);
		Var Temp: Position;
		
		Swap_Info(Q.Front, R);
		Follow_Link(Q.Front);
		
		If (Is_At_Void(Q.Front)) then
			Reset_To_Void(Q.Back);
		end;
    end Dequeue;

    Procedure Enqueue(alters E: Entry; updates Q: Queue);
		Var Temp: Position;

		Take_New_Location(Temp);
		Swap_Info(Temp, E);
		Redirect_Link(Q.Back, Temp);
		
		If (Is_At_Void(Q.Front)) then
			Relocate_to(Q.Back, Q.Front);
		end;
    end Enqueue;

    Procedure Is_Empty(restores Q: Queue) : Boolean;
		Var Temp: Position;
		
		Is_Empty := Is_At_Void(Q.Front);
	end Is_Empty;

    Procedure Clear(clears Q: Queue);
        Reset_To_Void(Q.Front);
        Reset_To_Void(Q.Back);
    end Clear;
end Queue_Location_Linking_Realiz;
