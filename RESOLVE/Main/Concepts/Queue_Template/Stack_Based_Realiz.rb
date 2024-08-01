Realization Stack_Based_Realiz for Queue_Template;
-- Example of a concept realization implemented using a facility

	Facility SF is Stack_Template(Entry, Max_Length)
			externally realized by Array_Realiz
		enhanced by Flipping_Capability
			realized by Obvious_Flipping_Realiz;

	Type Queue = Record
			Contents: SF::Stack;
			Len: Integer;        -- dummy length to be used in a convention later     
		end;
		correspondence
			Conc.Q = Q.Contents;
	end;
	
	Procedure Enqueue(alters E: Entry; updates Q: Queue);
		Flip(Q.Contents);
		Push(E, Q.Contents);
		Flip(Q.Contents);
	end Enqueue;
	
	Procedure Dequeue(replaces R: Entry; updates Q: Queue);
		Pop(R, Q.Contents);
	end Dequeue;

	Procedure Swap_First_Entry(updates E: Entry; updates Q: Queue);
		Var Temp: Entry;
		
		Pop(Temp, Q.Contents);
		Push(E, Q.Contents);
		E :=: Temp;
	end Swap_First_Entry;

	Procedure Length(restores Q: Queue): Integer;
		Length := Depth(Q.Contents);      
	end Length;

	Procedure Rem_Capacity(restores Q: Queue): Integer;
		Rem_Capacity := Rem_Capacity(Q.Contents);
	end Rem_Capacity;

	Procedure Clear(clears Q: Queue);
		SF::Clear(Q.Contents);
	end Clear;
	
end Stack_Based_Realiz;