Realization Iterative_Append_Realiz for Append_Capability of Queue_Template;
    -- will not verify because loop invariant is not adequate
    Procedure Append(updates P: Queue; clears Q: Queue);
        Var E: Entry;

        While ( 1 <= Length(Q) )
          -- fill in a suitable invariant
          maintaining true;
          decreasing |Q|;
        do
          Dequeue(E,Q);
          Enqueue(E,P);
        end;
    end Append;
end Iterative_Append_Realiz;