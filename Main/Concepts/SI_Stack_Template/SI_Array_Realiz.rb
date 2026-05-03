Realization SI_Array_Realiz for SI_Stack_Template;

	Var Contents: Array 1..Max_Depth of Entry;
	Var Top: Integer;
		conventions 0 <= Top <= Max_Depth;
		correspondence
			Self = Reverse(Concatenation i: Integer
            where 1 <= i <= Top, <Contents(i)>);

    Procedure Push(alters E: Entry);
        Top := Top + 1;
        E :=: Contents[Top];
    end Push;

    Procedure Pop(replaces R: Entry); 
        R :=: Contents[Top];
        Top := Top - 1;
    end Pop;

    Procedure Depth(): Integer;
        Depth := Top;
    end Depth;

    Procedure Rem_Capacity(): Integer;
        Rem_Capacity := Max_Depth - Top;
    end Rem_Capacity;

    Procedure Clear();
        Top := 0;
    end Clear;

end SI_Array_Realiz;