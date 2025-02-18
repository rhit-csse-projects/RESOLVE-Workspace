Realization Clean_Array_Realiz for Stack_Template;

    (* Note: Under Construction! *)

    Type Stack is represented by Record
            Contents: Array 1..Max_Depth of Entry;
            Top: Integer;
        end;
        convention
            0 <= S.Top <= Max_Depth;
        correspondence
            Conc.S = Reverse(Iterated_Concatenation(1, S.Top, 
                    Stringify_Z_Entity(S.Contents)));
	end;

    Procedure Push(alters E: Entry; updates S: Stack);
        S.Top := S.Top + 1;
        E :=: S.Contents[S.Top];
    end Push;

    Procedure Pop(replaces R: Entry; updates S: Stack);
        Var Fresh_Val: Entry;

        R :=: S.Contents[S.Top];
        S.Contents[S.Top] :=: Fresh_Val;
        S.Top := S.Top - 1; 
    end Pop;

    Procedure Depth(restores S: Stack): Integer;
        Depth := S.Top;
    end Depth;

    Procedure Rem_Capacity(restores S: Stack): Integer;
        Rem_Capacity := Max_Depth - S.Top;
    end Rem_Capacity;
	
    Operation Clear_Entry(clears E: Entry);
    Procedure
        Var Temp: Entry;
        E :=: Temp;
    end Clear_Entry;
	
    Procedure Clear(clears S: Stack);
        While (1 <= S.Top)  
            changing S;
            maintaining S.Top <= Max_Depth;
            decreasing S.Top;
        do
            Clear_Entry(S.Contents[S.Top]);
            S.Top := S.Top - 1;
        end;
    end Clear;

end Clean_Array_Realiz;