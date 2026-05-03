Realization Skeleton_Realiz for Globally_Bounded_Stack_Template;
    uses Location_Linking_Template_1;

    Type Stack = Integer;
		correspondence Conc.S = Empty_String;
	end;

    Procedure Pop(replaces R: Entry; updates S: Stack);

    end Pop;

    Procedure Push(alters E: Entry; updates S: Stack);

    end Push;

    Procedure Is_Empty(restores S : Stack) : Boolean;

    end Is_Empty;

    Procedure Clear(clears S: Stack);

    end Clear;

end Skeleton_Realiz;