Realization Iterative_Occ_Counting_Realiz (
            Operation Equal(restores X,Y: Entry): Boolean;
            ensures Equal = (X = Y);
    ) for Occurence_Count_Capability of Static_Array_Template;
    Procedure Occ_Count(restores A: Static_Array; restores key: Entry):Integer;
        Var Temp: Entry;
        Var idx: Integer;
        Var loopCt: Integer;
        Occ_Count := 0;
        idx := Lower_Bound;
        
        Swap_Entry(A,Temp,idx);
        if (Equal(key,Temp)) then
            Occ_Count := Occ_Count + 1;
        end;
        Swap_Entry(A,Temp,idx);
            
        While (idx < Upper_Bound)
            maintaining 
            Occ_Count = 
            	Occ_Ct_In_Range(A,key,Lower_Bound,idx) and
            Lower_Bound <= idx and
            0 <= Occ_Count and
			Occ_Count <= (1 + idx) + (-Lower_Bound) and
            idx <= Upper_Bound and
			#key = key and
            #A = A;
            decreasing Upper_Bound + (-idx);
        do
        	Increment(idx);
            Swap_Entry(A,Temp,idx);
            if (Equal(key,Temp)) then
                Occ_Count := Occ_Count + 1;
            end;
            Swap_Entry(A,Temp,idx);
            
        end;
    end Occ_Count;
end Iterative_Occ_Counting_Realiz;