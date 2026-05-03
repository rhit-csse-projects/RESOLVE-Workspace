Realization Master_Circular_Array_Realiz for Preemptable_Queue_Template;

    (* Note: Under Construction! *)
    
    Type P_Queue = Record
            Contents: Array 1..Max_Length of Entry;
            Prefront, Len: Integer;
        end;
        convention 0 <= Q.Prefront < Max_Length
                   and 0 <= Q.Len <= Max_Length;
        correspondence true;
--      correspondence Conc.Q = Iterated_Concatenation(Q.Prefront,
--                          Q.Prefront + Q.Len -1  , lambda(i : Z).(<Q.Contents((i mod Max_Length )+ 1)>));
        initialization
            Q.Len := 0;
            Q.Prefront := 0;
        end;
    end;

    Procedure Enqueue(alters E: Entry; updates Q: P_Queue);
        Var Temp, Max: Integer;
        
        Temp := Q.Prefront + Q.Len;
        Temp := Temp mod Max_Length;
        Temp := Temp + 1;
        Q.Contents[Temp] :=: E;
        Q.Len := Q.Len + 1;
    end Enqueue;

    Procedure Inject(alters E: Entry; updates Q: P_Queue);
        if (Q.Prefront = 0) then
            Q.Prefront := Max_Length;
        end;

        Q.Contents[Q.Prefront] :=: E;
        Q.Prefront := Q.Prefront - 1;
        Q.Len :=Q.Len + 1;
    end Inject;

    Procedure Dequeue(replaces R: Entry; updates Q: P_Queue);
        Var Temp, Max: Integer;
        
        Temp := Q.Prefront + 1;
        Q.Prefront := Temp mod Max_Length;
        Q.Contents[Temp] :=: R;       
        Q.Len := Q.Len - 1;
    end Dequeue;

    Procedure Swap_Last_Entry(updates E: Entry; updates Q: P_Queue);
        Var Temp, Max: Integer;

        Temp := Q.Prefront + Q.Len;
        Temp := Temp -1;
        Temp := Temp mod Max_Length;
        Temp := Temp + 1;
        Q.Contents[Temp] :=: E;
    end Swap_Last_Entry;

    Procedure Length(restores Q: P_Queue): Integer;
        Length := Q.Len;
    end Length;

    Procedure Rem_Capacity(restores Q: P_Queue): Integer;
        Rem_Capacity := Max_Length - Q.Len;
    end Rem_Capacity;

    Procedure Clear(clears Q: P_Queue);
        Q.Len := 0;
        Q.Prefront := 0;
    end Clear;

end Master_Circular_Array_Realiz;