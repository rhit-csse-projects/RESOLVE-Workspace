Realization Circular_Array_Realiz for Queue_Template;
    uses Integer_To_String_Function_Theory;
    (* Note: Under Construction! *)
	
    Type Queue = Record
            Contents: Array 0..Max_Length - 1 of Entry;
            Prefront, Length: Integer;
        end;
        convention
            0 <= Q.Prefront < Max_Length and
                0 <= Q.Length <= Max_Length;
        correspondence
            Conc.Q = Iterated_Concatenation(Q.Prefront + 1, Q.Prefront + Q.Length, 
                        Stringify_Mod_Z_Entity(Max_Length, Q.Contents));
	end;
       
    Procedure Enqueue(alters E: Entry; updates Q: Queue);
        Var Temp: Integer;
        Q.Length := Q.Length + 1;
        Temp := Q.Prefront + Q.Length;
        Temp := Temp mod Max_Length;
        Q.Contents[Temp] :=: E;
    end Enqueue;

    Procedure Dequeue(replaces R: Entry; updates Q: Queue);
        Var Temp: Integer;
        Temp := Q.Prefront + 1;
		Q.Prefront := Temp mod Max_Length;
        Q.Contents[Q.Prefront] :=: R;        
        Q.Length := Q.Length - 1;
    end Dequeue;

    Procedure Swap_First_Entry(updates E: Entry; updates Q: Queue);
        Var Temp: Integer;
        Temp := Q.Prefront + 1;
        Temp := Temp mod Max_Length;
        Q.Contents[Temp] :=: E;
    end Swap_First_Entry;

    Procedure Length(restores Q: Queue): Integer;
        Length := Q.Length;
    end Length;

    Procedure Rem_Capacity(restores Q: Queue): Integer;
        Rem_Capacity := Max_Length - Q.Length;
    end Rem_Capacity;

    Procedure Clear(clears Q: Queue);
       Q.Prefront := 0;
       Q.Length := 0;
    end Clear;

end Circular_Array_Realiz;