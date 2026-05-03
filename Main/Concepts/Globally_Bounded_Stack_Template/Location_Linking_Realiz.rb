Realization Location_Linking_Realiz for Globally_Bounded_Stack_Template;
	uses Location_Linking_Template_1;

	(* Note: Under Construction! *)

	definition Is_Reachable(first: Z, last: Z, 
		refContext : Z -> Z) : B = {{(true) if first = last; 
		Is_Reachable(refContext(first), last, refContext)
				otherwise;}};

	definition Is_Void_Reachable(first: Z, 
		refContext: Z -> Z) : B = Is_Reachable(first, Void, refContext);

	definition Str_Info(first: Z, refContext : Z -> Z,
			contentsContext : Z -> Entry): Str(Entry) = 
		{{Empty_String if first = Void;
		  <contentsContext(first)> o 
		  	Str_Info(refContext(first), refContext, contentsContext) otherwise;}};

    Facility Entry_Ptr_Fac is Location_Linking_Template_1(Entry) 
        realized by Std_Location_Linking_Realiz;

    Type Stack is represented by Entry_Ptr_Fac.Position;
		convention Is_Void_Reachable(S, Ref);
		correspondence Conc.S = Str_Info(S, Content, Ref);
	end;
	
    Procedure Pop(replaces R: Entry; updates S: Stack);
		Var Temp: Position;

		Swap_Info(S, R);
		Follow_Link(S);
    end Pop;

    Procedure Push(alters E: Entry; updates S: Stack); 
		Var Temp: Position;

		Take_New_Location(Temp);
		Swap_Info(Temp, E);
		Redirect_Link(Temp, S);
		Relocate_to(Temp, S);
    end Push;

    Procedure Is_Empty(restores S : Stack) : Boolean;
		Var Temp: Position;

		Is_Empty := Is_At_Void(S);
    end Is_Empty;

    Procedure Clear(clears S: Stack);
        Reset_To_Void(S);
    end Clear;
end Location_Linking_Realiz;
