Realization Queue_Based_Realiz for Text_Template;
    uses Queue_Template;

    -- the bound below is not right, so this implementation won't verify
    Facility QF is Queue_Template(Character, 100)
        realized by Circular_Array_Realiz;

    Type Text = Record
			Contents: QF. Queue;
		end;
		correspondence Conc.S = S.Contents;
	end;
 
    Procedure Add(restores C: Character; updates S: Text);
        Var Temp: Character;

        Temp := Replica(C);
        Enqueue(Temp, S.Contents);
    end Add;

    Procedure Remove(updates C: Character; updates S: Text);
        Dequeue(C, S.Contents);
    end Remove;

    Procedure Is_Empty(restores S: Text): Boolean;
        Is_Empty := Length(S.Contents);
    end Is_Empty;
end Queue_Based_Realiz;