Realization Recursive_List_Flipping_Realiz for List_Flipping_Capability of Globally_Bounded_List_Template;

	(* Note: Under Construction! *)

    Recursive Procedure Flip_Rem(updates P: List);
        decreasing |P.Rem|;

        Var E: Entry;
        
        If ( not Is_Rem_Empty(P) ) then
            Remove (E, P);
            Flip_Rem(P);
            Insert(E, P);
            Advance(P);
        end;
    end Flip_Rem;
end Recursive_List_Flipping_Realiz;

